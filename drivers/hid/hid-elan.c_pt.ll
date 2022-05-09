; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-elan.c_pt.bc'
source_filename = "../drivers/hid/hid-elan.c"
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
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.elan_drvdata = type { ptr, [8 x i8], %struct.led_classdev, i8, i16, i16, i16, i16 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_hid_elan__232_537_elan_driver_init6 = internal global ptr @elan_driver_init, section ".initcall6.init", align 4
@elan_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @elan_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @elan_probe, ptr @elan_remove, ptr null, ptr @elan_raw_event, ptr null, ptr null, ptr null, ptr null, ptr @elan_input_mapping, ptr null, ptr @elan_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_elan_driver_exit = internal global ptr @elan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [35 x i8] c"hid_elan.file=drivers/hid/hid-elan\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [21 x i8] c"hid_elan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [37 x i8] c"hid_elan.author=Alexandrov Stanislav\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [51 x i8] c"hid_elan.description=Driver for HID ELAN Touchpads\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_elan\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"elan\00", [27 x i8] zeroinitializer }, align 32
@elan_devices = internal constant { [4 x %struct.hid_device_id], [32 x i8] } { [4 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1267, i32 1869, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 1877, i32 1 }, %struct.hid_device_id { i16 24, i16 0, i32 1267, i32 1025, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@elan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hid Parse failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"elan_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-elan.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr = internal global ptr @elan_probe._entry, section ".printk_index", align 4
@elan_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Hid hw start failed\0A\00", [43 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.9 = internal global ptr @elan_probe._entry.7, section ".printk_index", align 4
@elan_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Input device is not registered\0A\00", [32 x i8] zeroinitializer }, align 32
@elan_probe._entry_ptr.12 = internal global ptr @elan_probe._entry.10, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@elan_start_multitouch.buf = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0D\00\03!\00", [27 x i8] zeroinitializer }, align 32
@elan_start_multitouch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 406, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to start multitouch: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"elan_start_multitouch\00", [42 x i8] zeroinitializer }, align 32
@elan_start_multitouch._entry_ptr = internal global ptr @elan_start_multitouch._entry, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"elan:red:mute\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio-mute\00", [21 x i8] zeroinitializer }, align 32
@elan_mute_led_set_brigtness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to set mute led brightness: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"elan_mute_led_set_brigtness\00", [36 x i8] zeroinitializer }, align 32
@elan_mute_led_set_brigtness._entry_ptr = internal global ptr @elan_mute_led_set_brigtness._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Elan Touchpad\00", [18 x i8] zeroinitializer }, align 32
@elan_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to init elan MT slots: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"elan_input_configured\00", [42 x i8] zeroinitializer }, align 32
@elan_input_configured._entry_ptr = internal global ptr @elan_input_configured._entry, section ".printk_index", align 4
@elan_input_configured._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to register elan input device: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@elan_input_configured._entry_ptr.24 = internal global ptr @elan_input_configured._entry.22, section ".printk_index", align 4
@elan_get_device_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 94, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Set report error for parm %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"elan_get_device_param\00", [42 x i8] zeroinitializer }, align 32
@elan_get_device_param._entry_ptr = internal global ptr @elan_get_device_param._entry, section ".printk_index", align 4
@elan_get_device_param._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Get report error for parm %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@elan_get_device_param._entry_ptr.29 = internal global ptr @elan_get_device_param._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 130, i64 131]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 93, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 4294967277]
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"elan_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 527, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 537, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 528, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"elan_devices\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 517, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 477, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 483, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 491, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 394, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 406, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 453, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 454, i32 30 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 440, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 169, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 190, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 200, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 94, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [26 x i8] c"../drivers/hid/hid-elan.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 102, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_elan_driver_exit, ptr @__initcall__kmod_hid_elan__232_537_elan_driver_init6, ptr @elan_driver_exit, ptr @elan_get_device_param._entry, ptr @elan_get_device_param._entry.27, ptr @elan_get_device_param._entry_ptr, ptr @elan_get_device_param._entry_ptr.29, ptr @elan_input_configured._entry, ptr @elan_input_configured._entry.22, ptr @elan_input_configured._entry_ptr, ptr @elan_input_configured._entry_ptr.24, ptr @elan_mute_led_set_brigtness._entry, ptr @elan_mute_led_set_brigtness._entry_ptr, ptr @elan_probe._entry, ptr @elan_probe._entry.10, ptr @elan_probe._entry.7, ptr @elan_probe._entry_ptr, ptr @elan_probe._entry_ptr.12, ptr @elan_probe._entry_ptr.9, ptr @elan_start_multitouch._entry, ptr @elan_start_multitouch._entry_ptr, ptr @elan_driver, ptr @.str, ptr @.str.1, ptr @elan_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @elan_start_multitouch.buf, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_start_multitouch.buf to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_start_multitouch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_mute_led_set_brigtness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_input_configured._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_get_device_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_get_device_param._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @elan_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @elan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @elan_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 424, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i55 = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool2.not = icmp eq i32 %call.i55, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %ll_driver.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %1 = ptrtoint ptr %ll_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ll_driver.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %2, @usb_hid_driver
  br i1 %cmp.i.i.i, label %is_not_elan_touchpad.exit, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

