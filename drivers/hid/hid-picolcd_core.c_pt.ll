; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-picolcd_core.c_pt.bc'
source_filename = "../drivers/hid/hid-picolcd_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.picolcd_data = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, [2 x i8], i16, [2 x i8], ptr, ptr, [17 x i16], ptr, ptr, i8, ptr, i8, i8, i8, [8 x ptr], %struct.spinlock, %struct.mutex, ptr, i32 }
%struct.picolcd_pending = type { ptr, ptr, %struct.completion, i32, [64 x i8] }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@picolcd_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No report with id 0x%x found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"picolcd_report\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/hid-picolcd_core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@picolcd_report._entry_ptr = internal global ptr @picolcd_report._entry, section ".printk_index", align 4
@__initcall__kmod_hid_picolcd__301_657_picolcd_driver_init6 = internal global ptr @picolcd_driver_init, section ".initcall6.init", align 4
@picolcd_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.20, ptr @picolcd_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @picolcd_probe, ptr @picolcd_remove, ptr null, ptr @picolcd_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @picolcd_suspend, ptr @picolcd_resume, ptr @picolcd_reset_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_picolcd_driver_exit = internal global ptr @picolcd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [56 x i8] c"hid_picolcd.description=Minibox graphics PicoLCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [41 x i8] c"hid_picolcd.file=drivers/hid/hid-picolcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [27 x i8] c"hid_picolcd.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@picolcd_check_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 191, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no version response from PicoLCD\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"picolcd_check_version\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@picolcd_check_version._entry_ptr = internal global ptr @picolcd_check_version._entry, section ".printk_index", align 4
@picolcd_check_version._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 200, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PicoLCD, bootloader version %d.%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@picolcd_check_version._entry_ptr.12 = internal global ptr @picolcd_check_version._entry.9, section ".printk_index", align 4
@picolcd_check_version._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 203, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PicoLCD, firmware version %d.%d\0A\00", [63 x i8] zeroinitializer }, align 32
@picolcd_check_version._entry_ptr.15 = internal global ptr @picolcd_check_version._entry.13, section ".printk_index", align 4
@picolcd_check_version._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 206, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"confused, got unexpected version response from PicoLCD\0A\00", [40 x i8] zeroinitializer }, align 32
@picolcd_check_version._entry_ptr.18 = internal global ptr @picolcd_check_version._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_picolcd\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid-picolcd\00", [20 x i8] zeroinitializer }, align 32
@picolcd_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1240, i32 49154, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 61442, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@picolcd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: PicoLCD (graphic) hardware probe...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"picolcd_probe\00", [18 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr = internal global ptr @picolcd_probe._entry, section ".printk_index", align 4
@picolcd_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 535, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"can't allocate space for Minibox PicoLCD device data\0A\00", [42 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.25 = internal global ptr @picolcd_probe._entry.23, section ".printk_index", align 4
@picolcd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@picolcd_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@picolcd_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 550, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device report parse failed\0A\00", [36 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.31 = internal global ptr @picolcd_probe._entry.29, section ".printk_index", align 4
@picolcd_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 556, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hardware start failed\0A\00", [41 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.34 = internal global ptr @picolcd_probe._entry.32, section ".printk_index", align 4
@picolcd_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.2, i32 562, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to open input interrupt pipe for key and IR events\0A\00", [37 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.37 = internal global ptr @picolcd_probe._entry.35, section ".printk_index", align 4
@dev_attr_operation_mode_delay = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @picolcd_operation_mode_delay_show, ptr @picolcd_operation_mode_delay_store }, [36 x i8] zeroinitializer }, align 32
@picolcd_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.2, i32 568, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to create sysfs attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.40 = internal global ptr @picolcd_probe._entry.38, section ".printk_index", align 4
@dev_attr_operation_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @picolcd_operation_mode_show, ptr @picolcd_operation_mode_store }, [36 x i8] zeroinitializer }, align 32
@picolcd_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.2, i32 574, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.42 = internal global ptr @picolcd_probe._entry.41, section ".printk_index", align 4
@picolcd_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.22, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: PicoLCD (graphic) activated and initialized\0A\00", [45 x i8] zeroinitializer }, align 32
@picolcd_probe._entry_ptr.45 = internal global ptr @picolcd_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"operation_mode_delay\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"operation_mode\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[bootloader] lcd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bootloader [lcd]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bootloader\00", [21 x i8] zeroinitializer }, align 32
@picolcd_init_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 418, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported KEY_STATE report\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"picolcd_init_keys\00", [46 x i8] zeroinitializer }, align 32
@picolcd_init_keys._entry_ptr = internal global ptr @picolcd_init_keys._entry, section ".printk_index", align 4
@picolcd_init_keys._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 424, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@picolcd_init_keys._entry_ptr.58 = internal global ptr @picolcd_init_keys._entry.56, section ".printk_index", align 4
@picolcd_init_keys._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 446, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error registering the input device\0A\00", [60 x i8] zeroinitializer }, align 32
@picolcd_init_keys._entry_ptr.61 = internal global ptr @picolcd_init_keys._entry.59, section ".printk_index", align 4
@def_keymap = internal constant { <{ [8 x i16], [9 x i16] }>, [62 x i8] } { <{ [8 x i16], [9 x i16] }> <{ [8 x i16] [i16 0, i16 158, i16 172, i16 0, i16 0, i16 177, i16 352, i16 178], [9 x i16] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@picolcd_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: PicoLCD (graphic) hardware remove...\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"picolcd_remove\00", [17 x i8] zeroinitializer }, align 32
@picolcd_remove._entry_ptr = internal global ptr @picolcd_remove._entry, section ".printk_index", align 4
@picolcd_raw_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid size value (%d) for picolcd raw event (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"picolcd_raw_event\00", [46 x i8] zeroinitializer }, align 32
@picolcd_raw_event._entry_ptr = internal global ptr @picolcd_raw_event._entry, section ".printk_index", align 4
@picolcd_raw_keypad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: PicoLCD (graphic) got key press for %u:%d\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"picolcd_raw_keypad\00", [45 x i8] zeroinitializer }, align 32
@picolcd_raw_keypad._entry_ptr = internal global ptr @picolcd_raw_keypad._entry, section ".printk_index", align 4
@picolcd_raw_keypad._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: PicoLCD (graphic) got key release for %u:%d\00", [46 x i8] zeroinitializer }, align 32
@picolcd_raw_keypad._entry_ptr.71 = internal global ptr @picolcd_raw_keypad._entry.69, section ".printk_index", align 4
@picolcd_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: PicoLCD (graphic) device ready for suspend\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"picolcd_suspend\00", [16 x i8] zeroinitializer }, align 32
@picolcd_suspend._entry_ptr = internal global ptr @picolcd_suspend._entry, section ".printk_index", align 4
@picolcd_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: PicoLCD (graphic) restoring backlight failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"picolcd_resume\00", [17 x i8] zeroinitializer }, align 32
@picolcd_resume._entry_ptr = internal global ptr @picolcd_resume._entry, section ".printk_index", align 4
@picolcd_reset_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: PicoLCD (graphic) resetting our device failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"picolcd_reset_resume\00", [43 x i8] zeroinitializer }, align 32
@picolcd_reset_resume._entry_ptr = internal global ptr @picolcd_reset_resume._entry, section ".printk_index", align 4
@picolcd_reset_resume._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: PicoLCD (graphic) restoring framebuffer content failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@picolcd_reset_resume._entry_ptr.80 = internal global ptr @picolcd_reset_resume._entry.78, section ".printk_index", align 4
@picolcd_reset_resume._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: PicoLCD (graphic) restoring lcd failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@picolcd_reset_resume._entry_ptr.83 = internal global ptr @picolcd_reset_resume._entry.81, section ".printk_index", align 4
@picolcd_reset_resume._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.77, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@picolcd_reset_resume._entry_ptr.85 = internal global ptr @picolcd_reset_resume._entry.84, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 33]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 62, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"picolcd_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 645, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 191, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 199, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 202, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 206, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 657, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 646, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"picolcd_devices\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 638, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 527, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 535, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 539, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 540, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 550, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 556, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 562, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"dev_attr_operation_mode_delay\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 568, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [24 x i8] c"dev_attr_operation_mode\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 574, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 585, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 321, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 304, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 312, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 293, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 259, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 261, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 272, i32 23 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 275, i32 30 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 418, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 424, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 446, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [11 x i8] c"def_keymap\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 31, i32 29 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 606, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 337, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 145, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 168, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 373, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 382, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 391, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 394, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 397, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private constant [34 x i8] c"../drivers/hid/hid-picolcd_core.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 400, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_picolcd_driver_exit, ptr @__initcall__kmod_hid_picolcd__301_657_picolcd_driver_init6, ptr @picolcd_check_version._entry, ptr @picolcd_check_version._entry.13, ptr @picolcd_check_version._entry.16, ptr @picolcd_check_version._entry.9, ptr @picolcd_check_version._entry_ptr, ptr @picolcd_check_version._entry_ptr.12, ptr @picolcd_check_version._entry_ptr.15, ptr @picolcd_check_version._entry_ptr.18, ptr @picolcd_driver_exit, ptr @picolcd_init_keys._entry, ptr @picolcd_init_keys._entry.56, ptr @picolcd_init_keys._entry.59, ptr @picolcd_init_keys._entry_ptr, ptr @picolcd_init_keys._entry_ptr.58, ptr @picolcd_init_keys._entry_ptr.61, ptr @picolcd_probe._entry, ptr @picolcd_probe._entry.23, ptr @picolcd_probe._entry.29, ptr @picolcd_probe._entry.32, ptr @picolcd_probe._entry.35, ptr @picolcd_probe._entry.38, ptr @picolcd_probe._entry.41, ptr @picolcd_probe._entry.43, ptr @picolcd_probe._entry_ptr, ptr @picolcd_probe._entry_ptr.25, ptr @picolcd_probe._entry_ptr.31, ptr @picolcd_probe._entry_ptr.34, ptr @picolcd_probe._entry_ptr.37, ptr @picolcd_probe._entry_ptr.40, ptr @picolcd_probe._entry_ptr.42, ptr @picolcd_probe._entry_ptr.45, ptr @picolcd_raw_event._entry, ptr @picolcd_raw_event._entry_ptr, ptr @picolcd_raw_keypad._entry, ptr @picolcd_raw_keypad._entry.69, ptr @picolcd_raw_keypad._entry_ptr, ptr @picolcd_raw_keypad._entry_ptr.71, ptr @picolcd_remove._entry, ptr @picolcd_remove._entry_ptr, ptr @picolcd_report._entry, ptr @picolcd_report._entry_ptr, ptr @picolcd_reset_resume._entry, ptr @picolcd_reset_resume._entry.78, ptr @picolcd_reset_resume._entry.81, ptr @picolcd_reset_resume._entry.84, ptr @picolcd_reset_resume._entry_ptr, ptr @picolcd_reset_resume._entry_ptr.80, ptr @picolcd_reset_resume._entry_ptr.83, ptr @picolcd_reset_resume._entry_ptr.85, ptr @picolcd_resume._entry, ptr @picolcd_resume._entry_ptr, ptr @picolcd_suspend._entry, ptr @picolcd_suspend._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @picolcd_driver, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @picolcd_devices, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @picolcd_probe.__key, ptr @.str.26, ptr @picolcd_probe.__key.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @dev_attr_operation_mode_delay, ptr @.str.39, ptr @dev_attr_operation_mode, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @def_keymap, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_check_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_check_version._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_check_version._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_check_version._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_operation_mode_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_operation_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_keys._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_keys._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_keymap to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_raw_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_raw_keypad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_raw_keypad._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_reset_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_reset_resume._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_reset_resume._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_reset_resume._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @picolcd_report(i32 noundef %id, ptr noundef %hdev, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 %dir, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %report.0.in = phi ptr [ %report_list, %entry ], [ %report.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %report.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %report.0 = load ptr, ptr %report.0.in, align 4
  %cmp.not = icmp eq ptr %report.0, %report_list
  br i1 %cmp.not, label %do.end, label %for.body

for.body:                                         ; preds = %for.cond
  %id1 = getelementptr inbounds %struct.hid_report, ptr %report.0, i32 0, i32 2
  %1 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1, align 4
  %cmp2 = icmp eq i32 %2, %id
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %id) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %report.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @picolcd_send_and_wait(ptr noundef %hdev, i32 noundef %report_id, ptr nocapture noundef readonly %raw_data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_list.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %report.0.in.i = phi ptr [ %report_list.i, %entry ], [ %report.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %report.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %report.0.i = load ptr, ptr %report.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %picolcd_report.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %4, %report_id
  br i1 %cmp2.i, label %picolcd_report.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

picolcd_report.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef %report_id) #12
  br label %cleanup

picolcd_report.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %report.0.i, null
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %picolcd_report.exit.cleanup_crit_edge, label %if.end

picolcd_report.exit.cleanup_crit_edge:            ; preds = %picolcd_report.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %picolcd_report.exit
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 132) #13
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %ready = getelementptr inbounds %struct.picolcd_pending, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ready, align 8
  %wait.i = getelementptr inbounds %struct.picolcd_pending, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #9
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %report.0.i, ptr %call7.i.i, align 8
  %in_report = getelementptr inbounds %struct.picolcd_pending, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %in_report to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %in_report, align 4
  %raw_size = getelementptr inbounds %struct.picolcd_pending, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %raw_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %raw_size, align 8
  %mutex = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.0.i, i32 0, i32 6
  %12 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15117.not = icmp eq i32 %13, 0
  br i1 %cmp15117.not, label %if.end9.for.end31_crit_edge, label %if.end9.for.cond17.preheader_crit_edge

if.end9.for.cond17.preheader_crit_edge:           ; preds = %if.end9
  br label %for.cond17.preheader

if.end9.for.end31_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.cond17.preheader:                             ; preds = %for.inc29.for.cond17.preheader_crit_edge, %if.end9.for.cond17.preheader_crit_edge
  %k.0119 = phi i32 [ %k.1.lcssa, %for.inc29.for.cond17.preheader_crit_edge ], [ 0, %if.end9.for.cond17.preheader_crit_edge ]
  %i.0118 = phi i32 [ %inc30, %for.inc29.for.cond17.preheader_crit_edge ], [ 0, %if.end9.for.cond17.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.hid_report, ptr %report.0.i, i32 0, i32 5, i32 %i.0118
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %report_count112 = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %report_count112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %report_count112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18113.not = icmp eq i32 %17, 0
  br i1 %cmp18113.not, label %for.cond17.preheader.for.inc29_crit_edge, label %for.cond17.preheader.for.body20_crit_edge

for.cond17.preheader.for.body20_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body20

for.cond17.preheader.for.inc29_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29

for.body20:                                       ; preds = %cond.end.for.body20_crit_edge, %for.cond17.preheader.for.body20_crit_edge
  %18 = phi ptr [ %22, %cond.end.for.body20_crit_edge ], [ %15, %for.cond17.preheader.for.body20_crit_edge ]
  %k.1115 = phi i32 [ %inc, %cond.end.for.body20_crit_edge ], [ %k.0119, %for.cond17.preheader.for.body20_crit_edge ]
  %j.0114 = phi i32 [ %inc28, %cond.end.for.body20_crit_edge ], [ 0, %for.cond17.preheader.for.body20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.1115, i32 %size)
  %cmp23 = icmp slt i32 %k.1115, %size
  br i1 %cmp23, label %cond.true, label %for.body20.cond.end_crit_edge

for.body20.cond.end_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx25 = getelementptr i8, ptr %raw_data, i32 %k.1115
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body20.cond.end_crit_edge
  %cond = phi i32 [ %conv26, %cond.true ], [ 0, %for.body20.cond.end_crit_edge ]
  %call27 = tail call i32 @hid_set_field(ptr noundef %18, i32 noundef %j.0114, i32 noundef %cond) #9
  %inc = add i32 %k.1115, 1
  %inc28 = add nuw i32 %j.0114, 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %report_count, align 4
  %cmp18 = icmp ult i32 %inc28, %24
  br i1 %cmp18, label %cond.end.for.body20_crit_edge, label %cond.end.for.inc29_crit_edge

cond.end.for.inc29_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29

cond.end.for.body20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.inc29:                                        ; preds = %cond.end.for.inc29_crit_edge, %for.cond17.preheader.for.inc29_crit_edge
  %k.1.lcssa = phi i32 [ %k.0119, %for.cond17.preheader.for.inc29_crit_edge ], [ %inc, %cond.end.for.inc29_crit_edge ]
  %inc30 = add nuw i32 %i.0118, 1
  %25 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxfield, align 4
  %cmp15 = icmp ult i32 %inc30, %26
  br i1 %cmp15, label %for.inc29.for.cond17.preheader_crit_edge, label %for.inc29.for.end31_crit_edge

for.inc29.for.end31_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.inc29.for.cond17.preheader_crit_edge:         ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond17.preheader

for.end31:                                        ; preds = %for.inc29.for.end31_crit_edge, %if.end9.for.end31_crit_edge
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %and33 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.end61

if.else:                                          ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  %pending = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 22
  %29 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %pending, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %driver_data.i.i106 = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 18, i32 8
  %32 = ptrtoint ptr %driver_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i106, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %33, ptr noundef %31, ptr noundef nonnull %report.0.i) #9
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void @hid_hw_request(ptr noundef %35, ptr noundef nonnull %report.0.i, i32 noundef 9) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  %call45 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ready, i32 noundef 200) #9
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %36 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pending, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then35
  %work.0 = phi ptr [ null, %if.then35 ], [ %call7.i.i, %if.else ]
  %flags.0 = phi i32 [ %call12, %if.then35 ], [ %call55, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %picolcd_report.exit.cleanup_crit_edge, %picolcd_report.exit.thread
  %retval.0 = phi ptr [ %work.0, %if.end61 ], [ null, %picolcd_report.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %picolcd_report.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_debug_out_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @picolcd_reset(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_list.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %report.0.in.i = phi ptr [ %report_list.i, %entry ], [ %report.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %report.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %report.0.i = load ptr, ptr %report.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %picolcd_report.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %4, 147
  br i1 %cmp2.i, label %picolcd_report.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

picolcd_report.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef 147) #12
  br label %cleanup

picolcd_report.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %report.0.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %picolcd_report.exit.cleanup_crit_edge, label %lor.lhs.false3

picolcd_report.exit.cleanup_crit_edge:            ; preds = %picolcd_report.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %picolcd_report.exit
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.0.i, i32 0, i32 6
  %5 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %do.body4, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false3
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %7 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 61442, i32 %8)
  %cmp10 = icmp eq i32 %8, 61442
  br i1 %cmp10, label %if.then12, label %do.body4.if.end13_crit_edge

do.body4.if.end13_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %status, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %do.body4.if.end13_crit_edge
  %field = getelementptr inbounds %struct.hid_report, ptr %report.0.i, i32 0, i32 5
  %11 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %field, align 4
  %call14 = tail call i32 @hid_set_field(ptr noundef %12, i32 noundef 0, i32 noundef 1) #9
  %status15 = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status15, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body20, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

do.body20:                                        ; preds = %if.end13
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %16, ptr noundef %hdev, ptr noundef nonnull %report.0.i) #9
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef nonnull %report.0.i, i32 noundef 9) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.body20.cleanup_crit_edge, label %if.end.i

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %do.body20
  %call1.i = tail call ptr @picolcd_send_and_wait(ptr noundef %hdev, i32 noundef 241, ptr noundef null, i32 noundef 0) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end.i57, label %if.end4.i

