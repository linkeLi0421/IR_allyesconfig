; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-samsung.c_pt.bc'
source_filename = "../drivers/hid/hid-samsung.c"
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
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__initcall__kmod_hid_samsung__232_197_samsung_driver_init6 = internal global ptr @samsung_driver_init, section ".initcall6.init", align 4
@samsung_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @samsung_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @samsung_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_report_fixup, ptr @samsung_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_samsung_driver_exit = internal global ptr @samsung_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [41 x i8] c"hid_samsung.file=drivers/hid/hid-samsung\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"hid_samsung.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_samsung\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"samsung\00", [24 x i8] zeroinitializer }, align 32
@samsung_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1049, i32 1, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1049, i32 1536, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@samsung_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-samsung.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@samsung_probe._entry_ptr = internal global ptr @samsung_probe._entry, section ".printk_index", align 4
@samsung_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@samsung_probe._entry_ptr.9 = internal global ptr @samsung_probe._entry.7, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@samsung_irda_dev_trace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 55, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fixing up Samsung IrDA %d byte report descriptor\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung_irda_dev_trace\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@samsung_irda_dev_trace._entry_ptr = internal global ptr @samsung_irda_dev_trace._entry, section ".printk_index", align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@samsung_kbd_mouse_input_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: samsung wireless keyboard/mouse input mapping event [0x%x]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samsung_kbd_mouse_input_mapping\00", [32 x i8] zeroinitializer }, align 32
@samsung_kbd_mouse_input_mapping._entry_ptr = internal global ptr @samsung_kbd_mouse_input_mapping._entry, section ".printk_index", align 4
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.hid_map_usage, ptr @.str.17, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 135, i64 171, i64 184, i64 203]
@__sancov_gen_cov_switch_values.18 = internal global [13 x i64] [i64 11, i64 16, i64 387, i64 405, i64 406, i64 407, i64 555, i64 556, i64 557, i64 558, i64 559, i64 560, i64 561]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"samsung_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 190, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 197, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 191, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"samsung_devices\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 183, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 160, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 54, i32 2 }
@___asan_gen_.74 = private constant [29 x i8] c"../drivers/hid/hid-samsung.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 105, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1036, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_samsung_driver_exit, ptr @__initcall__kmod_hid_samsung__232_197_samsung_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @samsung_driver_exit, ptr @samsung_irda_dev_trace._entry, ptr @samsung_irda_dev_trace._entry_ptr, ptr @samsung_kbd_mouse_input_mapping._entry, ptr @samsung_kbd_mouse_input_mapping._entry_ptr, ptr @samsung_probe._entry, ptr @samsung_probe._entry.7, ptr @samsung_probe._entry_ptr, ptr @samsung_probe._entry_ptr.9, ptr @samsung_driver, ptr @.str, ptr @.str.1, ptr @samsung_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_irda_dev_trace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_kbd_mouse_input_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @samsung_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @samsung_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then4, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %rsize = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 3
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %5)
  %cmp5 = icmp eq i32 %5, 184
  %spec.select = select i1 %cmp5, i32 60, i32 45
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end3.if.end8_crit_edge
  %cmask.0 = phi i32 [ 45, %if.end3.if.end8_crit_edge ], [ %spec.select, %if.then4 ]
  %call9 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %cmask.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str.2, %if.end.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.end.cleanup.sink.split_crit_edge ], [ %call9, %if.end8.cleanup.sink.split_crit_edge ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.2.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @samsung_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsize, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 184, label %land.lhs.true.i
    i32 203, label %land.lhs.true39.i
    i32 135, label %land.lhs.true65.i
    i32 171, label %land.lhs.true91.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %arrayidx.i = getelementptr i8, ptr %rdesc, i32 175
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %6)
  %cmp1.i = icmp eq i8 %6, 37
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr i8, ptr %rdesc, i32 176
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %cmp6.i = icmp eq i8 %8, 64
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true3.i.if.end_crit_edge

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true8.i:                                 ; preds = %land.lhs.true3.i
  %arrayidx9.i = getelementptr i8, ptr %rdesc, i32 177
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %10)
  %cmp11.i = icmp eq i8 %10, 117
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true8.i.if.end_crit_edge