is_not_elan_touchpad.exit:                        ; preds = %if.end13
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -32
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i.not = icmp eq i8 %8, 1
  br i1 %cmp.i.not, label %is_not_elan_touchpad.exit.if.end17_crit_edge, label %is_not_elan_touchpad.exit.cleanup_crit_edge

is_not_elan_touchpad.exit.cleanup_crit_edge:      ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

is_not_elan_touchpad.exit.if.end17_crit_edge:     ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %is_not_elan_touchpad.exit.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %err

if.end24:                                         ; preds = %if.end17
  %call.i56 = tail call ptr @kmemdup(ptr noundef nonnull @elan_start_multitouch.buf, i32 noundef 5, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i, label %if.end24.err_crit_edge, label %if.end.i

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i:                                         ; preds = %if.end24
  %11 = ptrtoint ptr %call.i56 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i56, align 1
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %12, ptr noundef nonnull %call.i56, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #6
  tail call void @kfree(ptr noundef nonnull %call.i56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 5
  br i1 %cmp.not.i, label %if.end.i.if.end28_crit_edge, label %elan_start_multitouch.exit

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

elan_start_multitouch.exit:                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool26.not = icmp eq i32 %call1.i, 0
  br i1 %tobool26.not, label %elan_start_multitouch.exit.if.end28_crit_edge, label %elan_start_multitouch.exit.err_crit_edge

elan_start_multitouch.exit.err_crit_edge:         ; preds = %elan_start_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

elan_start_multitouch.exit.if.end28_crit_edge:    ; preds = %elan_start_multitouch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %elan_start_multitouch.exit.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %mute_led1.i = getelementptr inbounds %struct.elan_drvdata, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mute_led1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.15, ptr %mute_led1.i, align 4
  %default_trigger.i = getelementptr inbounds %struct.elan_drvdata, ptr %16, i32 0, i32 2, i32 14
  %18 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.16, ptr %default_trigger.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.elan_drvdata, ptr %16, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @elan_mute_led_set_brigtness, ptr %brightness_set_blocking.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.elan_drvdata, ptr %16, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %max_brightness.i, align 4
  %flags.i = getelementptr inbounds %struct.elan_drvdata, ptr %16, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 524288, ptr %flags.i, align 4
  %dev2.i = getelementptr inbounds %struct.elan_drvdata, ptr %16, i32 0, i32 2, i32 11
  %22 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev2.i, align 4
  %call.i.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %mute_led1.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool32.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool32.not, label %if.then30.cleanup_crit_edge, label %if.then30.err_crit_edge

if.then30.err_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err:                                              ; preds = %if.then30.err_crit_edge, %elan_start_multitouch.exit.err_crit_edge, %if.end24.err_crit_edge, %do.end22
  %ret.0 = phi i32 [ %call1.i, %elan_start_multitouch.exit.err_crit_edge ], [ %call.i.i, %if.then30.err_crit_edge ], [ -119, %do.end22 ], [ -12, %if.end24.err_crit_edge ]
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then30.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %is_not_elan_touchpad.exit.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i55, %do.end ], [ %call6, %do.end11 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %is_not_elan_touchpad.exit.cleanup_crit_edge ], [ 0, %if.then30.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @elan_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ll_driver.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %2 = ptrtoint ptr %ll_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll_driver.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @usb_hid_driver
  br i1 %cmp.i.i.i, label %is_not_elan_touchpad.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

is_not_elan_touchpad.exit:                        ; preds = %entry
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -32
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i.not = icmp eq i8 %9, 1
  br i1 %cmp.i.not, label %is_not_elan_touchpad.exit.if.end_crit_edge, label %is_not_elan_touchpad.exit.cleanup_crit_edge

is_not_elan_touchpad.exit.cleanup_crit_edge:      ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

is_not_elan_touchpad.exit.if.end_crit_edge:       ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %is_not_elan_touchpad.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %.off = add i8 %11, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp13 = icmp eq i32 %size, 8
  %or.cond34 = and i1 %cmp13, %switch
  br i1 %or.cond34, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %11)
  %cmp.i35 = icmp eq i8 %11, -127
  br i1 %cmp.i35, label %for.cond.preheader.i, label %if.then15.if.end11.i_crit_edge

if.then15.if.end11.i_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

for.cond.preheader.i:                             ; preds = %if.then15
  %arrayidx5.i = getelementptr i8, ptr %data, i32 2
  %add.ptr.i36 = getelementptr i8, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5.i, align 1
  %16 = and i8 %15, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr.i36, i32 noundef 0) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %13, i32 noundef 3, i32 noundef 47, i32 noundef 0) #6
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %13, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then7.i
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx5.i, align 1
  %19 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1.i = icmp eq i8 %19, 0
  br i1 %tobool.not.1.i, label %if.else.1.i, label %if.then7.1.i

if.then7.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr.i36, i32 noundef 1) #6
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 47, i32 noundef 1) #6
  %call.i.1.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %21, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then7.1.i
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5.i, align 1
  %24 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.2.i = icmp eq i8 %24, 0
  br i1 %tobool.not.2.i, label %if.else.2.i, label %if.then7.2.i

if.then7.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr.i36, i32 noundef 2) #6
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 47, i32 noundef 2) #6
  %call.i.2.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %26, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else.2.i, %if.then7.2.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.i, align 1
  %29 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.3.i = icmp eq i8 %29, 0
  br i1 %tobool.not.3.i, label %if.else.3.i, label %if.then7.3.i