do.end.i57:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i56 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i56, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %raw_size.i = getelementptr inbounds %struct.picolcd_pending, ptr %call1.i, i32 0, i32 3
  %19 = ptrtoint ptr %raw_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %raw_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i = icmp eq i32 %20, 2
  br i1 %cmp.i, label %if.then5.i, label %picolcd_check_version.exit

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %raw_data.i = getelementptr inbounds %struct.picolcd_pending, ptr %call1.i, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.picolcd_pending, ptr %call1.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %version.i = getelementptr inbounds %struct.picolcd_data, ptr %18, i32 0, i32 6
  %23 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %version.i, align 4
  %24 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %raw_data.i, align 4
  %arrayidx10.i = getelementptr %struct.picolcd_data, ptr %18, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx10.i, align 1
  %status.i = getelementptr inbounds %struct.picolcd_data, ptr %18, i32 0, i32 23
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  %dev25.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv28.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %raw_data.i, align 4
  %conv31.i = zext i8 %32 to i32
  %.str.14..str.10 = select i1 %tobool11.not.i, ptr @.str.14, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i, ptr noundef nonnull %.str.14..str.10, i32 noundef %conv28.i, i32 noundef %conv31.i) #12
  tail call void @kfree(ptr noundef nonnull %call1.i) #9
  %call29 = tail call i32 @picolcd_resume_lcd(ptr noundef nonnull %1) #9
  %call30 = tail call i32 @picolcd_resume_backlight(ptr noundef nonnull %1) #9
  tail call void @picolcd_fb_refresh(ptr noundef nonnull %1) #9
  tail call void @picolcd_leds_set(ptr noundef nonnull %1) #9
  br label %cleanup

picolcd_check_version.exit:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev37.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37.i, ptr noundef nonnull @.str.17) #12
  tail call void @kfree(ptr noundef nonnull %call1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %picolcd_check_version.exit, %if.then5.i, %do.end.i57, %do.body20.cleanup_crit_edge, %if.then17, %lor.lhs.false3.cleanup_crit_edge, %picolcd_report.exit.cleanup_crit_edge, %picolcd_report.exit.thread
  %retval.0 = phi i32 [ -19, %if.then17 ], [ 0, %if.then5.i ], [ -19, %lor.lhs.false3.cleanup_crit_edge ], [ -19, %picolcd_report.exit.cleanup_crit_edge ], [ -22, %picolcd_check_version.exit ], [ -19, %picolcd_report.exit.thread ], [ -19, %do.end.i57 ], [ -19, %do.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_resume_lcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_resume_backlight(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_fb_refresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_leds_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @picolcd_driver, ptr noundef null, ptr noundef nonnull @.str.19) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hid_unregister_driver(ptr noundef nonnull @picolcd_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 360) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end8, label %do.body10

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %cleanup

do.body10:                                        ; preds = %do.end3
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @picolcd_probe.__key, i16 noundef signext 3) #9
  %mutex = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @picolcd_probe.__key.27) #9
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hdev, ptr %call7.i.i, align 8
  %opmode_delay = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %opmode_delay to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5000, ptr %opmode_delay, align 2
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 61442, i32 %5)
  %cmp18 = icmp eq i32 %5, 61442
  br i1 %cmp18, label %if.then19, label %do.body10.if.end20_crit_edge