land.lhs.true8.i.if.end_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true13.i:                                ; preds = %land.lhs.true8.i
  %arrayidx14.i = getelementptr i8, ptr %rdesc, i32 178
  %11 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %12)
  %cmp16.i = icmp eq i8 %12, 48
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true13.i.if.end_crit_edge

land.lhs.true13.i.if.end_crit_edge:               ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true18.i:                                ; preds = %land.lhs.true13.i
  %arrayidx19.i = getelementptr i8, ptr %rdesc, i32 179
  %13 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %14)
  %cmp21.i = icmp eq i8 %14, -107
  br i1 %cmp21.i, label %land.lhs.true23.i, label %land.lhs.true18.i.if.end_crit_edge

land.lhs.true18.i.if.end_crit_edge:               ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true23.i:                                ; preds = %land.lhs.true18.i
  %arrayidx24.i = getelementptr i8, ptr %rdesc, i32 180
  %15 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp26.i = icmp eq i8 %16, 1
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true23.i.if.end_crit_edge

land.lhs.true23.i.if.end_crit_edge:               ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true28.i:                                ; preds = %land.lhs.true23.i
  %arrayidx29.i = getelementptr i8, ptr %rdesc, i32 182
  %17 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp31.i = icmp eq i8 %18, 64
  br i1 %cmp31.i, label %if.then.i, label %land.lhs.true28.i.if.end_crit_edge

land.lhs.true28.i.if.end_crit_edge:               ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.10, i32 noundef 184) #7
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx4.i, align 1
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %arrayidx14.i, align 1
  %21 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %arrayidx24.i, align 1
  %22 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 66, ptr %arrayidx29.i, align 1
  br label %if.end

land.lhs.true39.i:                                ; preds = %if.then
  %arrayidx40.i = getelementptr i8, ptr %rdesc, i32 192
  %23 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %24)
  %cmp42.i = icmp eq i8 %24, 21
  br i1 %cmp42.i, label %land.lhs.true44.i, label %land.lhs.true39.i.if.end_crit_edge

land.lhs.true39.i.if.end_crit_edge:               ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true44.i:                                ; preds = %land.lhs.true39.i
  %arrayidx45.i = getelementptr i8, ptr %rdesc, i32 193
  %25 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp47.i = icmp eq i8 %26, 0
  br i1 %cmp47.i, label %land.lhs.true49.i, label %land.lhs.true44.i.if.end_crit_edge

land.lhs.true44.i.if.end_crit_edge:               ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true49.i:                                ; preds = %land.lhs.true44.i
  %arrayidx50.i = getelementptr i8, ptr %rdesc, i32 194
  %27 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %28)
  %cmp52.i = icmp eq i8 %28, 37
  br i1 %cmp52.i, label %land.lhs.true54.i, label %land.lhs.true49.i.if.end_crit_edge

land.lhs.true49.i.if.end_crit_edge:               ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true54.i:                                ; preds = %land.lhs.true49.i
  %arrayidx55.i = getelementptr i8, ptr %rdesc, i32 195
  %29 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx55.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %30)
  %cmp57.i = icmp eq i8 %30, 18
  br i1 %cmp57.i, label %if.then59.i, label %land.lhs.true54.i.if.end_crit_edge

land.lhs.true54.i.if.end_crit_edge:               ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then59.i:                                      ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i152.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i152.i, ptr noundef nonnull @.str.10, i32 noundef 203) #7
  %31 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx45.i, align 1
  %32 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 15, ptr %arrayidx55.i, align 1
  br label %if.end

land.lhs.true65.i:                                ; preds = %if.then
  %arrayidx66.i = getelementptr i8, ptr %rdesc, i32 124
  %33 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %34)
  %cmp68.i = icmp eq i8 %34, 21
  br i1 %cmp68.i, label %land.lhs.true70.i, label %land.lhs.true65.i.if.end_crit_edge

land.lhs.true65.i.if.end_crit_edge:               ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true70.i:                                ; preds = %land.lhs.true65.i
  %arrayidx71.i = getelementptr i8, ptr %rdesc, i32 125
  %35 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx71.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp73.i = icmp eq i8 %36, 0
  br i1 %cmp73.i, label %land.lhs.true75.i, label %land.lhs.true70.i.if.end_crit_edge