if.then7.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr.i36, i32 noundef 3) #6
  br label %for.inc.3.i

if.else.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 47, i32 noundef 3) #6
  %call.i.3.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %31, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else.3.i, %if.then7.3.i
  %32 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %tobool.not.4.i = icmp sgt i8 %33, -1
  br i1 %tobool.not.4.i, label %if.else.4.i, label %if.then7.4.i

if.then7.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr.i36, i32 noundef 4) #6
  br label %for.inc.4.i

if.else.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %35, i32 noundef 3, i32 noundef 47, i32 noundef 4) #6
  %call.i.4.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %35, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.else.4.i, %if.then7.4.i
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx5.i, align 1
  %38 = and i8 %37, 1
  %39 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %13, i32 noundef 1, i32 noundef 272, i32 noundef %39) #6
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %.pr.i = load i8, ptr %data, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %for.inc.4.i, %if.then15.if.end11.i_crit_edge
  %41 = phi i8 [ %.pr.i, %for.inc.4.i ], [ %11, %if.then15.if.end11.i_crit_edge ]
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %41, label %if.end11.i.if.end58.i_crit_edge [
    i8 -126, label %if.then16.i
    i8 -125, label %if.then22.i
  ]

if.end11.i.if.end58.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev_report.i = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %data, align 1
  %45 = ptrtoint ptr %prev_report.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %44, ptr %prev_report.i, align 4
  br label %cleanup

if.then22.i:                                      ; preds = %if.end11.i
  %prev_report24.i = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %prev_report24.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %prev_report24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %47)
  %cmp28.not.i = icmp eq i8 %47, -126
  br i1 %cmp28.not.i, label %for.cond32.preheader.i, label %if.then22.i.cleanup_crit_edge

if.then22.i.cleanup_crit_edge:                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond32.preheader.i:                           ; preds = %if.then22.i
  %arrayidx36.i = getelementptr %struct.elan_drvdata, ptr %1, i32 0, i32 1, i32 2
  %add.ptr47.i = getelementptr i8, ptr %data, i32 1
  %add.ptr45.i = getelementptr %struct.elan_drvdata, ptr %1, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx36.i, align 1
  %50 = and i8 %49, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool41.not.i = icmp eq i8 %50, 0
  br i1 %tobool41.not.i, label %for.inc51.i, label %for.inc51.thread.i

for.inc51.i:                                      ; preds = %for.cond32.preheader.i
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 47, i32 noundef 0) #6
  %call.i93.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %52, i32 noundef 0, i1 noundef zeroext false) #6
  %53 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx36.i, align 1
  %55 = and i8 %54, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool41.not.1.i = icmp eq i8 %55, 0
  br i1 %tobool41.not.1.i, label %for.inc51.i.if.else49.1.i_crit_edge, label %if.then44.1.i

for.inc51.i.if.else49.1.i_crit_edge:              ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else49.1.i

for.inc51.thread.i:                               ; preds = %for.cond32.preheader.i
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr45.i, i32 noundef 0) #6
  %56 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx36.i, align 1
  %58 = and i8 %57, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool41.not.1103.i = icmp eq i8 %58, 0
  br i1 %tobool41.not.1103.i, label %for.inc51.thread.i.if.else49.1.i_crit_edge, label %if.else46.1.i

for.inc51.thread.i.if.else49.1.i_crit_edge:       ; preds = %for.inc51.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else49.1.i

if.else46.1.i:                                    ; preds = %for.inc51.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr47.i, i32 noundef 1) #6
  br label %for.inc51.1.i

if.then44.1.i:                                    ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr45.i, i32 noundef 1) #6
  br label %for.inc51.1.i

if.else49.1.i:                                    ; preds = %for.inc51.thread.i.if.else49.1.i_crit_edge, %for.inc51.i.if.else49.1.i_crit_edge
  %first.1105.i = phi i32 [ 1, %for.inc51.thread.i.if.else49.1.i_crit_edge ], [ 0, %for.inc51.i.if.else49.1.i_crit_edge ]
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 47, i32 noundef 1) #6
  %call.i93.1.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %60, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc51.1.i

for.inc51.1.i:                                    ; preds = %if.else49.1.i, %if.then44.1.i, %if.else46.1.i
  %first.1.1.i = phi i32 [ 1, %if.else46.1.i ], [ 1, %if.then44.1.i ], [ %first.1105.i, %if.else49.1.i ]
  %61 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx36.i, align 1
  %63 = and i8 %62, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool41.not.2.i = icmp eq i8 %63, 0
  br i1 %tobool41.not.2.i, label %if.else49.2.i, label %if.then42.2.i

if.then42.2.i:                                    ; preds = %for.inc51.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.1.1.i)
  %tobool43.not.2.i = icmp eq i32 %first.1.1.i, 0
  br i1 %tobool43.not.2.i, label %if.then44.2.i, label %if.else46.2.i

if.else46.2.i:                                    ; preds = %if.then42.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr47.i, i32 noundef 2) #6
  br label %for.inc51.2.i

if.then44.2.i:                                    ; preds = %if.then42.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr45.i, i32 noundef 2) #6
  br label %for.inc51.2.i