do.body10.if.end20_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 23
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body10.if.end20_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.30) #12
  br label %err_cleanup_data

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.33) #12
  br label %err_cleanup_data

if.end36:                                         ; preds = %if.end28
  %call37 = tail call i32 @hid_hw_open(ptr noundef %hdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %dev45 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.36) #12
  br label %err_cleanup_hid_hw

if.end44:                                         ; preds = %if.end36
  %call46 = tail call i32 @device_create_file(ptr noundef %dev45, ptr noundef nonnull @dev_attr_operation_mode_delay) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.39) #12
  br label %err_cleanup_hid_ll

if.end53:                                         ; preds = %if.end44
  %call55 = tail call i32 @device_create_file(ptr noundef %dev45, ptr noundef nonnull @dev_attr_operation_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.39) #12
  br label %err_cleanup_sysfs1

if.end62:                                         ; preds = %if.end53
  %status63 = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 23
  %9 = ptrtoint ptr %status63 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status63, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %if.end62
  %report_list.i.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then65
  %report.0.in.i.i = phi ptr [ %report_list.i.i, %if.then65 ], [ %report.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %report.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %report.0.i.i = load ptr, ptr %report.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %report.0.i.i, %report_list.i.i
  br i1 %cmp.not.i.i, label %do.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %id1.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id1.i.i, align 4
  %cmp2.i.i = icmp eq i32 %13, 243
  br i1 %cmp2.i.i, label %for.body.i.i.picolcd_report.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.body.i.i.picolcd_report.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 243) #12
  br label %picolcd_report.exit.i

picolcd_report.exit.i:                            ; preds = %do.end.i.i, %for.body.i.i.picolcd_report.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %report.0.i.i, %for.body.i.i.picolcd_report.exit.i_crit_edge ]
  br label %for.cond.i5.i

for.cond.i5.i:                                    ; preds = %for.body.i8.i.for.cond.i5.i_crit_edge, %picolcd_report.exit.i
  %report.0.in.i2.i = phi ptr [ %report_list.i.i, %picolcd_report.exit.i ], [ %report.0.i3.i, %for.body.i8.i.for.cond.i5.i_crit_edge ]
  %14 = ptrtoint ptr %report.0.in.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %report.0.i3.i = load ptr, ptr %report.0.in.i2.i, align 4
  %cmp.not.i4.i = icmp eq ptr %report.0.i3.i, %report_list.i.i
  br i1 %cmp.not.i4.i, label %do.end.i10.i, label %for.body.i8.i

for.body.i8.i:                                    ; preds = %for.cond.i5.i
  %id1.i6.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i3.i, i32 0, i32 2
  %15 = ptrtoint ptr %id1.i6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id1.i6.i, align 4
  %cmp2.i7.i = icmp eq i32 %16, 244
  br i1 %cmp2.i7.i, label %for.body.i8.i.picolcd_probe_bootloader.exit_crit_edge, label %for.body.i8.i.for.cond.i5.i_crit_edge

for.body.i8.i.for.cond.i5.i_crit_edge:            ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i5.i

for.body.i8.i.picolcd_probe_bootloader.exit_crit_edge: ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_probe_bootloader.exit

do.end.i10.i:                                     ; preds = %for.cond.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 244) #12
  br label %picolcd_probe_bootloader.exit

picolcd_probe_bootloader.exit:                    ; preds = %do.end.i10.i, %for.body.i8.i.picolcd_probe_bootloader.exit_crit_edge
  %retval.0.i11.i = phi ptr [ null, %do.end.i10.i ], [ %report.0.i3.i, %for.body.i8.i.picolcd_probe_bootloader.exit_crit_edge ]
  tail call void @picolcd_init_devfs(ptr noundef %call7.i.i, ptr noundef null, ptr noundef null, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i11.i, ptr noundef null) #9
  br label %do.body72

if.else:                                          ; preds = %if.end62
  %report_list.i.i121 = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 1
  br label %for.cond.i.i125

for.cond.i.i125:                                  ; preds = %for.body.i.i128.for.cond.i.i125_crit_edge, %if.else
  %report.0.in.i.i122 = phi ptr [ %report_list.i.i121, %if.else ], [ %report.0.i.i123, %for.body.i.i128.for.cond.i.i125_crit_edge ]
  %17 = ptrtoint ptr %report.0.in.i.i122 to i32
  call void @__asan_load4_noabort(i32 %17)
  %report.0.i.i123 = load ptr, ptr %report.0.in.i.i122, align 4
  %cmp.not.i.i124 = icmp eq ptr %report.0.i.i123, %report_list.i.i121
  br i1 %cmp.not.i.i124, label %picolcd_report.exit.thread.i, label %for.body.i.i128

for.body.i.i128:                                  ; preds = %for.cond.i.i125
  %id1.i.i126 = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i123, i32 0, i32 2
  %18 = ptrtoint ptr %id1.i.i126 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id1.i.i126, align 4
  %cmp2.i.i127 = icmp eq i32 %19, 17
  br i1 %cmp2.i.i127, label %picolcd_report.exit.i130, label %for.body.i.i128.for.cond.i.i125_crit_edge

for.body.i.i128.for.cond.i.i125_crit_edge:        ; preds = %for.body.i.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i125

picolcd_report.exit.thread.i:                     ; preds = %for.cond.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 17) #12
  br label %err.i

picolcd_report.exit.i130:                         ; preds = %for.body.i.i128
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %report.0.i.i123, null
  br i1 %tobool.not.i.i, label %picolcd_report.exit.i130.err.i_crit_edge, label %if.end.i.i

picolcd_report.exit.i130.err.i_crit_edge:         ; preds = %picolcd_report.exit.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end.i.i:                                       ; preds = %picolcd_report.exit.i130
  %maxfield.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i123, i32 0, i32 6
  %22 = ptrtoint ptr %maxfield.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxfield.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.not.i58.i = icmp eq i32 %23, 1
  br i1 %cmp.not.i58.i, label %lor.lhs.false.i.i, label %if.end.i.i.do.end.i60.i_crit_edge

if.end.i.i.do.end.i60.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i60.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %field.i.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i.i123, i32 0, i32 5
  %24 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %field.i.i, align 4
  %report_count.i.i = getelementptr inbounds %struct.hid_field, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %report_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %report_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.not.i.i = icmp eq i32 %27, 2
  br i1 %cmp2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.do.end.i60.i_crit_edge

lor.lhs.false.i.i.do.end.i60.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i60.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %report_size.i.i = getelementptr inbounds %struct.hid_field, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %report_size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %report_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp6.not.i.i = icmp eq i32 %29, 8
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %lor.lhs.false3.i.i.do.end.i60.i_crit_edge

lor.lhs.false3.i.i.do.end.i60.i_crit_edge:        ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i60.i

do.end.i60.i:                                     ; preds = %lor.lhs.false3.i.i.do.end.i60.i_crit_edge, %lor.lhs.false.i.i.do.end.i60.i_crit_edge, %if.end.i.i.do.end.i60.i_crit_edge
  %dev.i59.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i59.i, ptr noundef nonnull @.str.54) #12
  br label %err.i

if.end8.i.i:                                      ; preds = %lor.lhs.false3.i.i
  %call.i.i = tail call ptr @input_allocate_device() #9
  %cmp9.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp9.i.i, label %do.end13.i.i, label %if.end15.i.i

do.end13.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev14.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i.i, ptr noundef nonnull @.str.57) #12
  br label %err.i

if.end15.i.i:                                     ; preds = %if.end8.i.i
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %driver_data.i.i.i.i, align 4
  %keycode.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11
  %31 = call ptr @memcpy(ptr %keycode.i.i, ptr @def_keymap, i32 34)
  %name.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 39
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %name.i.i, ptr %call.i.i, align 8
  %phys.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 40
  %phys19.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %phys19.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %phys.i.i, ptr %phys19.i.i, align 4
  %uniq.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 41
  %uniq21.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %uniq21.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %uniq.i.i, ptr %uniq21.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 8
  %35 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bus.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %id.i.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 10
  %38 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i = trunc i32 %39 to i16
  %vendor23.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %vendor23.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i, ptr %vendor23.i.i, align 2
  %product.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11
  %41 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %product.i.i, align 8
  %conv24.i.i = trunc i32 %42 to i16
  %product26.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %product26.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv24.i.i, ptr %product26.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 12
  %44 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %version.i.i, align 4
  %conv27.i.i = trunc i32 %45 to i16
  %version29.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %version29.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv27.i.i, ptr %version29.i.i, align 2
  %dev30.i.i = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 18
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 1
  %47 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev30.i.i, ptr %parent.i.i, align 8
  %keycode33.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 17
  %48 = ptrtoint ptr %keycode33.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %keycode.i.i, ptr %keycode33.i.i, align 4
  %keycodemax.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 15
  %49 = ptrtoint ptr %keycodemax.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 17, ptr %keycodemax.i.i, align 4
  %keycodesize.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 16
  %50 = ptrtoint ptr %keycodesize.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %keycodesize.i.i, align 8
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 4) #9
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit.i.i) #9
  %51 = ptrtoint ptr %keycode.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %keycode.i.i, align 8
  %conv39.i.i = zext i16 %52 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.i.i) #9
  %arrayidx38.1.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 1
  %53 = ptrtoint ptr %arrayidx38.1.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx38.1.i.i, align 2
  %conv39.1.i.i = zext i16 %54 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.1.i.i) #9
  %arrayidx38.2.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 2
  %55 = ptrtoint ptr %arrayidx38.2.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx38.2.i.i, align 4
  %conv39.2.i.i = zext i16 %56 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.2.i.i) #9
  %arrayidx38.3.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 3
  %57 = ptrtoint ptr %arrayidx38.3.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx38.3.i.i, align 2
  %conv39.3.i.i = zext i16 %58 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.3.i.i) #9
  %arrayidx38.4.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 4
  %59 = ptrtoint ptr %arrayidx38.4.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx38.4.i.i, align 8
  %conv39.4.i.i = zext i16 %60 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.4.i.i) #9
  %arrayidx38.5.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 5
  %61 = ptrtoint ptr %arrayidx38.5.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx38.5.i.i, align 2
  %conv39.5.i.i = zext i16 %62 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.5.i.i) #9
  %arrayidx38.6.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 6
  %63 = ptrtoint ptr %arrayidx38.6.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx38.6.i.i, align 4
  %conv39.6.i.i = zext i16 %64 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.6.i.i) #9
  %arrayidx38.7.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 7
  %65 = ptrtoint ptr %arrayidx38.7.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx38.7.i.i, align 2
  %conv39.7.i.i = zext i16 %66 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.7.i.i) #9
  %arrayidx38.8.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 8
  %67 = ptrtoint ptr %arrayidx38.8.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx38.8.i.i, align 8
  %conv39.8.i.i = zext i16 %68 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.8.i.i) #9
  %arrayidx38.9.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 9
  %69 = ptrtoint ptr %arrayidx38.9.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx38.9.i.i, align 2
  %conv39.9.i.i = zext i16 %70 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.9.i.i) #9
  %arrayidx38.10.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 10
  %71 = ptrtoint ptr %arrayidx38.10.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx38.10.i.i, align 4
  %conv39.10.i.i = zext i16 %72 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.10.i.i) #9
  %arrayidx38.11.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 11
  %73 = ptrtoint ptr %arrayidx38.11.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx38.11.i.i, align 2
  %conv39.11.i.i = zext i16 %74 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.11.i.i) #9
  %arrayidx38.12.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 12
  %75 = ptrtoint ptr %arrayidx38.12.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx38.12.i.i, align 8
  %conv39.12.i.i = zext i16 %76 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.12.i.i) #9
  %arrayidx38.13.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 13
  %77 = ptrtoint ptr %arrayidx38.13.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx38.13.i.i, align 2
  %conv39.13.i.i = zext i16 %78 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.13.i.i) #9
  %arrayidx38.14.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 14
  %79 = ptrtoint ptr %arrayidx38.14.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx38.14.i.i, align 4
  %conv39.14.i.i = zext i16 %80 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.14.i.i) #9
  %arrayidx38.15.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 15
  %81 = ptrtoint ptr %arrayidx38.15.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx38.15.i.i, align 2
  %conv39.15.i.i = zext i16 %82 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.15.i.i) #9
  %arrayidx38.16.i.i = getelementptr %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 11, i32 16
  %83 = ptrtoint ptr %arrayidx38.16.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx38.16.i.i, align 8
  %conv39.16.i.i = zext i16 %84 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %conv39.16.i.i) #9
  %call40.i.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end.i, label %do.end45.i.i

