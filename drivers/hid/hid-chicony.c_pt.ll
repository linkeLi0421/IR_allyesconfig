; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-chicony.c_pt.bc'
source_filename = "../drivers/hid/hid-chicony.c"
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
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__initcall__kmod_hid_chicony__232_153_ch_driver_init6 = internal global ptr @ch_driver_init, section ".initcall6.init", align 4
@ch_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ch_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ch_probe, ptr null, ptr null, ptr @ch_raw_event, ptr null, ptr null, ptr null, ptr @ch_switch12_report_fixup, ptr @ch_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ch_driver_exit = internal global ptr @ch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [41 x i8] c"hid_chicony.file=drivers/hid/hid-chicony\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"hid_chicony.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_chicony\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chicony\00", [24 x i8] zeroinitializer }, align 32
@ch_devices = internal constant { [5 x %struct.hid_device_id], [48 x i8] } { [5 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1048, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4387, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4662, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 5153, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Chicony hid parse failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ch_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-chicony.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch_probe._entry_ptr = internal global ptr @ch_probe._entry, section ".printk_index", align 4
@ch_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chicony hw start failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ch_probe._entry_ptr.9 = internal global ptr @ch_probe._entry.7, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@ch_report_wireless._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 36, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't find wireless radio control's input\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ch_report_wireless\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ch_report_wireless._entry_ptr = internal global ptr @ch_report_wireless._entry, section ".printk_index", align 4
@ch_switch12_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 103, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fixing up report descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ch_switch12_report_fixup\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ch_switch12_report_fixup._entry_ptr = internal global ptr @ch_switch12_report_fixup._entry, section ".printk_index", align 4
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.hid_map_usage, ptr @.str.18, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 16, i64 241, i64 242, i64 243, i64 244, i64 247, i64 248, i64 65281, i64 65282, i64 65283, i64 65284, i64 65285, i64 65286, i64 65287, i64 65288, i64 65289, i64 65290, i64 65291]
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"ch_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 145, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 153, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 146, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"ch_devices\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 136, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 123, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 129, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 36, i32 3 }
@___asan_gen_.77 = private constant [29 x i8] c"../drivers/hid/hid-chicony.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 103, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 1036, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ch_driver_exit, ptr @__initcall__kmod_hid_chicony__232_153_ch_driver_init6, ptr @ch_driver_exit, ptr @ch_probe._entry, ptr @ch_probe._entry.7, ptr @ch_probe._entry_ptr, ptr @ch_probe._entry_ptr.9, ptr @ch_report_wireless._entry, ptr @ch_report_wireless._entry_ptr, ptr @ch_switch12_report_fixup._entry, ptr @ch_switch12_report_fixup._entry_ptr, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @ch_driver, ptr @.str, ptr @.str.1, ptr @ch_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_devices to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_report_wireless._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_switch12_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ch_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @ch_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
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
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, 2048
  store i32 %or, ptr %quirks, align 8
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %do.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.8, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call4, %do.end9 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_raw_event(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef readnone %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %application = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 4
  %0 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65548, i32 %1)
  %cmp = icmp eq i32 %1, 65548
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  %device.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 8
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 17
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false.i:                                  ; preds = %if.then
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 1
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 5
  %8 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field.i, align 4
  %hidinput.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %hidinput.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hidinput.i, align 4
  %input2.i = getelementptr inbounds %struct.hid_input, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input2.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #7
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_event(ptr noundef nonnull %13, i32 noundef 1, i32 noundef 247, i32 noundef 1) #4
  tail call void @input_event(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  tail call void @input_event(ptr noundef nonnull %13, i32 noundef 1, i32 noundef 247, i32 noundef 0) #4
  tail call void @input_event(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %if.end4.i, %do.end.i, %lor.lhs.false.i.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end4.i ], [ 0, %do.end.i ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ch_switch12_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then:                                          ; preds = %entry
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5153, i32 %7)
  %cond = icmp eq i32 %7, 5153
  br i1 %cond, label %sw.bb, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

sw.bb:                                            ; preds = %if.then
  %8 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp2 = icmp ugt i32 %9, 127
  br i1 %cmp2, label %land.lhs.true, label %sw.bb.if.end26_crit_edge

sw.bb.if.end26_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %rdesc, i32 64
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp5 = icmp eq i8 %11, -1
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %rdesc, i32 65
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %13)
  %cmp10 = icmp eq i8 %13, 127
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true7.if.end26_crit_edge