if.else49.2.i:                                    ; preds = %for.inc51.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %65, i32 noundef 3, i32 noundef 47, i32 noundef 2) #6
  %call.i93.2.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %65, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc51.2.i

for.inc51.2.i:                                    ; preds = %if.else49.2.i, %if.then44.2.i, %if.else46.2.i
  %first.1.2.i = phi i32 [ 1, %if.else46.2.i ], [ 1, %if.then44.2.i ], [ %first.1.1.i, %if.else49.2.i ]
  %66 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx36.i, align 1
  %68 = and i8 %67, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool41.not.3.i = icmp eq i8 %68, 0
  br i1 %tobool41.not.3.i, label %if.else49.3.i, label %if.then42.3.i

if.then42.3.i:                                    ; preds = %for.inc51.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.1.2.i)
  %tobool43.not.3.i = icmp eq i32 %first.1.2.i, 0
  br i1 %tobool43.not.3.i, label %if.then44.3.i, label %if.else46.3.i

if.else46.3.i:                                    ; preds = %if.then42.3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr47.i, i32 noundef 3) #6
  br label %for.inc51.3.i

if.then44.3.i:                                    ; preds = %if.then42.3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr45.i, i32 noundef 3) #6
  br label %for.inc51.3.i

if.else49.3.i:                                    ; preds = %for.inc51.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %70, i32 noundef 3, i32 noundef 47, i32 noundef 3) #6
  %call.i93.3.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %70, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc51.3.i

for.inc51.3.i:                                    ; preds = %if.else49.3.i, %if.then44.3.i, %if.else46.3.i
  %first.1.3.i = phi i32 [ 1, %if.else46.3.i ], [ 1, %if.then44.3.i ], [ %first.1.2.i, %if.else49.3.i ]
  %71 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %tobool41.not.4.i = icmp sgt i8 %72, -1
  br i1 %tobool41.not.4.i, label %if.else49.4.i, label %if.then42.4.i

if.then42.4.i:                                    ; preds = %for.inc51.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.1.3.i)
  %tobool43.not.4.i = icmp eq i32 %first.1.3.i, 0
  br i1 %tobool43.not.4.i, label %if.then44.4.i, label %if.else46.4.i

if.else46.4.i:                                    ; preds = %if.then42.4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr47.i, i32 noundef 4) #6
  br label %for.inc51.4.i

if.then44.4.i:                                    ; preds = %if.then42.4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr45.i, i32 noundef 4) #6
  br label %for.inc51.4.i

if.else49.4.i:                                    ; preds = %for.inc51.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %74, i32 noundef 3, i32 noundef 47, i32 noundef 4) #6
  %call.i93.4.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %74, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc51.4.i

for.inc51.4.i:                                    ; preds = %if.else49.4.i, %if.then44.4.i, %if.else46.4.i
  %75 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx36.i, align 1
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  tail call void @input_event(ptr noundef %13, i32 noundef 1, i32 noundef 272, i32 noundef %78) #6
  br label %if.end58.i

if.end58.i:                                       ; preds = %for.inc51.4.i, %if.end11.i.if.end58.i_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %13) #6
  tail call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %11)
  %cmp20 = icmp eq i8 %11, 93
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %cmp22 = icmp eq i32 %size, 32
  %or.cond = and i1 %cmp22, %cmp20
  br i1 %or.cond, label %if.then24, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end17
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %data, i32 2
  %arrayidx.i = getelementptr i8, ptr %data, i32 1
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i, align 1
  %83 = and i8 %82, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i38 = icmp eq i8 %83, 0
  br i1 %tobool.not.i38, label %if.else.i41, label %if.then.i39

if.then.i39:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %add.ptr.i37, i32 noundef 0) #6
  %add.ptr2.i = getelementptr i8, ptr %data, i32 7
  br label %for.inc.i43

if.else.i41:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %80, i32 noundef 3, i32 noundef 47, i32 noundef 0) #6
  %call.i.i40 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %80, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.i43

for.inc.i43:                                      ; preds = %if.else.i41, %if.then.i39
  %finger_data.1.i = phi ptr [ %add.ptr2.i, %if.then.i39 ], [ %add.ptr.i37, %if.else.i41 ]
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i, align 1
  %86 = and i8 %85, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.1.i42 = icmp eq i8 %86, 0
  br i1 %tobool.not.1.i42, label %if.else.1.i45, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %finger_data.1.i, i32 noundef 1) #6
  %add.ptr2.1.i = getelementptr i8, ptr %finger_data.1.i, i32 5
  br label %for.inc.1.i47

if.else.1.i45:                                    ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %88, i32 noundef 3, i32 noundef 47, i32 noundef 1) #6
  %call.i.1.i44 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %88, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.1.i47

for.inc.1.i47:                                    ; preds = %if.else.1.i45, %if.then.1.i
  %finger_data.1.1.i = phi ptr [ %add.ptr2.1.i, %if.then.1.i ], [ %finger_data.1.i, %if.else.1.i45 ]
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i, align 1
  %91 = and i8 %90, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.2.i46 = icmp eq i8 %91, 0
  br i1 %tobool.not.2.i46, label %if.else.2.i49, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i47
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %finger_data.1.1.i, i32 noundef 2) #6
  %add.ptr2.2.i = getelementptr i8, ptr %finger_data.1.1.i, i32 5
  br label %for.inc.2.i51