do.end45.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i.i, ptr noundef nonnull @.str.60) #12
  tail call void @input_free_device(ptr noundef nonnull %call.i.i) #9
  br label %err.i

if.end.i:                                         ; preds = %if.end15.i.i
  %input_keys.i.i = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %input_keys.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i.i, ptr %input_keys.i.i, align 8
  br label %for.cond.i66.i

for.cond.i66.i:                                   ; preds = %for.body.i69.i.for.cond.i66.i_crit_edge, %if.end.i
  %report.0.in.i63.i = phi ptr [ %report_list.i.i121, %if.end.i ], [ %report.0.i64.i, %for.body.i69.i.for.cond.i66.i_crit_edge ]
  %86 = ptrtoint ptr %report.0.in.i63.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %report.0.i64.i = load ptr, ptr %report.0.in.i63.i, align 4
  %cmp.not.i65.i = icmp eq ptr %report.0.i64.i, %report_list.i.i121
  br i1 %cmp.not.i65.i, label %do.end.i71.i, label %for.body.i69.i

for.body.i69.i:                                   ; preds = %for.cond.i66.i
  %id1.i67.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i64.i, i32 0, i32 2
  %87 = ptrtoint ptr %id1.i67.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id1.i67.i, align 4
  %cmp2.i68.i = icmp eq i32 %88, 33
  br i1 %cmp2.i68.i, label %for.body.i69.i.picolcd_report.exit73.i_crit_edge, label %for.body.i69.i.for.cond.i66.i_crit_edge

for.body.i69.i.for.cond.i66.i_crit_edge:          ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i66.i

for.body.i69.i.picolcd_report.exit73.i_crit_edge: ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit73.i

do.end.i71.i:                                     ; preds = %for.cond.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 33) #12
  br label %picolcd_report.exit73.i

picolcd_report.exit73.i:                          ; preds = %do.end.i71.i, %for.body.i69.i.picolcd_report.exit73.i_crit_edge
  %retval.0.i72.i = phi ptr [ null, %do.end.i71.i ], [ %report.0.i64.i, %for.body.i69.i.picolcd_report.exit73.i_crit_edge ]
  %call3.i = tail call i32 @picolcd_init_cir(ptr noundef %call7.i.i, ptr noundef %retval.0.i72.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %picolcd_report.exit73.i.err.i_crit_edge

picolcd_report.exit73.i.err.i_crit_edge:          ; preds = %picolcd_report.exit73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end6.i:                                        ; preds = %picolcd_report.exit73.i
  %call7.i = tail call i32 @picolcd_init_framebuffer(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.err.i_crit_edge

if.end6.i.err.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

if.end10.i:                                       ; preds = %if.end6.i
  %report_list.i74.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i78.i

for.cond.i78.i:                                   ; preds = %for.body.i81.i.for.cond.i78.i_crit_edge, %if.end10.i
  %report.0.in.i75.i = phi ptr [ %report_list.i74.i, %if.end10.i ], [ %report.0.i76.i, %for.body.i81.i.for.cond.i78.i_crit_edge ]
  %89 = ptrtoint ptr %report.0.in.i75.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %report.0.i76.i = load ptr, ptr %report.0.in.i75.i, align 4
  %cmp.not.i77.i = icmp eq ptr %report.0.i76.i, %report_list.i74.i
  br i1 %cmp.not.i77.i, label %do.end.i83.i, label %for.body.i81.i

for.body.i81.i:                                   ; preds = %for.cond.i78.i
  %id1.i79.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i76.i, i32 0, i32 2
  %90 = ptrtoint ptr %id1.i79.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id1.i79.i, align 4
  %cmp2.i80.i = icmp eq i32 %91, 146
  br i1 %cmp2.i80.i, label %for.body.i81.i.picolcd_report.exit85.i_crit_edge, label %for.body.i81.i.for.cond.i78.i_crit_edge

for.body.i81.i.for.cond.i78.i_crit_edge:          ; preds = %for.body.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i78.i

for.body.i81.i.picolcd_report.exit85.i_crit_edge: ; preds = %for.body.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit85.i

do.end.i83.i:                                     ; preds = %for.cond.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 146) #12
  br label %picolcd_report.exit85.i

picolcd_report.exit85.i:                          ; preds = %do.end.i83.i, %for.body.i81.i.picolcd_report.exit85.i_crit_edge
  %retval.0.i84.i = phi ptr [ null, %do.end.i83.i ], [ %report.0.i76.i, %for.body.i81.i.picolcd_report.exit85.i_crit_edge ]
  %call12.i = tail call i32 @picolcd_init_lcd(ptr noundef %call7.i.i, ptr noundef %retval.0.i84.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %picolcd_report.exit85.i.for.cond.i90.i_crit_edge, label %picolcd_report.exit85.i.err.i_crit_edge

picolcd_report.exit85.i.err.i_crit_edge:          ; preds = %picolcd_report.exit85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

picolcd_report.exit85.i.for.cond.i90.i_crit_edge: ; preds = %picolcd_report.exit85.i
  br label %for.cond.i90.i

for.cond.i90.i:                                   ; preds = %for.body.i93.i.for.cond.i90.i_crit_edge, %picolcd_report.exit85.i.for.cond.i90.i_crit_edge
  %report.0.in.i87.i = phi ptr [ %report.0.i88.i, %for.body.i93.i.for.cond.i90.i_crit_edge ], [ %report_list.i74.i, %picolcd_report.exit85.i.for.cond.i90.i_crit_edge ]
  %92 = ptrtoint ptr %report.0.in.i87.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %report.0.i88.i = load ptr, ptr %report.0.in.i87.i, align 4
  %cmp.not.i89.i = icmp eq ptr %report.0.i88.i, %report_list.i74.i
  br i1 %cmp.not.i89.i, label %do.end.i95.i, label %for.body.i93.i

for.body.i93.i:                                   ; preds = %for.cond.i90.i
  %id1.i91.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i88.i, i32 0, i32 2
  %93 = ptrtoint ptr %id1.i91.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id1.i91.i, align 4
  %cmp2.i92.i = icmp eq i32 %94, 145
  br i1 %cmp2.i92.i, label %for.body.i93.i.picolcd_report.exit97.i_crit_edge, label %for.body.i93.i.for.cond.i90.i_crit_edge

for.body.i93.i.for.cond.i90.i_crit_edge:          ; preds = %for.body.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i90.i

for.body.i93.i.picolcd_report.exit97.i_crit_edge: ; preds = %for.body.i93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit97.i

do.end.i95.i:                                     ; preds = %for.cond.i90.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 145) #12
  br label %picolcd_report.exit97.i

picolcd_report.exit97.i:                          ; preds = %do.end.i95.i, %for.body.i93.i.picolcd_report.exit97.i_crit_edge
  %retval.0.i96.i = phi ptr [ null, %do.end.i95.i ], [ %report.0.i88.i, %for.body.i93.i.picolcd_report.exit97.i_crit_edge ]
  %call17.i = tail call i32 @picolcd_init_backlight(ptr noundef %call7.i.i, ptr noundef %retval.0.i96.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %picolcd_report.exit97.i.for.cond.i102.i_crit_edge, label %picolcd_report.exit97.i.err.i_crit_edge

picolcd_report.exit97.i.err.i_crit_edge:          ; preds = %picolcd_report.exit97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

picolcd_report.exit97.i.for.cond.i102.i_crit_edge: ; preds = %picolcd_report.exit97.i
  br label %for.cond.i102.i

for.cond.i102.i:                                  ; preds = %for.body.i105.i.for.cond.i102.i_crit_edge, %picolcd_report.exit97.i.for.cond.i102.i_crit_edge
  %report.0.in.i99.i = phi ptr [ %report.0.i100.i, %for.body.i105.i.for.cond.i102.i_crit_edge ], [ %report_list.i74.i, %picolcd_report.exit97.i.for.cond.i102.i_crit_edge ]
  %95 = ptrtoint ptr %report.0.in.i99.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %report.0.i100.i = load ptr, ptr %report.0.in.i99.i, align 4
  %cmp.not.i101.i = icmp eq ptr %report.0.i100.i, %report_list.i74.i
  br i1 %cmp.not.i101.i, label %do.end.i107.i, label %for.body.i105.i

for.body.i105.i:                                  ; preds = %for.cond.i102.i
  %id1.i103.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i100.i, i32 0, i32 2
  %96 = ptrtoint ptr %id1.i103.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %id1.i103.i, align 4
  %cmp2.i104.i = icmp eq i32 %97, 129
  br i1 %cmp2.i104.i, label %for.body.i105.i.picolcd_report.exit109.i_crit_edge, label %for.body.i105.i.for.cond.i102.i_crit_edge

for.body.i105.i.for.cond.i102.i_crit_edge:        ; preds = %for.body.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i102.i

for.body.i105.i.picolcd_report.exit109.i_crit_edge: ; preds = %for.body.i105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit109.i

do.end.i107.i:                                    ; preds = %for.cond.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 129) #12
  br label %picolcd_report.exit109.i

picolcd_report.exit109.i:                         ; preds = %do.end.i107.i, %for.body.i105.i.picolcd_report.exit109.i_crit_edge
  %retval.0.i108.i = phi ptr [ null, %do.end.i107.i ], [ %report.0.i100.i, %for.body.i105.i.picolcd_report.exit109.i_crit_edge ]
  %call22.i = tail call i32 @picolcd_init_leds(ptr noundef %call7.i.i, ptr noundef %retval.0.i108.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %picolcd_report.exit109.i.for.cond.i114.i_crit_edge, label %picolcd_report.exit109.i.err.i_crit_edge

picolcd_report.exit109.i.err.i_crit_edge:         ; preds = %picolcd_report.exit109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

picolcd_report.exit109.i.for.cond.i114.i_crit_edge: ; preds = %picolcd_report.exit109.i
  br label %for.cond.i114.i

for.cond.i114.i:                                  ; preds = %for.body.i117.i.for.cond.i114.i_crit_edge, %picolcd_report.exit109.i.for.cond.i114.i_crit_edge
  %report.0.in.i111.i = phi ptr [ %report.0.i112.i, %for.body.i117.i.for.cond.i114.i_crit_edge ], [ %report_list.i74.i, %picolcd_report.exit109.i.for.cond.i114.i_crit_edge ]
  %98 = ptrtoint ptr %report.0.in.i111.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %report.0.i112.i = load ptr, ptr %report.0.in.i111.i, align 4
  %cmp.not.i113.i = icmp eq ptr %report.0.i112.i, %report_list.i74.i
  br i1 %cmp.not.i113.i, label %do.end.i119.i, label %for.body.i117.i

for.body.i117.i:                                  ; preds = %for.cond.i114.i
  %id1.i115.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i112.i, i32 0, i32 2
  %99 = ptrtoint ptr %id1.i115.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id1.i115.i, align 4
  %cmp2.i116.i = icmp eq i32 %100, 163
  br i1 %cmp2.i116.i, label %for.body.i117.i.picolcd_report.exit121.i_crit_edge, label %for.body.i117.i.for.cond.i114.i_crit_edge

for.body.i117.i.for.cond.i114.i_crit_edge:        ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i114.i

for.body.i117.i.picolcd_report.exit121.i_crit_edge: ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit121.i

do.end.i119.i:                                    ; preds = %for.cond.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 163) #12
  br label %picolcd_report.exit121.i

picolcd_report.exit121.i:                         ; preds = %do.end.i119.i, %for.body.i117.i.picolcd_report.exit121.i_crit_edge
  %retval.0.i120.i = phi ptr [ null, %do.end.i119.i ], [ %report.0.i112.i, %for.body.i117.i.picolcd_report.exit121.i_crit_edge ]
  br label %for.cond.i126.i

for.cond.i126.i:                                  ; preds = %for.body.i129.i.for.cond.i126.i_crit_edge, %picolcd_report.exit121.i
  %report.0.in.i123.i = phi ptr [ %report_list.i74.i, %picolcd_report.exit121.i ], [ %report.0.i124.i, %for.body.i129.i.for.cond.i126.i_crit_edge ]
  %101 = ptrtoint ptr %report.0.in.i123.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %report.0.i124.i = load ptr, ptr %report.0.in.i123.i, align 4
  %cmp.not.i125.i = icmp eq ptr %report.0.i124.i, %report_list.i74.i
  br i1 %cmp.not.i125.i, label %do.end.i131.i, label %for.body.i129.i

for.body.i129.i:                                  ; preds = %for.cond.i126.i
  %id1.i127.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i124.i, i32 0, i32 2
  %102 = ptrtoint ptr %id1.i127.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %id1.i127.i, align 4
  %cmp2.i128.i = icmp eq i32 %103, 164
  br i1 %cmp2.i128.i, label %for.body.i129.i.picolcd_report.exit133.i_crit_edge, label %for.body.i129.i.for.cond.i126.i_crit_edge

for.body.i129.i.for.cond.i126.i_crit_edge:        ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i126.i

for.body.i129.i.picolcd_report.exit133.i_crit_edge: ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit133.i

do.end.i131.i:                                    ; preds = %for.cond.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 164) #12
  br label %picolcd_report.exit133.i