land.lhs.true7.if.end26_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %arrayidx13 = getelementptr i8, ptr %rdesc, i32 69
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp15 = icmp eq i8 %15, -1
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.if.end26_crit_edge

land.lhs.true12.if.end26_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr i8, ptr %rdesc, i32 70
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %17)
  %cmp20 = icmp eq i8 %17, 127
  br i1 %cmp20, label %do.end, label %land.lhs.true17.if.end26_crit_edge

land.lhs.true17.if.end26_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end:                                           ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 47, ptr %arrayidx18, align 1
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 47, ptr %arrayidx8, align 1
  br label %if.end26

if.end26:                                         ; preds = %do.end, %land.lhs.true17.if.end26_crit_edge, %land.lhs.true12.if.end26_crit_edge, %land.lhs.true7.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %sw.bb.if.end26_crit_edge, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_input_mapping(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %and = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %and)
  %cmp.not = icmp eq i32 %and, -16777216
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit) #4
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %trunc = trunc i32 %5 to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end.return_crit_edge [
    i16 -255, label %sw.bb
    i16 -254, label %sw.bb3
    i16 -253, label %sw.bb4
    i16 -252, label %sw.bb5
    i16 -251, label %sw.bb6
    i16 -250, label %sw.bb7
    i16 -249, label %sw.bb8
    i16 -248, label %sw.bb9
    i16 -247, label %sw.bb10
    i16 -246, label %sw.bb11
    i16 -245, label %sw.bb12
    i16 241, label %sw.bb13
    i16 242, label %sw.bb14
    i16 243, label %sw.bb15
    i16 244, label %sw.bb16
    i16 247, label %sw.bb17
    i16 248, label %sw.bb18
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %9 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 257, ptr %code.i.i, align 2
  br label %return.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %keybit.i.i87 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i88 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i88 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i88, align 4
  %code.i.i89 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i89 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 258, ptr %code.i.i89, align 2
  br label %return.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %keybit.i.i92 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  %type19.i.i93 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type19.i.i93 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %type19.i.i93, align 4
  %code.i.i94 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %18 = ptrtoint ptr %code.i.i94 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 259, ptr %code.i.i94, align 2
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %keybit.i.i97 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  %type19.i.i98 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i98 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i98, align 4
  %code.i.i99 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i99 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 260, ptr %code.i.i99, align 2
  br label %return.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %keybit.i.i102 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %type19.i.i103 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %25 = ptrtoint ptr %type19.i.i103 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type19.i.i103, align 4
  %code.i.i104 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %26 = ptrtoint ptr %code.i.i104 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 261, ptr %code.i.i104, align 2
  br label %return.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  %keybit.i.i107 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i108 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i108 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i108, align 4
  %code.i.i109 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i109 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 262, ptr %code.i.i109, align 2
  br label %return.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %keybit.i.i112 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i113 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i113 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i113, align 4
  %code.i.i114 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i114 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 263, ptr %code.i.i114, align 2
  br label %return.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  %keybit.i.i117 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 6
  %type19.i.i118 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i.i118 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %type19.i.i118, align 4
  %code.i.i119 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i.i119 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 264, ptr %code.i.i119, align 2
  br label %return.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  %keybit.i.i122 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  %type19.i.i123 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %41 = ptrtoint ptr %type19.i.i123 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %type19.i.i123, align 4
  %code.i.i124 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %42 = ptrtoint ptr %code.i.i124 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 265, ptr %code.i.i124, align 2
  br label %return.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input, align 4
  %keybit.i.i127 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6
  %type19.i.i128 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %45 = ptrtoint ptr %type19.i.i128 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %type19.i.i128, align 4
  %code.i.i129 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %46 = ptrtoint ptr %code.i.i129 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 304, ptr %code.i.i129, align 2
  br label %return.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input, align 4
  %keybit.i.i132 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %type19.i.i133 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i133 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i133, align 4
  %code.i.i134 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i134 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 305, ptr %code.i.i134, align 2
  br label %return.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  %keybit.i.i137 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6
  %type19.i.i138 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %53 = ptrtoint ptr %type19.i.i138 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type19.i.i138, align 4
  %code.i.i139 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %54 = ptrtoint ptr %code.i.i139 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 238, ptr %code.i.i139, align 2
  br label %return.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  %keybit.i.i142 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i143 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i143 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i143, align 4
  %code.i.i144 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i144 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 224, ptr %code.i.i144, align 2
  br label %return.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input, align 4
  %keybit.i.i147 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 6
  %type19.i.i148 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %61 = ptrtoint ptr %type19.i.i148 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %type19.i.i148, align 4
  %code.i.i149 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %62 = ptrtoint ptr %code.i.i149 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 225, ptr %code.i.i149, align 2
  br label %return.sink.split

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input, align 4
  %keybit.i.i152 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 6
  %type19.i.i153 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %65 = ptrtoint ptr %type19.i.i153 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %type19.i.i153, align 4
  %code.i.i154 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %66 = ptrtoint ptr %code.i.i154 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 245, ptr %code.i.i154, align 2
  br label %return.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input, align 4
  %keybit.i.i157 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 6
  %type19.i.i158 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %69 = ptrtoint ptr %type19.i.i158 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %type19.i.i158, align 4
  %code.i.i159 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %70 = ptrtoint ptr %code.i.i159 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 212, ptr %code.i.i159, align 2
  br label %return.sink.split

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input, align 4
  %keybit.i.i162 = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 6
  %type19.i.i163 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %73 = ptrtoint ptr %type19.i.i163 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %type19.i.i163, align 4
  %code.i.i164 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %74 = ptrtoint ptr %code.i.i164 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 148, ptr %code.i.i164, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %keybit.i.i.sink166 = phi ptr [ %keybit.i.i, %sw.bb ], [ %keybit.i.i87, %sw.bb3 ], [ %keybit.i.i92, %sw.bb4 ], [ %keybit.i.i97, %sw.bb5 ], [ %keybit.i.i102, %sw.bb6 ], [ %keybit.i.i107, %sw.bb7 ], [ %keybit.i.i112, %sw.bb8 ], [ %keybit.i.i117, %sw.bb9 ], [ %keybit.i.i122, %sw.bb10 ], [ %keybit.i.i127, %sw.bb11 ], [ %keybit.i.i132, %sw.bb12 ], [ %keybit.i.i137, %sw.bb13 ], [ %keybit.i.i142, %sw.bb14 ], [ %keybit.i.i147, %sw.bb15 ], [ %keybit.i.i152, %sw.bb16 ], [ %keybit.i.i157, %sw.bb17 ], [ %keybit.i.i162, %sw.bb18 ]
  %code.i.i.sink = phi ptr [ %code.i.i, %sw.bb ], [ %code.i.i89, %sw.bb3 ], [ %code.i.i94, %sw.bb4 ], [ %code.i.i99, %sw.bb5 ], [ %code.i.i104, %sw.bb6 ], [ %code.i.i109, %sw.bb7 ], [ %code.i.i114, %sw.bb8 ], [ %code.i.i119, %sw.bb9 ], [ %code.i.i124, %sw.bb10 ], [ %code.i.i129, %sw.bb11 ], [ %code.i.i134, %sw.bb12 ], [ %code.i.i139, %sw.bb13 ], [ %code.i.i144, %sw.bb14 ], [ %code.i.i149, %sw.bb15 ], [ %code.i.i154, %sw.bb16 ], [ %code.i.i159, %sw.bb17 ], [ %code.i.i164, %sw.bb18 ]
  %75 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 767, ptr %max, align 4
  %76 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %keybit.i.i.sink166, ptr %bit, align 4
  %77 = ptrtoint ptr %code.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %code.i.i.sink, align 2
  %conv1.i = zext i16 %78 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i.sink166) #4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_hid_chicony__232_153_ch_driver_init6, !1, !"__initcall__kmod_hid_chicony__232_153_ch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-chicony.c", i32 153, i32 1}
!2 = !{ptr @__exitcall_ch_driver_exit, !1, !"__exitcall_ch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-chicony.c", i32 155, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-chicony.c", i32 146, i32 10}
!9 = !{ptr @ch_driver, !10, !"ch_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-chicony.c", i32 145, i32 26}
!11 = !{ptr @ch_devices, !12, !"ch_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-chicony.c", i32 136, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-chicony.c", i32 123, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ch_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ch_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-chicony.c", i32 129, i32 3}
!23 = !{ptr @ch_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ch_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-chicony.c", i32 36, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ch_report_wireless._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @ch_report_wireless._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-chicony.c", i32 103, i32 5}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ch_switch12_report_fixup._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @ch_switch12_report_fixup._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!39 = distinct !{null, !38, !"_rs", i1 false, i1 false}
!40 = !{ptr @__func__.hid_map_usage, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hid_map_usage._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @hid_map_usage._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