if.else.2.i49:                                    ; preds = %for.inc.1.i47
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %93, i32 noundef 3, i32 noundef 47, i32 noundef 2) #6
  %call.i.2.i48 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %93, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.2.i51

for.inc.2.i51:                                    ; preds = %if.else.2.i49, %if.then.2.i
  %finger_data.1.2.i = phi ptr [ %add.ptr2.2.i, %if.then.2.i ], [ %finger_data.1.1.i, %if.else.2.i49 ]
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i, align 1
  %96 = and i8 %95, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.3.i50 = icmp eq i8 %96, 0
  br i1 %tobool.not.3.i50, label %if.else.3.i53, label %if.then.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i51
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %finger_data.1.2.i, i32 noundef 3) #6
  %add.ptr2.3.i = getelementptr i8, ptr %finger_data.1.2.i, i32 5
  br label %for.inc.3.i55

if.else.3.i53:                                    ; preds = %for.inc.2.i51
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %98, i32 noundef 3, i32 noundef 47, i32 noundef 3) #6
  %call.i.3.i52 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %98, i32 noundef 0, i1 noundef zeroext false) #6
  br label %for.inc.3.i55

for.inc.3.i55:                                    ; preds = %if.else.3.i53, %if.then.3.i
  %finger_data.1.3.i = phi ptr [ %add.ptr2.3.i, %if.then.3.i ], [ %finger_data.1.2.i, %if.else.3.i53 ]
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %100)
  %tobool.not.4.i54 = icmp sgt i8 %100, -1
  br i1 %tobool.not.4.i54, label %if.else.4.i57, label %if.then.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i55
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @elan_report_mt_slot(ptr noundef %1, ptr noundef %finger_data.1.3.i, i32 noundef 4) #6
  br label %elan_i2c_report_input.exit

if.else.4.i57:                                    ; preds = %for.inc.3.i55
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %102, i32 noundef 3, i32 noundef 47, i32 noundef 4) #6
  %call.i.4.i56 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %102, i32 noundef 0, i1 noundef zeroext false) #6
  br label %elan_i2c_report_input.exit

elan_i2c_report_input.exit:                       ; preds = %if.else.4.i57, %if.then.4.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i, align 1
  %105 = and i8 %104, 1
  %106 = zext i8 %105 to i32
  tail call void @input_event(ptr noundef %80, i32 noundef 1, i32 noundef 272, i32 noundef %106) #6
  tail call void @input_mt_sync_frame(ptr noundef %80) #6
  tail call void @input_event(ptr noundef %80, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %elan_i2c_report_input.exit, %if.end17.cleanup_crit_edge, %if.end58.i, %if.then22.i.cleanup_crit_edge, %if.then16.i, %is_not_elan_touchpad.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %elan_i2c_report_input.exit ], [ 0, %is_not_elan_touchpad.exit.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 1, %if.then16.i ], [ 1, %if.then22.i.cleanup_crit_edge ], [ 1, %if.end58.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @elan_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readonly %field, ptr nocapture noundef readnone %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i.i, label %is_not_elan_touchpad.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

is_not_elan_touchpad.exit:                        ; preds = %entry
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -32
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i.not = icmp eq i8 %7, 1
  br i1 %cmp.i.not, label %is_not_elan_touchpad.exit.if.end_crit_edge, label %is_not_elan_touchpad.exit.return_crit_edge

is_not_elan_touchpad.exit.return_crit_edge:       ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

is_not_elan_touchpad.exit.if.end_crit_edge:       ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %is_not_elan_touchpad.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %report = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 17
  %8 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %report, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %11, label %if.end13 [
    i32 129, label %if.end.return_crit_edge
    i32 130, label %if.end.return_crit_edge19
    i32 131, label %if.end.return_crit_edge20
    i32 93, label %if.end.return_crit_edge21
  ]

if.end.return_crit_edge21:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge19:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %if.end13, %if.end.return_crit_edge, %if.end.return_crit_edge19, %if.end.return_crit_edge20, %if.end.return_crit_edge21, %is_not_elan_touchpad.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %is_not_elan_touchpad.exit.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ -1, %if.end.return_crit_edge19 ], [ -1, %if.end.return_crit_edge20 ], [ -1, %if.end.return_crit_edge21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_input_configured(ptr noundef %hdev, ptr nocapture noundef readnone %hi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ll_driver.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %2 = ptrtoint ptr %ll_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll_driver.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @usb_hid_driver
  br i1 %cmp.i.i.i, label %is_not_elan_touchpad.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

is_not_elan_touchpad.exit:                        ; preds = %entry
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i90 = getelementptr i8, ptr %5, i32 -32
  %6 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i90, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i.not = icmp eq i8 %9, 1
  br i1 %cmp.i.not, label %is_not_elan_touchpad.exit.if.end_crit_edge, label %is_not_elan_touchpad.exit.cleanup_crit_edge

is_not_elan_touchpad.exit.cleanup_crit_edge:      ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

is_not_elan_touchpad.exit.if.end_crit_edge:       ; preds = %is_not_elan_touchpad.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %is_not_elan_touchpad.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 5) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 13, ptr %call7.i.i, align 8
  %arrayidx1.i.i = getelementptr i8, ptr %call7.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 5, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %call7.i.i, i32 2
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx2.i.i, align 2
  %arrayidx3.i.i = getelementptr i8, ptr %call7.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 6, ptr %arrayidx3.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx4.i.i, align 4
  %call.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 5
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.25, i32 noundef 6, i32 noundef %call.i.i) #9
  br label %elan_get_device_param.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %call5.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5.i.i)
  %cmp6.not.i.i = icmp eq i32 %call5.i.i, 5
  br i1 %cmp6.not.i.i, label %if.end.i.i.if.end5.i_crit_edge, label %do.end11.i.i

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