picolcd_report.exit133.i:                         ; preds = %do.end.i131.i, %for.body.i129.i.picolcd_report.exit133.i_crit_edge
  %retval.0.i132.i = phi ptr [ null, %do.end.i131.i ], [ %report.0.i124.i, %for.body.i129.i.picolcd_report.exit133.i_crit_edge ]
  br label %for.cond.i138.i

for.cond.i138.i:                                  ; preds = %for.body.i141.i.for.cond.i138.i_crit_edge, %picolcd_report.exit133.i
  %report.0.in.i135.i = phi ptr [ %report_list.i74.i, %picolcd_report.exit133.i ], [ %report.0.i136.i, %for.body.i141.i.for.cond.i138.i_crit_edge ]
  %104 = ptrtoint ptr %report.0.in.i135.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %report.0.i136.i = load ptr, ptr %report.0.in.i135.i, align 4
  %cmp.not.i137.i = icmp eq ptr %report.0.i136.i, %report_list.i74.i
  br i1 %cmp.not.i137.i, label %do.end.i143.i, label %for.body.i141.i

for.body.i141.i:                                  ; preds = %for.cond.i138.i
  %id1.i139.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i136.i, i32 0, i32 2
  %105 = ptrtoint ptr %id1.i139.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id1.i139.i, align 4
  %cmp2.i140.i = icmp eq i32 %106, 179
  br i1 %cmp2.i140.i, label %for.body.i141.i.picolcd_report.exit145.i_crit_edge, label %for.body.i141.i.for.cond.i138.i_crit_edge

for.body.i141.i.for.cond.i138.i_crit_edge:        ; preds = %for.body.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i138.i

for.body.i141.i.picolcd_report.exit145.i_crit_edge: ; preds = %for.body.i141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit145.i

do.end.i143.i:                                    ; preds = %for.cond.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 179) #12
  br label %picolcd_report.exit145.i

picolcd_report.exit145.i:                         ; preds = %do.end.i143.i, %for.body.i141.i.picolcd_report.exit145.i_crit_edge
  %retval.0.i144.i = phi ptr [ null, %do.end.i143.i ], [ %report.0.i136.i, %for.body.i141.i.picolcd_report.exit145.i_crit_edge ]
  br label %for.cond.i150.i

for.cond.i150.i:                                  ; preds = %for.body.i153.i.for.cond.i150.i_crit_edge, %picolcd_report.exit145.i
  %report.0.in.i147.i = phi ptr [ %report_list.i74.i, %picolcd_report.exit145.i ], [ %report.0.i148.i, %for.body.i153.i.for.cond.i150.i_crit_edge ]
  %107 = ptrtoint ptr %report.0.in.i147.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %report.0.i148.i = load ptr, ptr %report.0.in.i147.i, align 4
  %cmp.not.i149.i = icmp eq ptr %report.0.i148.i, %report_list.i74.i
  br i1 %cmp.not.i149.i, label %do.end.i155.i, label %for.body.i153.i

for.body.i153.i:                                  ; preds = %for.cond.i150.i
  %id1.i151.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i148.i, i32 0, i32 2
  %108 = ptrtoint ptr %id1.i151.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %id1.i151.i, align 4
  %cmp2.i152.i = icmp eq i32 %109, 180
  br i1 %cmp2.i152.i, label %for.body.i153.i.picolcd_report.exit157.i_crit_edge, label %for.body.i153.i.for.cond.i150.i_crit_edge

for.body.i153.i.for.cond.i150.i_crit_edge:        ; preds = %for.body.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i150.i

for.body.i153.i.picolcd_report.exit157.i_crit_edge: ; preds = %for.body.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit157.i

do.end.i155.i:                                    ; preds = %for.cond.i150.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 180) #12
  br label %picolcd_report.exit157.i

picolcd_report.exit157.i:                         ; preds = %do.end.i155.i, %for.body.i153.i.picolcd_report.exit157.i_crit_edge
  %retval.0.i156.i = phi ptr [ null, %do.end.i155.i ], [ %report.0.i148.i, %for.body.i153.i.picolcd_report.exit157.i_crit_edge ]
  br label %for.cond.i162.i

for.cond.i162.i:                                  ; preds = %for.body.i165.i.for.cond.i162.i_crit_edge, %picolcd_report.exit157.i
  %report.0.in.i159.i = phi ptr [ %report_list.i74.i, %picolcd_report.exit157.i ], [ %report.0.i160.i, %for.body.i165.i.for.cond.i162.i_crit_edge ]
  %110 = ptrtoint ptr %report.0.in.i159.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %report.0.i160.i = load ptr, ptr %report.0.in.i159.i, align 4
  %cmp.not.i161.i = icmp eq ptr %report.0.i160.i, %report_list.i74.i
  br i1 %cmp.not.i161.i, label %do.end.i167.i, label %for.body.i165.i

for.body.i165.i:                                  ; preds = %for.cond.i162.i
  %id1.i163.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i160.i, i32 0, i32 2
  %111 = ptrtoint ptr %id1.i163.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id1.i163.i, align 4
  %cmp2.i164.i = icmp eq i32 %112, 147
  br i1 %cmp2.i164.i, label %for.body.i165.i.picolcd_report.exit169.i_crit_edge, label %for.body.i165.i.for.cond.i162.i_crit_edge

for.body.i165.i.for.cond.i162.i_crit_edge:        ; preds = %for.body.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i162.i

for.body.i165.i.picolcd_report.exit169.i_crit_edge: ; preds = %for.body.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_report.exit169.i

do.end.i167.i:                                    ; preds = %for.cond.i162.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev45, ptr noundef nonnull @.str, i32 noundef 147) #12
  br label %picolcd_report.exit169.i

picolcd_report.exit169.i:                         ; preds = %do.end.i167.i, %for.body.i165.i.picolcd_report.exit169.i_crit_edge
  %retval.0.i168.i = phi ptr [ null, %do.end.i167.i ], [ %report.0.i160.i, %for.body.i165.i.picolcd_report.exit169.i_crit_edge ]
  tail call void @picolcd_init_devfs(ptr noundef %call7.i.i, ptr noundef %retval.0.i120.i, ptr noundef %retval.0.i132.i, ptr noundef %retval.0.i144.i, ptr noundef %retval.0.i156.i, ptr noundef %retval.0.i168.i) #9
  br label %do.body72