land.lhs.true70.i.if.end_crit_edge:               ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true75.i:                                ; preds = %land.lhs.true70.i
  %arrayidx76.i = getelementptr i8, ptr %rdesc, i32 126
  %37 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx76.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %38)
  %cmp78.i = icmp eq i8 %38, 37
  br i1 %cmp78.i, label %land.lhs.true80.i, label %land.lhs.true75.i.if.end_crit_edge

land.lhs.true75.i.if.end_crit_edge:               ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true80.i:                                ; preds = %land.lhs.true75.i
  %arrayidx81.i = getelementptr i8, ptr %rdesc, i32 127
  %39 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx81.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %40)
  %cmp83.i = icmp eq i8 %40, 17
  br i1 %cmp83.i, label %if.then85.i, label %land.lhs.true80.i.if.end_crit_edge

land.lhs.true80.i.if.end_crit_edge:               ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then85.i:                                      ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i153.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i153.i, ptr noundef nonnull @.str.10, i32 noundef 135) #7
  %41 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx71.i, align 1
  %42 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 14, ptr %arrayidx81.i, align 1
  br label %if.end

land.lhs.true91.i:                                ; preds = %if.then
  %arrayidx92.i = getelementptr i8, ptr %rdesc, i32 160
  %43 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %44)
  %cmp94.i = icmp eq i8 %44, 21
  br i1 %cmp94.i, label %land.lhs.true96.i, label %land.lhs.true91.i.if.end_crit_edge

land.lhs.true91.i.if.end_crit_edge:               ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true96.i:                                ; preds = %land.lhs.true91.i
  %arrayidx97.i = getelementptr i8, ptr %rdesc, i32 161
  %45 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx97.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp99.i = icmp eq i8 %46, 0
  br i1 %cmp99.i, label %land.lhs.true101.i, label %land.lhs.true96.i.if.end_crit_edge

land.lhs.true96.i.if.end_crit_edge:               ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true101.i:                               ; preds = %land.lhs.true96.i
  %arrayidx102.i = getelementptr i8, ptr %rdesc, i32 162
  %47 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx102.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %48)
  %cmp104.i = icmp eq i8 %48, 37
  br i1 %cmp104.i, label %land.lhs.true106.i, label %land.lhs.true101.i.if.end_crit_edge

land.lhs.true101.i.if.end_crit_edge:              ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true106.i:                               ; preds = %land.lhs.true101.i
  %arrayidx107.i = getelementptr i8, ptr %rdesc, i32 163
  %49 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx107.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp109.i = icmp eq i8 %50, 1
  br i1 %cmp109.i, label %if.then111.i, label %land.lhs.true106.i.if.end_crit_edge

land.lhs.true106.i.if.end_crit_edge:              ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then111.i:                                     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i154.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i154.i, ptr noundef nonnull @.str.10, i32 noundef 171) #7
  %51 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx97.i, align 1
  %52 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %arrayidx107.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then111.i, %land.lhs.true106.i.if.end_crit_edge, %land.lhs.true101.i.if.end_crit_edge, %land.lhs.true96.i.if.end_crit_edge, %land.lhs.true91.i.if.end_crit_edge, %if.then85.i, %land.lhs.true80.i.if.end_crit_edge, %land.lhs.true75.i.if.end_crit_edge, %land.lhs.true70.i.if.end_crit_edge, %land.lhs.true65.i.if.end_crit_edge, %if.then59.i, %land.lhs.true54.i.if.end_crit_edge, %land.lhs.true49.i.if.end_crit_edge, %land.lhs.true44.i.if.end_crit_edge, %land.lhs.true39.i.if.end_crit_edge, %if.then.i, %land.lhs.true28.i.if.end_crit_edge, %land.lhs.true23.i.if.end_crit_edge, %land.lhs.true18.i.if.end_crit_edge, %land.lhs.true13.i.if.end_crit_edge, %land.lhs.true8.i.if.end_crit_edge, %land.lhs.true3.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %1)
  %cmp = icmp eq i32 %1, 1536
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %parent.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %cur_altsetting.i = getelementptr i8, ptr %3, i32 -28
  %4 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage, align 4
  %and.i = and i32 %9, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, 786432
  br i1 %cmp3.not.i, label %do.body.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body.i:                                        ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %10 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i.do.end12.i_crit_edge, label %do.end.i