do.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev12.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i.i, ptr noundef nonnull @.str.28, i32 noundef 6, i32 noundef %call5.i.i) #9
  br label %elan_get_device_param.exit.i

elan_get_device_param.exit.i:                     ; preds = %do.end11.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %call5.i.i, %do.end11.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool3.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool3.not.i, label %elan_get_device_param.exit.i.if.end5.i_crit_edge, label %elan_get_device_param.exit.i.elan_get_device_params.exit_crit_edge

elan_get_device_param.exit.i.elan_get_device_params.exit_crit_edge: ; preds = %elan_get_device_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elan_get_device_params.exit

elan_get_device_param.exit.i.if.end5.i_crit_edge: ; preds = %elan_get_device_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %elan_get_device_param.exit.i.if.end5.i_crit_edge, %if.end.i.i.if.end5.i_crit_edge
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i.i, align 4
  %conv.i = zext i8 %17 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %18 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i.i, align 1
  %conv7.i = zext i8 %19 to i16
  %or.i91 = or i16 %shl.i, %conv7.i
  %max_x.i = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %max_x.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or.i91, ptr %max_x.i, align 2
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 13, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %arrayidx1.i.i, align 1
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %arrayidx2.i.i, align 2
  store i8 7, ptr %arrayidx3.i.i, align 1
  store i8 1, ptr %arrayidx4.i.i, align 4
  %call.i55.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i55.i)
  %cmp.not.i56.i = icmp eq i32 %call.i55.i, 5
  br i1 %cmp.not.i56.i, label %if.end.i61.i, label %do.end.i58.i

do.end.i58.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i57.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i57.i, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef %call.i55.i) #9
  br label %elan_get_device_param.exit65.i

if.end.i61.i:                                     ; preds = %if.end5.i
  %call5.i59.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5.i59.i)
  %cmp6.not.i60.i = icmp eq i32 %call5.i59.i, 5
  br i1 %cmp6.not.i60.i, label %if.end.i61.i.if.end12.i_crit_edge, label %do.end11.i63.i

if.end.i61.i.if.end12.i_crit_edge:                ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

do.end11.i63.i:                                   ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev12.i62.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i62.i, ptr noundef nonnull @.str.28, i32 noundef 7, i32 noundef %call5.i59.i) #9
  br label %elan_get_device_param.exit65.i

elan_get_device_param.exit65.i:                   ; preds = %do.end11.i63.i, %do.end.i58.i
  %retval.0.i64.i = phi i32 [ %call.i55.i, %do.end.i58.i ], [ %call5.i59.i, %do.end11.i63.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64.i)
  %tobool10.not.i = icmp eq i32 %retval.0.i64.i, 0
  br i1 %tobool10.not.i, label %elan_get_device_param.exit65.i.if.end12.i_crit_edge, label %elan_get_device_param.exit65.i.elan_get_device_params.exit_crit_edge

elan_get_device_param.exit65.i.elan_get_device_params.exit_crit_edge: ; preds = %elan_get_device_param.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elan_get_device_params.exit

elan_get_device_param.exit65.i.if.end12.i_crit_edge: ; preds = %elan_get_device_param.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %elan_get_device_param.exit65.i.if.end12.i_crit_edge, %if.end.i61.i.if.end12.i_crit_edge
  %24 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.i.i, align 4
  %conv14.i = zext i8 %25 to i16
  %shl15.i = shl nuw i16 %conv14.i, 8
  %26 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx3.i.i, align 1
  %conv17.i = zext i8 %27 to i16
  %or18.i = or i16 %shl15.i, %conv17.i
  %max_y.i = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %max_y.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or18.i, ptr %max_y.i, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 13, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %arrayidx1.i.i, align 1
  %31 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %arrayidx2.i.i, align 2
  store i8 8, ptr %arrayidx3.i.i, align 1
  store i8 1, ptr %arrayidx4.i.i, align 4
  %call.i70.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i70.i)
  %cmp.not.i71.i = icmp eq i32 %call.i70.i, 5
  br i1 %cmp.not.i71.i, label %if.end.i76.i, label %do.end.i73.i

do.end.i73.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i72.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i72.i, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %call.i70.i) #9
  br label %elan_get_device_param.exit80.i

if.end.i76.i:                                     ; preds = %if.end12.i
  %call5.i74.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 13, ptr noundef nonnull %call7.i.i, i32 noundef 5, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5.i74.i)
  %cmp6.not.i75.i = icmp eq i32 %call5.i74.i, 5
  br i1 %cmp6.not.i75.i, label %if.end.i76.i.elan_get_device_params.exit.thread106_crit_edge, label %do.end11.i78.i

if.end.i76.i.elan_get_device_params.exit.thread106_crit_edge: ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elan_get_device_params.exit.thread106