err.i:                                            ; preds = %picolcd_report.exit109.i.err.i_crit_edge, %picolcd_report.exit97.i.err.i_crit_edge, %picolcd_report.exit85.i.err.i_crit_edge, %if.end6.i.err.i_crit_edge, %picolcd_report.exit73.i.err.i_crit_edge, %do.end45.i.i, %do.end13.i.i, %do.end.i60.i, %picolcd_report.exit.i130.err.i_crit_edge, %picolcd_report.exit.thread.i
  %error.0.i = phi i32 [ %call3.i, %picolcd_report.exit73.i.err.i_crit_edge ], [ %call7.i, %if.end6.i.err.i_crit_edge ], [ %call12.i, %picolcd_report.exit85.i.err.i_crit_edge ], [ %call17.i, %picolcd_report.exit97.i.err.i_crit_edge ], [ %call22.i, %picolcd_report.exit109.i.err.i_crit_edge ], [ -19, %picolcd_report.exit.thread.i ], [ -19, %picolcd_report.exit.i130.err.i_crit_edge ], [ %call40.i.i, %do.end45.i.i ], [ -12, %do.end13.i.i ], [ -22, %do.end.i60.i ]
  tail call void @picolcd_exit_leds(ptr noundef %call7.i.i) #9
  tail call void @picolcd_exit_backlight(ptr noundef %call7.i.i) #9
  tail call void @picolcd_exit_lcd(ptr noundef %call7.i.i) #9
  tail call void @picolcd_exit_framebuffer(ptr noundef %call7.i.i) #9
  tail call void @picolcd_exit_cir(ptr noundef %call7.i.i) #9
  %input_keys.i170.i = getelementptr inbounds %struct.picolcd_data, ptr %call7.i.i, i32 0, i32 9
  %113 = ptrtoint ptr %input_keys.i170.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %input_keys.i170.i, align 8
  store ptr null, ptr %input_keys.i170.i, align 8
  %tobool.not.i171.i = icmp eq ptr %114, null
  br i1 %tobool.not.i171.i, label %err.i.err_cleanup_sysfs2_crit_edge, label %if.then.i.i

err.i.err_cleanup_sysfs2_crit_edge:               ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup_sysfs2

if.then.i.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_unregister_device(ptr noundef nonnull %114) #9
  br label %err_cleanup_sysfs2

do.body72:                                        ; preds = %picolcd_report.exit169.i, %picolcd_probe_bootloader.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %115 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool73.not = icmp eq i32 %115, 0
  br i1 %tobool73.not, label %do.body72.cleanup_crit_edge, label %do.end77

do.body72.cleanup_crit_edge:                      ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end77:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.2) #12
  br label %cleanup

err_cleanup_sysfs2:                               ; preds = %if.then.i.i, %err.i.err_cleanup_sysfs2_crit_edge
  tail call void @device_remove_file(ptr noundef %dev45, ptr noundef nonnull @dev_attr_operation_mode) #9
  br label %err_cleanup_sysfs1

err_cleanup_sysfs1:                               ; preds = %err_cleanup_sysfs2, %do.end60
  %error.1 = phi i32 [ %call55, %do.end60 ], [ %error.0.i, %err_cleanup_sysfs2 ]
  tail call void @device_remove_file(ptr noundef %dev45, ptr noundef nonnull @dev_attr_operation_mode_delay) #9
  br label %err_cleanup_hid_ll

err_cleanup_hid_ll:                               ; preds = %err_cleanup_sysfs1, %do.end51
  %error.2 = phi i32 [ %call46, %do.end51 ], [ %error.1, %err_cleanup_sysfs1 ]
  tail call void @hid_hw_close(ptr noundef %hdev) #9
  br label %err_cleanup_hid_hw

err_cleanup_hid_hw:                               ; preds = %err_cleanup_hid_ll, %do.end42
  %error.3 = phi i32 [ %call37, %do.end42 ], [ %error.2, %err_cleanup_hid_ll ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  br label %err_cleanup_data

err_cleanup_data:                                 ; preds = %err_cleanup_hid_hw, %do.end34, %do.end26
  %error.4 = phi i32 [ %call.i, %do.end26 ], [ %call29, %do.end34 ], [ %error.3, %err_cleanup_hid_hw ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup_data, %do.end77, %do.body72.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -12, %do.end8 ], [ %error.4, %err_cleanup_data ], [ 0, %do.end77 ], [ 0, %do.body72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_remove(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %do.end

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2) #12
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  tail call void @picolcd_exit_devfs(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_operation_mode) #9
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_operation_mode_delay) #9
  tail call void @hid_hw_close(ptr noundef %hdev) #9
  tail call void @hid_hw_stop(ptr noundef %hdev) #9
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pending = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pending, align 4
  %tobool30.not = icmp eq ptr %6, null
  br i1 %tobool30.not, label %do.body6.if.end33_crit_edge, label %if.then31

do.body6.if.end33_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %ready = getelementptr inbounds %struct.picolcd_pending, ptr %6, i32 0, i32 2
  tail call void @complete(ptr noundef %ready) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body6.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #9
  tail call void @picolcd_exit_leds(ptr noundef %1) #9
  tail call void @picolcd_exit_backlight(ptr noundef %1) #9
  tail call void @picolcd_exit_lcd(ptr noundef %1) #9
  tail call void @picolcd_exit_framebuffer(ptr noundef %1) #9
  tail call void @picolcd_exit_cir(ptr noundef %1) #9
  %input_keys.i = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %input_keys.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_keys.i, align 4
  store ptr null, ptr %input_keys.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end33.picolcd_exit_keys.exit_crit_edge, label %if.then.i

if.end33.picolcd_exit_keys.exit_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %picolcd_exit_keys.exit

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_unregister_device(ptr noundef nonnull %8) #9
  br label %picolcd_exit_keys.exit

picolcd_exit_keys.exit:                           ; preds = %if.then.i, %if.end33.picolcd_exit_keys.exit_crit_edge
  %mutex = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 21
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %raw_data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp = icmp sgt i32 %size, 64
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %size, i32 noundef %3) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %id3 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %4 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body18 [
    i32 17, label %if.then5
    i32 33, label %if.then12
  ]

if.then5:                                         ; preds = %if.end2
  %input_keys = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_keys, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.then5.if.end39_crit_edge, label %if.then7

if.then5.if.end39_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then7:                                         ; preds = %if.then5
  %add.ptr = getelementptr i8, ptr %raw_data, i32 1
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9.i = icmp sgt i32 %sub, 0
  %arrayidx7.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 8, i32 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %for.cond59.preheader.thread.i

for.body.lr.ph.i:                                 ; preds = %if.then7
  %arrayidx7.1.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 8, i32 1
  br label %for.body.i

for.cond59.preheader.i:                           ; preds = %cleanup.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp67.i = icmp eq i8 %10, 0
  br i1 %cmp67.i, label %for.cond59.preheader.i.cleanup127.i_crit_edge, label %for.cond59.preheader.i.for.body74.i_crit_edge

for.cond59.preheader.i.for.body74.i_crit_edge:    ; preds = %for.cond59.preheader.i
  br label %for.body74.i

for.cond59.preheader.i.cleanup127.i_crit_edge:    ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup127.i

for.cond59.preheader.thread.i:                    ; preds = %if.then7
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp6719.i = icmp eq i8 %12, 0
  br i1 %cmp6719.i, label %cleanup127.thread.i, label %for.cond59.preheader.thread.i.for.end86.i_crit_edge

for.cond59.preheader.thread.i.for.end86.i_crit_edge: ; preds = %for.cond59.preheader.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end86.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc57.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %i.010.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1.i = icmp eq i8 %14, 0
  br i1 %cmp1.i, label %for.body.i.cleanup.i_crit_edge, label %for.body6.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body6.preheader.i:                            ; preds = %for.body.i
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp11.i = icmp eq i8 %16, %14
  br i1 %cmp11.i, label %for.body6.preheader.i.cleanup.i_crit_edge, label %for.cond3.i

for.body6.preheader.i.cleanup.i_crit_edge:        ; preds = %for.body6.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.cond3.i:                                      ; preds = %for.body6.preheader.i
  %17 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %14)
  %cmp11.1.i = icmp eq i8 %18, %14
  br i1 %cmp11.1.i, label %for.cond3.i.cleanup.i_crit_edge, label %for.cond3.1.i

for.cond3.i.cleanup.i_crit_edge:                  ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.cond3.1.i:                                    ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp22.i = icmp eq i8 %16, 0
  br i1 %cmp22.i, label %for.cond3.1.i.if.then24.i_crit_edge, label %for.cond15.i

for.cond3.1.i.if.then24.i_crit_edge:              ; preds = %for.cond3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

for.cond15.i:                                     ; preds = %for.cond3.1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp22.1.i = icmp eq i8 %18, 0
  br i1 %cmp22.1.i, label %for.cond15.i.if.then24.i_crit_edge, label %for.cond15.i.for.end31.i_crit_edge

for.cond15.i.for.end31.i_crit_edge:               ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31.i

for.cond15.i.if.then24.i_crit_edge:               ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24.i

if.then24.i:                                      ; preds = %for.cond15.i.if.then24.i_crit_edge, %for.cond3.1.i.if.then24.i_crit_edge
  %arrayidx20.lcssa.i = phi ptr [ %arrayidx7.i, %for.cond3.1.i.if.then24.i_crit_edge ], [ %arrayidx7.1.i, %for.cond15.i.if.then24.i_crit_edge ]
  %19 = ptrtoint ptr %arrayidx20.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %arrayidx20.lcssa.i, align 1
  br label %for.end31.i

for.end31.i:                                      ; preds = %if.then24.i, %for.cond15.i.for.end31.i_crit_edge
  %20 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_keys, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv33.i = zext i8 %23 to i32
  tail call void @input_event(ptr noundef %21, i32 noundef 4, i32 noundef 4, i32 noundef %conv33.i) #9
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %25)
  %cmp36.i = icmp ult i8 %25, 17
  br i1 %cmp36.i, label %if.end42.i, label %for.end31.i.if.end54.i_crit_edge

for.end31.i.if.end54.i_crit_edge:                 ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.end42.i:                                       ; preds = %for.end31.i
  %conv35.i = zext i8 %25 to i32
  %arrayidx40.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 11, i32 %conv35.i
  %26 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx40.i, align 2
  %conv41.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %27)
  %cmp43.not.i = icmp eq i16 %27, 240
  br i1 %cmp43.not.i, label %if.end42.i.if.end54.i_crit_edge, label %do.body.i

if.end42.i.if.end54.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

do.body.i:                                        ; preds = %if.end42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %28 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %do.body.i.do.end52.i_crit_edge, label %do.end.i

do.body.i.do.end52.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2, i32 noundef %conv35.i, i32 noundef %conv41.i) #12
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end.i, %do.body.i.do.end52.i_crit_edge
  %29 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_keys, align 4
  tail call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef %conv41.i, i32 noundef 1) #9
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end52.i, %if.end42.i.if.end54.i_crit_edge, %for.end31.i.if.end54.i_crit_edge
  %31 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input_keys, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end54.i, %for.cond3.i.cleanup.i_crit_edge, %for.body6.preheader.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc57.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc57.i, %sub
  br i1 %exitcond.not.i, label %for.cond59.preheader.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond71.i:                                     ; preds = %for.body74.i
  %inc85.i = add nuw nsw i32 %i.112.i, 1
  %exitcond15.not.i = icmp eq i32 %inc85.i, %sub
  br i1 %exitcond15.not.i, label %for.cond71.i.for.end86.i_crit_edge, label %for.cond71.i.for.body74.i_crit_edge

for.cond71.i.for.body74.i_crit_edge:              ; preds = %for.cond71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74.i

for.cond71.i.for.end86.i_crit_edge:               ; preds = %for.cond71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end86.i

for.body74.i:                                     ; preds = %for.cond71.i.for.body74.i_crit_edge, %for.cond59.preheader.i.for.body74.i_crit_edge
  %i.112.i = phi i32 [ %inc85.i, %for.cond71.i.for.body74.i_crit_edge ], [ 0, %for.cond59.preheader.i.for.body74.i_crit_edge ]
  %arrayidx78.i = getelementptr i8, ptr %add.ptr, i32 %i.112.i
  %33 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx78.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %34)
  %cmp80.i = icmp eq i8 %10, %34
  br i1 %cmp80.i, label %for.body74.i.cleanup127.i_crit_edge, label %for.cond71.i