do.body.i.do.end12.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %and9.i = and i32 %9, 65535
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef %and9.i) #7
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %do.body.i.do.end12.i_crit_edge
  %11 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usage, align 4
  %trunc.i = trunc i32 %12 to i16
  %13 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %trunc.i, label %do.end12.i.if.end_crit_edge [
    i16 387, label %sw.bb.i
    i16 405, label %sw.bb15.i
    i16 406, label %sw.bb16.i
    i16 407, label %sw.bb17.i
    i16 555, label %sw.bb18.i
    i16 556, label %sw.bb19.i
    i16 557, label %sw.bb20.i
    i16 558, label %sw.bb21.i
    i16 559, label %sw.bb22.i
    i16 560, label %sw.bb23.i
    i16 561, label %sw.bb24.i
  ]

do.end12.i.if.end_crit_edge:                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb.i:                                          ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %14 = ptrtoint ptr %input1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input1.i.i.i, align 4
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %15, i32 0, i32 6
  %type19.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %16 = ptrtoint ptr %type19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %type19.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %17 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 226, ptr %code.i.i.i, align 2
  br label %cleanup.sink.split.i

sw.bb15.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %18 = ptrtoint ptr %input1.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input1.i.i1.i, align 4
  %keybit.i.i2.i = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 6
  %type19.i.i3.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %20 = ptrtoint ptr %type19.i.i3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %type19.i.i3.i, align 4
  %code.i.i4.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %21 = ptrtoint ptr %code.i.i4.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 215, ptr %code.i.i4.i, align 2
  br label %cleanup.sink.split.i

sw.bb16.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i6.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %22 = ptrtoint ptr %input1.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input1.i.i6.i, align 4
  %keybit.i.i7.i = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 6
  %type19.i.i8.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %24 = ptrtoint ptr %type19.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %type19.i.i8.i, align 4
  %code.i.i9.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %25 = ptrtoint ptr %code.i.i9.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 140, ptr %code.i.i9.i, align 2
  br label %cleanup.sink.split.i

sw.bb17.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i11.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %26 = ptrtoint ptr %input1.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input1.i.i11.i, align 4
  %keybit.i.i12.i = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 6
  %type19.i.i13.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %28 = ptrtoint ptr %type19.i.i13.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %type19.i.i13.i, align 4
  %code.i.i14.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %29 = ptrtoint ptr %code.i.i14.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 157, ptr %code.i.i14.i, align 2
  br label %cleanup.sink.split.i

sw.bb18.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i16.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %30 = ptrtoint ptr %input1.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input1.i.i16.i, align 4
  %keybit.i.i17.i = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 6
  %type19.i.i18.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %32 = ptrtoint ptr %type19.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %type19.i.i18.i, align 4
  %code.i.i19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %33 = ptrtoint ptr %code.i.i19.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 217, ptr %code.i.i19.i, align 2
  br label %cleanup.sink.split.i

sw.bb19.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i21.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %34 = ptrtoint ptr %input1.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input1.i.i21.i, align 4
  %keybit.i.i22.i = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 6
  %type19.i.i23.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %36 = ptrtoint ptr %type19.i.i23.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %type19.i.i23.i, align 4
  %code.i.i24.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %37 = ptrtoint ptr %code.i.i24.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 150, ptr %code.i.i24.i, align 2
  br label %cleanup.sink.split.i

sw.bb20.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i26.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %38 = ptrtoint ptr %input1.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input1.i.i26.i, align 4
  %keybit.i.i27.i = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 6
  %type19.i.i28.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %40 = ptrtoint ptr %type19.i.i28.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %type19.i.i28.i, align 4
  %code.i.i29.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %41 = ptrtoint ptr %code.i.i29.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 158, ptr %code.i.i29.i, align 2
  br label %cleanup.sink.split.i

sw.bb21.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i31.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %42 = ptrtoint ptr %input1.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input1.i.i31.i, align 4
  %keybit.i.i32.i = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 6
  %type19.i.i33.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %44 = ptrtoint ptr %type19.i.i33.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %type19.i.i33.i, align 4
  %code.i.i34.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %45 = ptrtoint ptr %code.i.i34.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 159, ptr %code.i.i34.i, align 2
  br label %cleanup.sink.split.i

