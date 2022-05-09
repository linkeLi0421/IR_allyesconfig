; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-appleir.c_pt.bc'
source_filename = "../drivers/hid/hid-appleir.c"
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
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.appleir = type { ptr, ptr, [17 x i16], %struct.timer_list, %struct.spinlock, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }

@__UNIQUE_ID_author223 = internal constant [34 x i8] c"hid_appleir.author=James McKenzie\00", section ".modinfo", align 1
@__UNIQUE_ID_author224 = internal constant [70 x i8] c"hid_appleir.author=Benjamin Tissoires <benjamin.tissoires@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [53 x i8] c"hid_appleir.description=HID Apple IR remote controls\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [41 x i8] c"hid_appleir.file=drivers/hid/hid-appleir\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [24 x i8] c"hid_appleir.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_hid_appleir__228_344_appleir_driver_init6 = internal global ptr @appleir_driver_init, section ".initcall6.init", align 4
@appleir_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @appleir_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @appleir_probe, ptr @appleir_remove, ptr null, ptr @appleir_raw_event, ptr null, ptr null, ptr null, ptr null, ptr @appleir_input_mapping, ptr null, ptr @appleir_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_appleir_driver_exit = internal global ptr @appleir_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_appleir\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"appleir\00", [24 x i8] zeroinitializer }, align 32
@appleir_devices = internal constant { [6 x %struct.hid_device_id], [32 x i8] } { [6 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33344, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 5184, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33345, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33346, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33347, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@appleir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&appleir->lock\00", [17 x i8] zeroinitializer }, align 32
@appleir_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&appleir->key_up_timer)\00", [39 x i8] zeroinitializer }, align 32
@appleir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 302, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"appleir_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-appleir.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@appleir_probe._entry_ptr = internal global ptr @appleir_probe._entry, section ".printk_index", align 4
@appleir_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 308, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@appleir_probe._entry_ptr.12 = internal global ptr @appleir_probe._entry.10, section ".printk_index", align 4
@appleir_raw_event.keydown = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%\87\EE", [29 x i8] zeroinitializer }, align 32
@appleir_raw_event.flatbattery = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%\87\E0", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@battery_flat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 165, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"possible flat battery?\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"battery_flat\00", [19 x i8] zeroinitializer }, align 32
@battery_flat._entry_ptr = internal global ptr @battery_flat._entry, section ".printk_index", align 4
@appleir_key_table = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 0, i16 139, i16 164, i16 159, i16 158, i16 115, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 28, i16 164, i16 0], [62 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"appleir_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 335, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 344, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 336, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"appleir_devices\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 325, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 295, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 296, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 302, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 308, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"keydown\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 186, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"flatbattery\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 188, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 165, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"appleir_key_table\00", align 1
@___asan_gen_.79 = private constant [29 x i8] c"../drivers/hid/hid-appleir.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 29 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_appleir_driver_exit, ptr @__initcall__kmod_hid_appleir__228_344_appleir_driver_init6, ptr @appleir_driver_exit, ptr @appleir_probe._entry, ptr @appleir_probe._entry.10, ptr @appleir_probe._entry_ptr, ptr @appleir_probe._entry_ptr.12, ptr @battery_flat._entry, ptr @battery_flat._entry_ptr, ptr @appleir_driver, ptr @.str, ptr @.str.1, ptr @appleir_devices, ptr @appleir_probe.__key, ptr @.str.2, ptr @appleir_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @appleir_raw_event.keydown, ptr @appleir_raw_event.flatbattery, ptr @.str.13, ptr @.str.14, ptr @appleir_key_table], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_devices to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_raw_event.keydown to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_raw_event.flatbattery to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @battery_flat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @appleir_key_table to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @appleir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @appleir_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @appleir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @appleir_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appleir_probe(ptr noundef %hid, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hid1 = getelementptr inbounds %struct.appleir, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %hid1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hid, ptr %hid1, align 4
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 34
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %quirks, align 8
  %or = or i32 %2, 128
  store i32 %or, ptr %quirks, align 8
  %lock = getelementptr inbounds %struct.appleir, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @appleir_probe.__key, i16 noundef signext 3) #6
  %key_up_timer = getelementptr inbounds %struct.appleir, ptr %call.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %key_up_timer, ptr noundef nonnull @key_up_tick, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @appleir_probe.__key.3) #6
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i39 = tail call i32 @hid_open_report(ptr noundef %hid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool7.not = icmp eq i32 %call.i39, 0
  br i1 %tobool7.not, label %if.end13, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @hid_hw_start(ptr noundef %hid, i32 noundef 61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end13.fail_crit_edge

if.end13.fail_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail:                                             ; preds = %if.end13.fail_crit_edge, %if.end.fail_crit_edge
  %.str.11.sink = phi ptr [ @.str.5, %if.end.fail_crit_edge ], [ @.str.11, %if.end13.fail_crit_edge ]
  %ret.0 = phi i32 [ %call.i39, %if.end.fail_crit_edge ], [ %call14, %if.end13.fail_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.11.sink) #9
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @appleir_remove(ptr noundef %hid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hid_hw_stop(ptr noundef %hid) #6
  %key_up_timer = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @del_timer_sync(ptr noundef %key_up_timer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appleir_raw_event(ptr nocapture noundef readonly %hid, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp.not = icmp eq i32 %len, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @appleir_raw_event.keydown, i32 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then2, label %if.end33

if.then2:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %current_key = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %current_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %if.then2.if.end12_crit_edge, label %if.then10

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %3, i32 noundef 0) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then2.if.end12_crit_edge
  %prev_key_idx = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %prev_key_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prev_key_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp sgt i32 %9, 0
  br i1 %cmp13, label %if.end12.if.then22_crit_edge, label %if.else

if.end12.if.then22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.else:                                          ; preds = %if.end12
  %arrayidx = getelementptr i8, ptr %data, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv17 = zext i8 %11 to i32
  %12 = lshr i32 %conv17, 1
  %and.i = and i32 %12, 15
  %and1.i = and i32 %conv17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else.if.then22_crit_edge, label %if.end19

if.else.if.then22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp20 = icmp eq i32 %and.i, 0
  br i1 %cmp20, label %if.end19.if.then22_crit_edge, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %if.else.if.then22_crit_edge, %if.end12.if.then22_crit_edge
  %index.078 = phi i32 [ 0, %if.end19.if.then22_crit_edge ], [ %9, %if.end12.if.then22_crit_edge ], [ %and.i, %if.else.if.then22_crit_edge ]
  %arrayidx23 = getelementptr %struct.appleir, ptr %1, i32 0, i32 2, i32 %index.078
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %14 to i32
  %15 = ptrtoint ptr %current_key to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv24, ptr %current_key, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef %conv24, i32 noundef 1) #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %key_up_timer = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 12
  %call27 = tail call i32 @mod_timer(ptr noundef %key_up_timer, i32 noundef %add) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end19.if.end31_crit_edge
  %storemerge = phi i32 [ 0, %if.then22 ], [ %and.i, %if.end19.if.end31_crit_edge ]
  %21 = ptrtoint ptr %prev_key_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %prev_key_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %prev_key_idx34 = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %prev_key_idx34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %prev_key_idx34, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %lhsc = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %lhsc)
  %tobool36.not = icmp eq i8 %lhsc, 38
  br i1 %tobool36.not, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %current_key38 = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %current_key38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_key38, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef %25, i32 noundef 1) #6
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %key_up_timer39 = getelementptr inbounds %struct.appleir, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add40 = add i32 %30, 12
  %call41 = tail call i32 @mod_timer(ptr noundef %key_up_timer39, i32 noundef %add40) #6
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %bcmp75 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %data, ptr noundef nonnull dereferenceable(3) @appleir_raw_event.flatbattery, i32 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75)
  %tobool44.not = icmp eq i32 %bcmp75, 0
  br i1 %tobool44.not, label %if.then45, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %if.then37, %if.end31, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @appleir_input_mapping(ptr nocapture noundef readnone %hid, ptr nocapture noundef readnone %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readnone %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @appleir_input_configured(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %hidinput) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %3, align 4
  %keymap = getelementptr %struct.appleir, ptr %3, i32 0, i32 2
  %keycode = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %keymap, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 17, ptr %keycodemax, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1048578, ptr %evbit, align 8
  %9 = call ptr @memcpy(ptr %keymap, ptr @appleir_key_table, i32 34)
  %keybit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %keybit) #6
  %arrayidx5.1 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx5.1, align 2
  %conv.1 = zext i16 %11 to i32
  tail call void @_set_bit(i32 noundef %conv.1, ptr noundef %keybit) #6
  %arrayidx5.2 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5.2, align 2
  %conv.2 = zext i16 %13 to i32
  tail call void @_set_bit(i32 noundef %conv.2, ptr noundef %keybit) #6
  %arrayidx5.3 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5.3, align 2
  %conv.3 = zext i16 %15 to i32
  tail call void @_set_bit(i32 noundef %conv.3, ptr noundef %keybit) #6
  %arrayidx5.4 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5.4, align 2
  %conv.4 = zext i16 %17 to i32
  tail call void @_set_bit(i32 noundef %conv.4, ptr noundef %keybit) #6
  %arrayidx5.5 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.5, align 2
  %conv.5 = zext i16 %19 to i32
  tail call void @_set_bit(i32 noundef %conv.5, ptr noundef %keybit) #6
  %arrayidx5.6 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx5.6, align 2
  %conv.6 = zext i16 %21 to i32
  tail call void @_set_bit(i32 noundef %conv.6, ptr noundef %keybit) #6
  %arrayidx5.7 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx5.7, align 2
  %conv.7 = zext i16 %23 to i32
  tail call void @_set_bit(i32 noundef %conv.7, ptr noundef %keybit) #6
  %arrayidx5.8 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx5.8, align 2
  %conv.8 = zext i16 %25 to i32
  tail call void @_set_bit(i32 noundef %conv.8, ptr noundef %keybit) #6
  %arrayidx5.9 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %arrayidx5.9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx5.9, align 2
  %conv.9 = zext i16 %27 to i32
  tail call void @_set_bit(i32 noundef %conv.9, ptr noundef %keybit) #6
  %arrayidx5.10 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %arrayidx5.10 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx5.10, align 2
  %conv.10 = zext i16 %29 to i32
  tail call void @_set_bit(i32 noundef %conv.10, ptr noundef %keybit) #6
  %arrayidx5.11 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 11
  %30 = ptrtoint ptr %arrayidx5.11 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx5.11, align 2
  %conv.11 = zext i16 %31 to i32
  tail call void @_set_bit(i32 noundef %conv.11, ptr noundef %keybit) #6
  %arrayidx5.12 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 12
  %32 = ptrtoint ptr %arrayidx5.12 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx5.12, align 2
  %conv.12 = zext i16 %33 to i32
  tail call void @_set_bit(i32 noundef %conv.12, ptr noundef %keybit) #6
  %arrayidx5.13 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 13
  %34 = ptrtoint ptr %arrayidx5.13 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx5.13, align 2
  %conv.13 = zext i16 %35 to i32
  tail call void @_set_bit(i32 noundef %conv.13, ptr noundef %keybit) #6
  %arrayidx5.14 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 14
  %36 = ptrtoint ptr %arrayidx5.14 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx5.14, align 2
  %conv.14 = zext i16 %37 to i32
  tail call void @_set_bit(i32 noundef %conv.14, ptr noundef %keybit) #6
  %arrayidx5.15 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 15
  %38 = ptrtoint ptr %arrayidx5.15 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx5.15, align 2
  %conv.15 = zext i16 %39 to i32
  tail call void @_set_bit(i32 noundef %conv.15, ptr noundef %keybit) #6
  %arrayidx5.16 = getelementptr %struct.appleir, ptr %3, i32 0, i32 2, i32 16
  %40 = ptrtoint ptr %arrayidx5.16 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx5.16, align 2
  %conv.16 = zext i16 %41 to i32
  tail call void @_set_bit(i32 noundef %conv.16, ptr noundef %keybit) #6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %keybit) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @key_up_tick(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 48
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %current_key = getelementptr i8, ptr %t, i32 92
  %0 = ptrtoint ptr %current_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %t, i32 -44
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %1, i32 noundef 0) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %6 = ptrtoint ptr %current_key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %current_key, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-appleir.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author224, !3, !"__UNIQUE_ID_author224", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-appleir.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_description225, !5, !"__UNIQUE_ID_description225", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-appleir.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_file226, !7, !"__UNIQUE_ID_file226", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-appleir.c", i32 26, i32 1}
!8 = !{ptr @__UNIQUE_ID_license227, !7, !"__UNIQUE_ID_license227", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_hid_appleir__228_344_appleir_driver_init6, !10, !"__initcall__kmod_hid_appleir__228_344_appleir_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-appleir.c", i32 344, i32 1}
!11 = !{ptr @__exitcall_appleir_driver_exit, !10, !"__exitcall_appleir_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-appleir.c", i32 336, i32 10}
!15 = !{ptr @appleir_driver, !16, !"appleir_driver", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-appleir.c", i32 335, i32 26}
!17 = !{ptr @appleir_devices, !18, !"appleir_devices", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-appleir.c", i32 325, i32 35}
!19 = !{ptr @appleir_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-appleir.c", i32 295, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @appleir_probe.__key.3, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-appleir.c", i32 296, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-appleir.c", i32 302, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @appleir_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @appleir_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-appleir.c", i32 308, i32 3}
!35 = !{ptr @appleir_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @appleir_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @appleir_raw_event.keydown, !38, !"keydown", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-appleir.c", i32 186, i32 18}
!39 = distinct !{null, !40, !"keyrepeat", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-appleir.c", i32 187, i32 18}
!41 = !{ptr @appleir_raw_event.flatbattery, !42, !"flatbattery", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-appleir.c", i32 188, i32 18}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-appleir.c", i32 165, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @battery_flat._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @battery_flat._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @appleir_key_table, !49, !"appleir_key_table", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-appleir.c", i32 87, i32 29}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