for.body74.i.cleanup127.i_crit_edge:              ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup127.i

for.end86.i:                                      ; preds = %for.cond71.i.for.end86.i_crit_edge, %for.cond59.preheader.thread.i.for.end86.i_crit_edge
  %35 = phi i8 [ %12, %for.cond59.preheader.thread.i.for.end86.i_crit_edge ], [ %10, %for.cond71.i.for.end86.i_crit_edge ]
  %36 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input_keys, align 4
  %conv90.i = zext i8 %35 to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 4, i32 noundef 4, i32 noundef %conv90.i) #9
  %38 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %39)
  %cmp94.i = icmp ult i8 %39, 17
  br i1 %cmp94.i, label %if.end104.i, label %for.end86.i.if.end123.i_crit_edge

for.end86.i.if.end123.i_crit_edge:                ; preds = %for.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i

if.end104.i:                                      ; preds = %for.end86.i
  %conv93.i = zext i8 %39 to i32
  %arrayidx101.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 11, i32 %conv93.i
  %40 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx101.i, align 2
  %conv102.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %41)
  %cmp105.not.i = icmp eq i16 %41, 240
  br i1 %cmp105.not.i, label %if.end104.i.if.end123.i_crit_edge, label %do.body108.i

if.end104.i.if.end123.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i

do.body108.i:                                     ; preds = %if.end104.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %42 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool109.not.i = icmp eq i32 %42, 0
  br i1 %tobool109.not.i, label %do.body108.i.do.end121.i_crit_edge, label %do.end113.i

do.body108.i.do.end121.i_crit_edge:               ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121.i

do.end113.i:                                      ; preds = %do.body108.i
  call void @__sanitizer_cov_trace_pc() #11
  %call118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef %conv93.i, i32 noundef %conv102.i) #12
  br label %do.end121.i

do.end121.i:                                      ; preds = %do.end113.i, %do.body108.i.do.end121.i_crit_edge
  %43 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input_keys, align 4
  tail call void @input_event(ptr noundef %44, i32 noundef 1, i32 noundef %conv102.i, i32 noundef 0) #9
  br label %if.end123.i

if.end123.i:                                      ; preds = %do.end121.i, %if.end104.i.if.end123.i_crit_edge, %for.end86.i.if.end123.i_crit_edge
  %45 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input_keys, align 4
  tail call void @input_event(ptr noundef %46, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %47 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx7.i, align 1
  br label %cleanup127.i

cleanup127.i:                                     ; preds = %if.end123.i, %for.body74.i.cleanup127.i_crit_edge, %for.cond59.preheader.i.cleanup127.i_crit_edge
  %arrayidx65.1.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx65.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp67.1.i = icmp eq i8 %49, 0
  br i1 %cmp67.1.i, label %cleanup127.i.if.end39_crit_edge, label %for.cond71.preheader.1.i

cleanup127.i.if.end39_crit_edge:                  ; preds = %cleanup127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

cleanup127.thread.i:                              ; preds = %for.cond59.preheader.thread.i
  %arrayidx65.130.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %arrayidx65.130.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx65.130.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp67.131.i = icmp eq i8 %51, 0
  br i1 %cmp67.131.i, label %cleanup127.thread.i.if.end39_crit_edge, label %cleanup127.thread.i.for.end86.1.i_crit_edge

cleanup127.thread.i.for.end86.1.i_crit_edge:      ; preds = %cleanup127.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end86.1.i

cleanup127.thread.i.if.end39_crit_edge:           ; preds = %cleanup127.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

for.cond71.preheader.1.i:                         ; preds = %cleanup127.i
  br i1 %cmp9.i, label %for.cond71.preheader.1.i.for.body74.1.i_crit_edge, label %for.cond71.preheader.1.i.for.end86.1.i_crit_edge

for.cond71.preheader.1.i.for.end86.1.i_crit_edge: ; preds = %for.cond71.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end86.1.i

for.cond71.preheader.1.i.for.body74.1.i_crit_edge: ; preds = %for.cond71.preheader.1.i
  br label %for.body74.1.i

for.body74.1.i:                                   ; preds = %for.cond71.1.i.for.body74.1.i_crit_edge, %for.cond71.preheader.1.i.for.body74.1.i_crit_edge
  %i.112.1.i = phi i32 [ %inc85.1.i, %for.cond71.1.i.for.body74.1.i_crit_edge ], [ 0, %for.cond71.preheader.1.i.for.body74.1.i_crit_edge ]
  %arrayidx78.1.i = getelementptr i8, ptr %add.ptr, i32 %i.112.1.i
  %52 = ptrtoint ptr %arrayidx78.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx78.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %53)
  %cmp80.1.i = icmp eq i8 %49, %53
  br i1 %cmp80.1.i, label %for.body74.1.i.if.end39_crit_edge, label %for.cond71.1.i

for.body74.1.i.if.end39_crit_edge:                ; preds = %for.body74.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

for.cond71.1.i:                                   ; preds = %for.body74.1.i
  %inc85.1.i = add nuw nsw i32 %i.112.1.i, 1
  %exitcond15.1.not.i = icmp eq i32 %inc85.1.i, %sub
  br i1 %exitcond15.1.not.i, label %for.cond71.1.i.for.end86.1.i_crit_edge, label %for.cond71.1.i.for.body74.1.i_crit_edge

for.cond71.1.i.for.body74.1.i_crit_edge:          ; preds = %for.cond71.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74.1.i

for.cond71.1.i.for.end86.1.i_crit_edge:           ; preds = %for.cond71.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end86.1.i

for.end86.1.i:                                    ; preds = %for.cond71.1.i.for.end86.1.i_crit_edge, %for.cond71.preheader.1.i.for.end86.1.i_crit_edge, %cleanup127.thread.i.for.end86.1.i_crit_edge
  %arrayidx65.13336.i = phi ptr [ %arrayidx65.1.i, %for.cond71.preheader.1.i.for.end86.1.i_crit_edge ], [ %arrayidx65.130.i, %cleanup127.thread.i.for.end86.1.i_crit_edge ], [ %arrayidx65.1.i, %for.cond71.1.i.for.end86.1.i_crit_edge ]
  %54 = phi i8 [ %49, %for.cond71.preheader.1.i.for.end86.1.i_crit_edge ], [ %51, %cleanup127.thread.i.for.end86.1.i_crit_edge ], [ %49, %for.cond71.1.i.for.end86.1.i_crit_edge ]
  %55 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input_keys, align 4
  %conv90.1.i = zext i8 %54 to i32
  tail call void @input_event(ptr noundef %56, i32 noundef 4, i32 noundef 4, i32 noundef %conv90.1.i) #9
  %57 = ptrtoint ptr %arrayidx65.13336.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx65.13336.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %58)
  %cmp94.1.i = icmp ult i8 %58, 17
  br i1 %cmp94.1.i, label %if.end104.1.i, label %for.end86.1.i.if.end123.1.i_crit_edge

for.end86.1.i.if.end123.1.i_crit_edge:            ; preds = %for.end86.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.1.i

if.end104.1.i:                                    ; preds = %for.end86.1.i
  %conv93.1.i = zext i8 %58 to i32
  %arrayidx101.1.i = getelementptr %struct.picolcd_data, ptr %1, i32 0, i32 11, i32 %conv93.1.i
  %59 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx101.1.i, align 2
  %conv102.1.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %60)
  %cmp105.not.1.i = icmp eq i16 %60, 240
  br i1 %cmp105.not.1.i, label %if.end104.1.i.if.end123.1.i_crit_edge, label %do.body108.1.i

if.end104.1.i.if.end123.1.i_crit_edge:            ; preds = %if.end104.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.1.i

do.body108.1.i:                                   ; preds = %if.end104.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %61 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool109.not.1.i = icmp eq i32 %61, 0
  br i1 %tobool109.not.1.i, label %do.body108.1.i.do.end121.1.i_crit_edge, label %do.end113.1.i

do.body108.1.i.do.end121.1.i_crit_edge:           ; preds = %do.body108.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121.1.i

do.end113.1.i:                                    ; preds = %do.body108.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call118.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef %conv93.1.i, i32 noundef %conv102.1.i) #12
  br label %do.end121.1.i

do.end121.1.i:                                    ; preds = %do.end113.1.i, %do.body108.1.i.do.end121.1.i_crit_edge
  %62 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input_keys, align 4
  tail call void @input_event(ptr noundef %63, i32 noundef 1, i32 noundef %conv102.1.i, i32 noundef 0) #9
  br label %if.end123.1.i