do.end11.i78.i:                                   ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev12.i77.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i77.i, ptr noundef nonnull @.str.28, i32 noundef 8, i32 noundef %call5.i74.i) #9
  br label %elan_get_device_param.exit80.i

elan_get_device_param.exit80.i:                   ; preds = %do.end11.i78.i, %do.end.i73.i
  %retval.0.i79.i = phi i32 [ %call.i70.i, %do.end.i73.i ], [ %call5.i74.i, %do.end11.i78.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i79.i)
  %tobool21.not.i = icmp eq i32 %retval.0.i79.i, 0
  br i1 %tobool21.not.i, label %elan_get_device_param.exit80.i.elan_get_device_params.exit.thread106_crit_edge, label %elan_get_device_param.exit80.i.elan_get_device_params.exit_crit_edge

elan_get_device_param.exit80.i.elan_get_device_params.exit_crit_edge: ; preds = %elan_get_device_param.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elan_get_device_params.exit

elan_get_device_param.exit80.i.elan_get_device_params.exit.thread106_crit_edge: ; preds = %elan_get_device_param.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %elan_get_device_params.exit.thread106

elan_get_device_params.exit.thread106:            ; preds = %elan_get_device_param.exit80.i.elan_get_device_params.exit.thread106_crit_edge, %if.end.i76.i.elan_get_device_params.exit.thread106_crit_edge
  %32 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.i.i, align 1
  %conv.i.i = zext i8 %33 to i16
  %34 = mul nuw nsw i16 %conv.i.i, 100
  %mul1.i.i = add nuw i16 %34, 7900
  %div2.i.i = udiv i16 %mul1.i.i, 254
  %res_x.i = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %res_x.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %div2.i.i, ptr %res_x.i, align 2
  %36 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i.i, align 4
  %conv.i81.i = zext i8 %37 to i16
  %38 = mul nuw nsw i16 %conv.i81.i, 100
  %mul1.i82.i = add nuw i16 %38, 7900
  %div2.i83.i = udiv i16 %mul1.i82.i, 254
  %res_y.i = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %res_y.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %div2.i83.i, ptr %res_y.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %if.end5

elan_get_device_params.exit:                      ; preds = %elan_get_device_param.exit80.i.elan_get_device_params.exit_crit_edge, %elan_get_device_param.exit65.i.elan_get_device_params.exit_crit_edge, %elan_get_device_param.exit.i.elan_get_device_params.exit_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i.i, %elan_get_device_param.exit.i.elan_get_device_params.exit_crit_edge ], [ %retval.0.i64.i, %elan_get_device_param.exit65.i.elan_get_device_params.exit_crit_edge ], [ %retval.0.i79.i, %elan_get_device_param.exit80.i.elan_get_device_params.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool3.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool3.not, label %elan_get_device_params.exit.if.end5_crit_edge, label %elan_get_device_params.exit.cleanup_crit_edge

elan_get_device_params.exit.cleanup_crit_edge:    ; preds = %elan_get_device_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

elan_get_device_params.exit.if.end5_crit_edge:    ; preds = %elan_get_device_params.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %elan_get_device_params.exit.if.end5_crit_edge, %elan_get_device_params.exit.thread106
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call6 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %40 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.19, ptr %call6, align 8
  %phys = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 40
  %phys10 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 1
  %41 = ptrtoint ptr %phys10 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %phys, ptr %phys10, align 4
  %uniq = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %uniq12 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 2
  %42 = ptrtoint ptr %uniq12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %uniq, ptr %uniq12, align 8
  %bus = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %43 = ptrtoint ptr %bus to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bus, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 3
  %45 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %46 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %47 to i16
  %vendor14 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %vendor14 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv, ptr %vendor14, align 2
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %49 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %product, align 8
  %conv15 = trunc i32 %50 to i16
  %product17 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %product17 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv15, ptr %product17, align 4
  %version = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %52 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %version, align 4
  %conv18 = trunc i32 %53 to i16
  %version20 = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %version20 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv18, ptr %version20, align 2
  %parent = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 40, i32 1
  %55 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %parent, align 8
  %max_x = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %max_x to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %max_x, align 2
  %conv23 = zext i16 %57 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call6, i32 noundef 53, i32 noundef 0, i32 noundef %conv23, i32 noundef 0, i32 noundef 0) #6
  %max_y = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %max_y to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %max_y, align 4
  %conv24 = zext i16 %59 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call6, i32 noundef 54, i32 noundef 0, i32 noundef %conv24, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call6, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call6, i32 0, i32 6, i32 8
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %61, 65536
  store i32 %or.i, ptr %add.ptr.i, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 4
  %62 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %propbit, align 4
  %or.i89 = or i32 %63, 4
  store i32 %or.i89, ptr %propbit, align 4
  %call27 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call6, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %do.end

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call27) #9
  tail call void @input_free_device(ptr noundef nonnull %call6) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end9
  %res_x = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 6
  %64 = ptrtoint ptr %res_x to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %res_x, align 2
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call6) #6
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call6, i32 0, i32 26
  %66 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i93 = icmp eq ptr %67, null
  br i1 %tobool.not.i93, label %if.end31.input_abs_set_res.exit_crit_edge, label %if.then.i94

if.end31.input_abs_set_res.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit

if.then.i94:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %conv32 = zext i16 %65 to i32
  %resolution.i = getelementptr %struct.input_absinfo, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv32, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i94, %if.end31.input_abs_set_res.exit_crit_edge
  %res_y = getelementptr inbounds %struct.elan_drvdata, ptr %1, i32 0, i32 7
  %69 = ptrtoint ptr %res_y to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %res_y, align 4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call6) #6
  %71 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i97 = icmp eq ptr %72, null
  br i1 %tobool.not.i97, label %input_abs_set_res.exit.input_abs_set_res.exit101_crit_edge, label %if.then.i99

input_abs_set_res.exit.input_abs_set_res.exit101_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %input_abs_set_res.exit101

if.then.i99:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = zext i16 %70 to i32
  %resolution.i98 = getelementptr %struct.input_absinfo, ptr %72, i32 1, i32 5
  %73 = ptrtoint ptr %resolution.i98 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv33, ptr %resolution.i98, align 4
  br label %input_abs_set_res.exit101

input_abs_set_res.exit101:                        ; preds = %if.then.i99, %input_abs_set_res.exit.input_abs_set_res.exit101_crit_edge
  %call34 = tail call i32 @input_register_device(ptr noundef nonnull %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %input_abs_set_res.exit101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call34) #9
  tail call void @input_mt_destroy_slots(ptr noundef nonnull %call6) #6
  tail call void @input_free_device(ptr noundef nonnull %call6) #6
  br label %cleanup

if.end41:                                         ; preds = %input_abs_set_res.exit101
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call6, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end39, %do.end, %if.end5.cleanup_crit_edge, %elan_get_device_params.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %is_not_elan_touchpad.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end ], [ %call34, %do.end39 ], [ 0, %if.end41 ], [ 0, %is_not_elan_touchpad.exit.cleanup_crit_edge ], [ %ret.0.i, %elan_get_device_params.exit.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_mute_led_set_brigtness(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -3264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool3 = icmp ne i32 %value, 0
  %conv = zext i1 %tobool3 to i8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -68, ptr %call7.i.i, align 8
  %arrayidx5 = getelementptr i8, ptr %call7.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 2
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx6, align 2
  %call8 = tail call i32 @hid_hw_raw_request(ptr noundef %add.ptr, i8 noundef zeroext -68, ptr noundef nonnull %call7.i.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %10 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call8, label %do.end [
    i32 8, label %if.end18
    i32 -19, label %if.end.if.end15_crit_edge
  ]

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %call8) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp16 = icmp slt i32 %call8, 0
  %spec.select = select i1 %cmp16, i32 %call8, i32 -5
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mute_led_state = getelementptr inbounds %struct.elan_drvdata, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %mute_led_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %mute_led_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end15 ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @elan_report_mt_slot(ptr nocapture noundef readonly %drvdata, ptr noundef readonly %data, i32 noundef %slot_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %tobool = icmp ne ptr %data, null
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %slot_num) #6
  %call = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext %tobool) #6
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = zext i8 %3 to i32
  %and = shl nuw nsw i32 %conv, 4
  %shl = and i32 %and, 3840
  %arrayidx5 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %or = or i32 %shl, %conv6
  %max_y = getelementptr inbounds %struct.elan_drvdata, ptr %drvdata, i32 0, i32 5
  %6 = ptrtoint ptr %max_y to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_y, align 4
  %conv7 = zext i16 %7 to i32
  %and10 = shl nuw nsw i32 %conv, 8
  %shl11 = and i32 %and10, 1792
  %arrayidx12 = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %10 = or i32 %shl11, %conv13
  %sub = sub nsw i32 %conv7, %10
  %arrayidx15 = getelementptr i8, ptr %data, i32 4
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %12 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %or) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %sub) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %conv16) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_destroy_slots(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_hid_elan__232_537_elan_driver_init6, !1, !"__initcall__kmod_hid_elan__232_537_elan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-elan.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_elan_driver_exit, !1, !"__exitcall_elan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-elan.c", i32 539, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-elan.c", i32 540, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-elan.c", i32 541, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-elan.c", i32 528, i32 10}
!13 = !{ptr @elan_driver, !14, !"elan_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-elan.c", i32 527, i32 26}
!15 = !{ptr @elan_devices, !16, !"elan_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-elan.c", i32 517, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-elan.c", i32 477, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @elan_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @elan_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-elan.c", i32 483, i32 3}
!27 = !{ptr @elan_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @elan_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-elan.c", i32 491, i32 3}
!31 = !{ptr @elan_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @elan_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @elan_start_multitouch.buf, !34, !"buf", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-elan.c", i32 394, i32 29}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-elan.c", i32 406, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @elan_start_multitouch._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @elan_start_multitouch._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-elan.c", i32 453, i32 19}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-elan.c", i32 454, i32 30}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-elan.c", i32 440, i32 4}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @elan_mute_led_set_brigtness._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @elan_mute_led_set_brigtness._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-elan.c", i32 169, i32 16}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-elan.c", i32 190, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @elan_input_configured._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @elan_input_configured._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-elan.c", i32 200, i32 3}
!58 = !{ptr @elan_input_configured._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @elan_input_configured._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-elan.c", i32 94, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @elan_get_device_param._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @elan_get_device_param._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hid/hid-elan.c", i32 102, i32 3}
!67 = !{ptr @elan_get_device_param._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @elan_get_device_param._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