sw.bb22.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i36.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %46 = ptrtoint ptr %input1.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input1.i.i36.i, align 4
  %keybit.i.i37.i = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 6
  %type19.i.i38.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %48 = ptrtoint ptr %type19.i.i38.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %type19.i.i38.i, align 4
  %code.i.i39.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %49 = ptrtoint ptr %code.i.i39.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 364, ptr %code.i.i39.i, align 2
  br label %cleanup.sink.split.i

sw.bb23.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i41.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %50 = ptrtoint ptr %input1.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input1.i.i41.i, align 4
  %keybit.i.i42.i = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 6
  %type19.i.i43.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %52 = ptrtoint ptr %type19.i.i43.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %type19.i.i43.i, align 4
  %code.i.i44.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %53 = ptrtoint ptr %code.i.i44.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 173, ptr %code.i.i44.i, align 2
  br label %cleanup.sink.split.i

sw.bb24.i:                                        ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i46.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %54 = ptrtoint ptr %input1.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input1.i.i46.i, align 4
  %keybit.i.i47.i = getelementptr inbounds %struct.input_dev, ptr %55, i32 0, i32 6
  %type19.i.i48.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %56 = ptrtoint ptr %type19.i.i48.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %type19.i.i48.i, align 4
  %code.i.i49.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %57 = ptrtoint ptr %code.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 128, ptr %code.i.i49.i, align 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb.i
  %keybit.i.i.sink51.i = phi ptr [ %keybit.i.i.i, %sw.bb.i ], [ %keybit.i.i2.i, %sw.bb15.i ], [ %keybit.i.i7.i, %sw.bb16.i ], [ %keybit.i.i12.i, %sw.bb17.i ], [ %keybit.i.i17.i, %sw.bb18.i ], [ %keybit.i.i22.i, %sw.bb19.i ], [ %keybit.i.i27.i, %sw.bb20.i ], [ %keybit.i.i32.i, %sw.bb21.i ], [ %keybit.i.i37.i, %sw.bb22.i ], [ %keybit.i.i42.i, %sw.bb23.i ], [ %keybit.i.i47.i, %sw.bb24.i ]
  %code.i.i.sink.i = phi ptr [ %code.i.i.i, %sw.bb.i ], [ %code.i.i4.i, %sw.bb15.i ], [ %code.i.i9.i, %sw.bb16.i ], [ %code.i.i14.i, %sw.bb17.i ], [ %code.i.i19.i, %sw.bb18.i ], [ %code.i.i24.i, %sw.bb19.i ], [ %code.i.i29.i, %sw.bb20.i ], [ %code.i.i34.i, %sw.bb21.i ], [ %code.i.i39.i, %sw.bb22.i ], [ %code.i.i44.i, %sw.bb23.i ], [ %code.i.i49.i, %sw.bb24.i ]
  %58 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 767, ptr %max, align 4
  %59 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %keybit.i.i.sink51.i, ptr %bit, align 4
  %60 = ptrtoint ptr %code.i.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %code.i.i.sink.i, align 2
  %conv1.i.i = zext i16 %61 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i, ptr noundef nonnull %keybit.i.i.sink51.i) #4
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %do.end12.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %lor.lhs.false.i.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ], [ 0, %do.end12.i.if.end_crit_edge ], [ 1, %cleanup.sink.split.i ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_hid_samsung__232_197_samsung_driver_init6, !1, !"__initcall__kmod_hid_samsung__232_197_samsung_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-samsung.c", i32 197, i32 1}
!2 = !{ptr @__exitcall_samsung_driver_exit, !1, !"__exitcall_samsung_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-samsung.c", i32 199, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-samsung.c", i32 191, i32 10}
!9 = !{ptr @samsung_driver, !10, !"samsung_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-samsung.c", i32 190, i32 26}
!11 = !{ptr @samsung_devices, !12, !"samsung_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-samsung.c", i32 183, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-samsung.c", i32 160, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @samsung_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @samsung_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-samsung.c", i32 174, i32 3}
!23 = !{ptr @samsung_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @samsung_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-samsung.c", i32 54, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @samsung_irda_dev_trace._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @samsung_irda_dev_trace._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-samsung.c", i32 105, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @samsung_kbd_mouse_input_mapping._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @samsung_kbd_mouse_input_mapping._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!38 = distinct !{null, !37, !"_rs", i1 false, i1 false}
!39 = !{ptr @__func__.hid_map_usage, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hid_map_usage._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @hid_map_usage._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