if.end123.1.i:                                    ; preds = %do.end121.1.i, %if.end104.1.i.if.end123.1.i_crit_edge, %for.end86.1.i.if.end123.1.i_crit_edge
  %64 = ptrtoint ptr %input_keys to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_keys, align 4
  tail call void @input_event(ptr noundef %65, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %66 = ptrtoint ptr %arrayidx65.13336.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx65.13336.i, align 1
  br label %if.end39

if.then12:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13 = getelementptr i8, ptr %raw_data, i32 1
  %sub14 = add i32 %size, -1
  %call15 = tail call i32 @picolcd_raw_cir(ptr noundef nonnull %1, ptr noundef %report, ptr noundef %add.ptr13, i32 noundef %sub14) #9
  br label %if.end39

do.body18:                                        ; preds = %if.end2
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pending = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 22
  %67 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pending, align 4
  %tobool26.not = icmp eq ptr %68, null
  br i1 %tobool26.not, label %do.body18.if.end36_crit_edge, label %if.then27

do.body18.if.end36_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %raw_data29 = getelementptr inbounds %struct.picolcd_pending, ptr %68, i32 0, i32 4
  %add.ptr30 = getelementptr i8, ptr %raw_data, i32 1
  %sub31 = add i32 %size, -1
  %69 = call ptr @memcpy(ptr %raw_data29, ptr %add.ptr30, i32 %sub31)
  %70 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pending, align 4
  %raw_size = getelementptr inbounds %struct.picolcd_pending, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %raw_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub31, ptr %raw_size, align 4
  %73 = load ptr, ptr %pending, align 4
  %in_report = getelementptr inbounds %struct.picolcd_pending, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %in_report to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %report, ptr %in_report, align 4
  %75 = load ptr, ptr %pending, align 4
  %ready = getelementptr inbounds %struct.picolcd_pending, ptr %75, i32 0, i32 2
  tail call void @complete(ptr noundef %ready) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %do.body18.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #9
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %if.then12, %if.end123.1.i, %for.body74.1.i.if.end39_crit_edge, %cleanup127.thread.i.if.end39_crit_edge, %cleanup127.i.if.end39_crit_edge, %if.then5.if.end39_crit_edge
  tail call void @picolcd_debug_raw_event(ptr noundef nonnull %1, ptr noundef %hdev, ptr noundef %report, ptr noundef %raw_data, i32 noundef %size) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end39 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_suspend(ptr nocapture noundef readonly %hdev, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @picolcd_suspend_backlight(ptr noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %do.end

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.2) #12
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_resume(ptr nocapture noundef readonly %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @picolcd_resume_backlight(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %2 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %do.body.if.end8_crit_edge, label %do.end

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef %call1) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_reset_resume(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @picolcd_reset(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %0 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %do.body.if.end7_crit_edge, label %do.end

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.2, i32 noundef %call) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body.if.end7_crit_edge, %entry.if.end7_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @picolcd_fb_reset(ptr noundef %2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.if.end23_crit_edge, label %do.body12

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.body12:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %3 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %do.body12.if.end23_crit_edge, label %do.end17

do.body12.if.end23_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.2, i32 noundef %call9) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %do.body12.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call25 = tail call i32 @picolcd_resume_lcd(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.if.end39_crit_edge, label %do.body28

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %6 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool29.not = icmp eq i32 %6, 0
  br i1 %tobool29.not, label %do.body28.if.end39_crit_edge, label %do.end33

do.body28.if.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.2, i32 noundef %call25) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end33, %do.body28.if.end39_crit_edge, %if.end23.if.end39_crit_edge
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %call41 = tail call i32 @picolcd_resume_backlight(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.if.end55_crit_edge, label %do.body44

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body44:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %9 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool45.not = icmp eq i32 %9, 0
  br i1 %tobool45.not, label %do.body44.if.end55_crit_edge, label %do.end49

do.body44.if.end55_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.2, i32 noundef %call41) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %do.body44.if.end55_crit_edge, %if.end39.if.end55_crit_edge
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @picolcd_leds_set(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_operation_mode_delay_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %opmode_delay = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %opmode_delay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %opmode_delay, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.47, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_operation_mode_delay_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #6 align 64 {
entry:
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #9
  %2 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %u, align 4, !annotation !170
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.48, ptr noundef nonnull %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %4)
  %cmp2 = icmp ugt i32 %4, 30000
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %4 to i16
  %opmode_delay = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %opmode_delay to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %opmode_delay, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @picolcd_operation_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.50, i32 18)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.51, i32 18)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_operation_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %opmode_delay = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %opmode_delay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %opmode_delay, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.52) #9
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %report_list.i = getelementptr %struct.hid_device, ptr %7, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then2
  %report.0.in.i = phi ptr [ %report_list.i, %if.then2 ], [ %report.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %report.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %report.0.i = load ptr, ptr %report.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %report.0.i, %report_list.i
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr inbounds %struct.hid_report, ptr %report.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %10, 255
  br i1 %cmp2.i, label %for.body.i.if.end15_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end15_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, i32 noundef 255) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.53) #9
  br i1 %call4, label %if.then5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.else
  %status6 = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status6, align 4
  %and7 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %report_list.i60 = getelementptr %struct.hid_device, ptr %14, i32 0, i32 15, i32 1, i32 1
  br label %for.cond.i64

for.cond.i64:                                     ; preds = %for.body.i67.for.cond.i64_crit_edge, %if.then9
  %report.0.in.i61 = phi ptr [ %report_list.i60, %if.then9 ], [ %report.0.i62, %for.body.i67.for.cond.i64_crit_edge ]
  %15 = ptrtoint ptr %report.0.in.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %report.0.i62 = load ptr, ptr %report.0.in.i61, align 4
  %cmp.not.i63 = icmp eq ptr %report.0.i62, %report_list.i60
  br i1 %cmp.not.i63, label %do.end.i69, label %for.body.i67

for.body.i67:                                     ; preds = %for.cond.i64
  %id1.i65 = getelementptr inbounds %struct.hid_report, ptr %report.0.i62, i32 0, i32 2
  %16 = ptrtoint ptr %id1.i65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id1.i65, align 4
  %cmp2.i66 = icmp eq i32 %17, 239
  br i1 %cmp2.i66, label %for.body.i67.if.end15_crit_edge, label %for.body.i67.for.cond.i64_crit_edge

for.body.i67.for.cond.i64_crit_edge:              ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i64

for.body.i67.if.end15_crit_edge:                  ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end.i69:                                       ; preds = %for.cond.i64
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i68 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i68, ptr noundef nonnull @.str, i32 noundef 239) #12
  br label %cleanup

if.end15:                                         ; preds = %for.body.i67.if.end15_crit_edge, %for.body.i.if.end15_crit_edge
  %report.0 = phi ptr [ %report.0.i, %for.body.i.if.end15_crit_edge ], [ %report.0.i62, %for.body.i67.if.end15_crit_edge ]
  %tobool16.not = icmp eq ptr %report.0, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %lor.lhs.false

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end15
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report.0, i32 0, i32 6
  %18 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not = icmp eq i32 %19, 1
  br i1 %cmp.not, label %do.body20, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body20:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %1, i32 0, i32 20
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %field = getelementptr inbounds %struct.hid_report, ptr %report.0, i32 0, i32 5
  %20 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field, align 4
  %and27 = and i32 %conv, 255
  %call28 = tail call i32 @hid_set_field(ptr noundef %21, i32 noundef 0, i32 noundef %and27) #9
  %22 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %field, align 4
  %24 = lshr i32 %conv, 8
  %call32 = tail call i32 @hid_set_field(ptr noundef %23, i32 noundef 1, i32 noundef %24) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 18, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %28, ptr noundef %26, ptr noundef nonnull %report.0) #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void @hid_hw_request(ptr noundef %30, ptr noundef nonnull %report.0, i32 noundef 9) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %lor.lhs.false.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end.i69, %if.then5.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %do.body20 ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end.i69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_init_devfs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_init_cir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_init_framebuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_init_lcd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_init_backlight(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_init_leds(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_exit_leds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_exit_backlight(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_exit_lcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_exit_framebuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_exit_cir(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_exit_devfs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_raw_cir(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_debug_raw_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_suspend_backlight(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @picolcd_fb_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-picolcd_core.c", i32 62, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @picolcd_report._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @picolcd_report._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_hid_picolcd__301_657_picolcd_driver_init6, !9, !"__initcall__kmod_hid_picolcd__301_657_picolcd_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-picolcd_core.c", i32 657, i32 1}
!10 = !{ptr @__exitcall_picolcd_driver_exit, !9, !"__exitcall_picolcd_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description302, !12, !"__UNIQUE_ID_description302", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-picolcd_core.c", i32 659, i32 1}
!13 = !{ptr @__UNIQUE_ID_file303, !14, !"__UNIQUE_ID_file303", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-picolcd_core.c", i32 660, i32 1}
!15 = !{ptr @__UNIQUE_ID_license304, !14, !"__UNIQUE_ID_license304", i1 false, i1 false}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-picolcd_core.c", i32 191, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @picolcd_check_version._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @picolcd_check_version._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-picolcd_core.c", i32 199, i32 4}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @picolcd_check_version._entry.9, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @picolcd_check_version._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-picolcd_core.c", i32 202, i32 4}
!32 = !{ptr @picolcd_check_version._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @picolcd_check_version._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-picolcd_core.c", i32 206, i32 3}
!36 = !{ptr @picolcd_check_version._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @picolcd_check_version._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !9, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-picolcd_core.c", i32 646, i32 19}
!41 = !{ptr @picolcd_driver, !42, !"picolcd_driver", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-picolcd_core.c", i32 645, i32 26}
!43 = !{ptr @picolcd_devices, !44, !"picolcd_devices", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-picolcd_core.c", i32 638, i32 35}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-picolcd_core.c", i32 527, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @picolcd_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @picolcd_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-picolcd_core.c", i32 535, i32 3}
!52 = !{ptr @picolcd_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @picolcd_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @picolcd_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-picolcd_core.c", i32 539, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @picolcd_probe.__key.27, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-picolcd_core.c", i32 540, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-picolcd_core.c", i32 550, i32 3}
!62 = !{ptr @picolcd_probe._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @picolcd_probe._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-picolcd_core.c", i32 556, i32 3}
!66 = !{ptr @picolcd_probe._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @picolcd_probe._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-picolcd_core.c", i32 562, i32 3}
!70 = !{ptr @picolcd_probe._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @picolcd_probe._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-picolcd_core.c", i32 568, i32 3}
!74 = !{ptr @picolcd_probe._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @picolcd_probe._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @picolcd_probe._entry.41, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-picolcd_core.c", i32 574, i32 3}
!78 = !{ptr @picolcd_probe._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-picolcd_core.c", i32 585, i32 2}
!81 = !{ptr @picolcd_probe._entry.43, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @picolcd_probe._entry_ptr.45, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-picolcd_core.c", i32 321, i32 8}
!85 = !{ptr @dev_attr_operation_mode_delay, !84, !"dev_attr_operation_mode_delay", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-picolcd_core.c", i32 304, i32 34}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-picolcd_core.c", i32 312, i32 18}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-picolcd_core.c", i32 293, i32 8}
!92 = !{ptr @dev_attr_operation_mode, !91, !"dev_attr_operation_mode", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-picolcd_core.c", i32 259, i32 35}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-picolcd_core.c", i32 261, i32 35}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hid/hid-picolcd_core.c", i32 272, i32 23}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-picolcd_core.c", i32 275, i32 30}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-picolcd_core.c", i32 418, i32 3}
!103 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @picolcd_init_keys._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @picolcd_init_keys._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-picolcd_core.c", i32 424, i32 3}
!108 = !{ptr @picolcd_init_keys._entry.56, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @picolcd_init_keys._entry_ptr.58, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-picolcd_core.c", i32 446, i32 3}
!112 = !{ptr @picolcd_init_keys._entry.59, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @picolcd_init_keys._entry_ptr.61, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @def_keymap, !115, !"def_keymap", i1 false, i1 false}
!115 = !{!"../drivers/hid/hid-picolcd_core.c", i32 31, i32 29}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-picolcd_core.c", i32 606, i32 2}
!118 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @picolcd_remove._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @picolcd_remove._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-picolcd_core.c", i32 337, i32 3}
!123 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @picolcd_raw_event._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @picolcd_raw_event._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-picolcd_core.c", i32 145, i32 4}
!128 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @picolcd_raw_keypad._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @picolcd_raw_keypad._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hid/hid-picolcd_core.c", i32 168, i32 4}
!133 = !{ptr @picolcd_raw_keypad._entry.69, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @picolcd_raw_keypad._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-picolcd_core.c", i32 373, i32 2}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @picolcd_suspend._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @picolcd_suspend._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hid/hid-picolcd_core.c", i32 382, i32 3}
!142 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @picolcd_resume._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @picolcd_resume._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hid/hid-picolcd_core.c", i32 391, i32 3}
!147 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @picolcd_reset_resume._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @picolcd_reset_resume._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hid/hid-picolcd_core.c", i32 394, i32 3}
!152 = !{ptr @picolcd_reset_resume._entry.78, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @picolcd_reset_resume._entry_ptr.80, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hid/hid-picolcd_core.c", i32 397, i32 3}
!156 = !{ptr @picolcd_reset_resume._entry.81, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @picolcd_reset_resume._entry_ptr.83, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @picolcd_reset_resume._entry.84, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/hid/hid-picolcd_core.c", i32 400, i32 3}
!160 = !{ptr @picolcd_reset_resume._entry_ptr.85, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
