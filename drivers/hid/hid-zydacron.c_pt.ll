; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-zydacron.c_pt.bc'
source_filename = "../drivers/hid/hid-zydacron.c"
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
%struct.zc_device = type { ptr, [4 x i16] }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__initcall__kmod_hid_zydacron__223_206_zc_driver_init6 = internal global ptr @zc_driver_init, section ".initcall6.init", align 4
@zc_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @zc_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @zc_probe, ptr null, ptr null, ptr @zc_raw_event, ptr null, ptr null, ptr null, ptr @zc_report_fixup, ptr @zc_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zc_driver_exit = internal global ptr @zc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [43 x i8] c"hid_zydacron.file=drivers/hid/hid-zydacron\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [25 x i8] c"hid_zydacron.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hid_zydacron\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zydacron\00", [23 x i8] zeroinitializer }, align 32
@zc_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 5100, i32 6, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@zc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't alloc descriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zc_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hid/hid-zydacron.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zc_probe._entry_ptr = internal global ptr @zc_probe._entry, section ".printk_index", align 4
@zc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@zc_probe._entry_ptr.9 = internal global ptr @zc_probe._entry.7, section ".printk_index", align 4
@zc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@zc_probe._entry_ptr.12 = internal global ptr @zc_probe._entry.10, section ".printk_index", align 4
@zc_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 35, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fixing up zydacron remote control report descriptor\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zc_report_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zc_report_fixup._entry_ptr = internal global ptr @zc_report_fixup._entry, section ".printk_index", align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@zc_input_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: zynacron input mapping event [0x%x]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zc_input_mapping\00", [47 x i8] zeroinitializer }, align 32
@zc_input_mapping._entry_ptr = internal global ptr @zc_input_mapping._entry, section ".printk_index", align 4
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.hid_map_usage, ptr @.str.20, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 16, i64 48, i64 112]
@__sancov_gen_cov_switch_values.21 = internal global [14 x i64] [i64 12, i64 16, i64 4, i64 13, i64 16, i64 36, i64 37, i64 48, i64 50, i64 71, i64 72, i64 73, i64 74, i64 112]
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"zc_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 198, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 206, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 199, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"zc_devices\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 192, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 171, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 179, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 185, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 34, i32 4 }
@___asan_gen_.83 = private constant [30 x i8] c"../drivers/hid/hid-zydacron.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 56, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1036, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_zc_driver_exit, ptr @__initcall__kmod_hid_zydacron__223_206_zc_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @zc_driver_exit, ptr @zc_input_mapping._entry, ptr @zc_input_mapping._entry_ptr, ptr @zc_probe._entry, ptr @zc_probe._entry.10, ptr @zc_probe._entry.7, ptr @zc_probe._entry_ptr, ptr @zc_probe._entry_ptr.12, ptr @zc_probe._entry_ptr.9, ptr @zc_report_fixup._entry, ptr @zc_report_fixup._entry_ptr, ptr @zc_driver, ptr @.str, ptr @.str.1, ptr @zc_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zc_input_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @zc_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @zc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zc_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i28 = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not = icmp eq i32 %call.i28, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.2, %entry.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %entry.cleanup.sink.split_crit_edge ], [ %call.i28, %if.end.cleanup.sink.split_crit_edge ], [ %call9, %if.end8.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.11.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zc_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp eq i32 %3, %conv
  br i1 %cmp, label %for.body.preheader, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

for.body.preheader:                               ; preds = %entry
  %arrayidx5 = getelementptr %struct.zc_device, ptr %1, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %for.body.preheader.for.inc_crit_edge, label %if.then7

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then7:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = zext i16 %7 to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %conv6, i32 noundef 0) #4
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %arrayidx5, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.preheader.for.inc_crit_edge
  %arrayidx5.1 = getelementptr %struct.zc_device, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx5.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.1 = icmp eq i16 %12, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %conv6.1 = zext i16 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef %conv6.1, i32 noundef 0) #4
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %arrayidx5.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.inc.for.inc.1_crit_edge
  %arrayidx5.2 = getelementptr %struct.zc_device, ptr %1, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.2 = icmp eq i16 %17, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv6.2 = zext i16 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef %conv6.2, i32 noundef 0) #4
  %20 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayidx5.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then7.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx5.3 = getelementptr %struct.zc_device, ptr %1, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx5.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.3 = icmp eq i16 %22, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then7.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then7.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv6.3 = zext i16 %22 to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef %conv6.3, i32 noundef 0) #4
  %25 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx5.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then7.3, %for.inc.2.for.inc.3_crit_edge
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %switch = icmp eq i32 %28, 2
  br i1 %switch, label %sw.bb, label %for.inc.3.if.end27_crit_edge

for.inc.3.if.end27_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

sw.bb:                                            ; preds = %for.inc.3
  %arrayidx12 = getelementptr i8, ptr %data, i32 1
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx12, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %sw.bb.if.end27_crit_edge [
    i8 16, label %sw.bb.if.then19_crit_edge
    i8 48, label %sw.bb15
    i8 112, label %sw.bb16
    i8 4, label %sw.bb17
  ]

sw.bb.if.then19_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

sw.bb15:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

sw.bb16:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

sw.bb17:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then19:                                        ; preds = %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb.if.then19_crit_edge
  %key.0.ph = phi i32 [ 375, %sw.bb15 ], [ 358, %sw.bb16 ], [ 385, %sw.bb17 ], [ 373, %sw.bb.if.then19_crit_edge ]
  %index.1.ph = phi i32 [ 1, %sw.bb15 ], [ 2, %sw.bb16 ], [ 3, %sw.bb17 ], [ 0, %sw.bb.if.then19_crit_edge ]
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef %key.0.ph, i32 noundef 1) #4
  %conv21 = trunc i32 %key.0.ph to i16
  %arrayidx24 = getelementptr %struct.zc_device, ptr %1, i32 0, i32 1, i32 %index.1.ph
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv21, ptr %arrayidx24, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %sw.bb.if.end27_crit_edge, %for.inc.3.if.end27_crit_edge, %entry.if.end27_crit_edge
  %ret.0 = phi i32 [ 0, %for.inc.3.if.end27_crit_edge ], [ 0, %entry.if.end27_crit_edge ], [ 1, %if.then19 ], [ 1, %sw.bb.if.end27_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @zc_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %1)
  %cmp = icmp ugt i32 %1, 252
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %rdesc, i32 150
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -68, i8 %3)
  %cmp1 = icmp eq i8 %3, -68
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %rdesc, i32 151
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp6 = icmp eq i8 %5, -1
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %rdesc, i32 202
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -68, i8 %7)
  %cmp11 = icmp eq i8 %7, -68
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %arrayidx14 = getelementptr i8, ptr %rdesc, i32 203
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp16 = icmp eq i8 %9, -1
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %arrayidx19 = getelementptr i8, ptr %rdesc, i32 225
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -68, i8 %11)
  %cmp21 = icmp eq i8 %11, -68
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true18.if.end_crit_edge

land.lhs.true18.if.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %arrayidx24 = getelementptr i8, ptr %rdesc, i32 226
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp26 = icmp eq i8 %13, -1
  br i1 %cmp26, label %do.end, label %land.lhs.true23.if.end_crit_edge

land.lhs.true23.if.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %arrayidx19, align 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %arrayidx9, align 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 12, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx24, align 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx14, align 1
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true23.if.end_crit_edge, %land.lhs.true18.if.end_crit_edge, %land.lhs.true13.if.end_crit_edge, %land.lhs.true8.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zc_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %1, align 4
  %5 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usage, align 4
  %and = and i32 %6, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and)
  %cmp.not = icmp eq i32 %and, 786432
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %7 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %and4 = and i32 %6, 65535
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, i32 noundef %and4) #7
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage, align 4
  %trunc = trunc i32 %9 to i16
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %trunc, label %do.end8.cleanup_crit_edge [
    i16 16, label %sw.bb
    i16 48, label %sw.bb11
    i16 112, label %sw.bb12
    i16 4, label %sw.bb13
    i16 13, label %sw.bb14
    i16 37, label %sw.bb15
    i16 71, label %sw.bb16
    i16 73, label %sw.bb17
    i16 74, label %sw.bb18
    i16 72, label %sw.bb19
    i16 36, label %sw.bb20
    i16 50, label %sw.bb21
  ]

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 373, ptr %code.i.i, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %keybit.i.i76 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  %type19.i.i77 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type19.i.i77 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %type19.i.i77, align 4
  %code.i.i78 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %18 = ptrtoint ptr %code.i.i78 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 375, ptr %code.i.i78, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %keybit.i.i81 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  %type19.i.i82 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i82 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i82, align 4
  %code.i.i83 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i83 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 358, ptr %code.i.i83, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %keybit.i.i86 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %type19.i.i87 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %25 = ptrtoint ptr %type19.i.i87 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type19.i.i87, align 4
  %code.i.i88 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %26 = ptrtoint ptr %code.i.i88 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 385, ptr %code.i.i88, align 2
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  %keybit.i.i91 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i92 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i92 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i92, align 4
  %code.i.i93 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i93 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 366, ptr %code.i.i93, align 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %keybit.i.i96 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i97 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i97 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i97, align 4
  %code.i.i98 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i98 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 377, ptr %code.i.i98, align 2
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  %keybit.i.i101 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 6
  %type19.i.i102 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i.i102 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %type19.i.i102, align 4
  %code.i.i103 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i.i103 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 392, ptr %code.i.i103, align 2
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  %keybit.i.i106 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  %type19.i.i107 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %41 = ptrtoint ptr %type19.i.i107 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %type19.i.i107, align 4
  %code.i.i108 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %42 = ptrtoint ptr %code.i.i108 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 390, ptr %code.i.i108, align 2
  br label %sw.epilog

sw.bb18:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input, align 4
  %keybit.i.i111 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6
  %type19.i.i112 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %45 = ptrtoint ptr %type19.i.i112 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %type19.i.i112, align 4
  %code.i.i113 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %46 = ptrtoint ptr %code.i.i113 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 393, ptr %code.i.i113, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input, align 4
  %keybit.i.i116 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %type19.i.i117 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i117 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i117, align 4
  %code.i.i118 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i118 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 389, ptr %code.i.i118, align 2
  br label %sw.epilog

sw.bb20:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  %keybit.i.i121 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6
  %type19.i.i122 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %53 = ptrtoint ptr %type19.i.i122 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type19.i.i122, align 4
  %code.i.i123 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %54 = ptrtoint ptr %code.i.i123 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 139, ptr %code.i.i123, align 2
  br label %sw.epilog

sw.bb21:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  %keybit.i.i126 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i127 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i127 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i127, align 4
  %code.i.i128 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i128 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 388, ptr %code.i.i128, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  %keybit.i.i126.sink131 = phi ptr [ %keybit.i.i126, %sw.bb21 ], [ %keybit.i.i121, %sw.bb20 ], [ %keybit.i.i116, %sw.bb19 ], [ %keybit.i.i111, %sw.bb18 ], [ %keybit.i.i106, %sw.bb17 ], [ %keybit.i.i101, %sw.bb16 ], [ %keybit.i.i96, %sw.bb15 ], [ %keybit.i.i91, %sw.bb14 ], [ %keybit.i.i86, %sw.bb13 ], [ %keybit.i.i81, %sw.bb12 ], [ %keybit.i.i76, %sw.bb11 ], [ %keybit.i.i, %sw.bb ]
  %code.i.i128.sink = phi ptr [ %code.i.i128, %sw.bb21 ], [ %code.i.i123, %sw.bb20 ], [ %code.i.i118, %sw.bb19 ], [ %code.i.i113, %sw.bb18 ], [ %code.i.i108, %sw.bb17 ], [ %code.i.i103, %sw.bb16 ], [ %code.i.i98, %sw.bb15 ], [ %code.i.i93, %sw.bb14 ], [ %code.i.i88, %sw.bb13 ], [ %code.i.i83, %sw.bb12 ], [ %code.i.i78, %sw.bb11 ], [ %code.i.i, %sw.bb ]
  %59 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 767, ptr %max, align 4
  %60 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %keybit.i.i126.sink131, ptr %bit, align 4
  %61 = ptrtoint ptr %code.i.i128.sink to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %code.i.i128.sink, align 2
  %conv1.i129 = zext i16 %62 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i129, ptr noundef nonnull %keybit.i.i126.sink131) #4
  %uglygep = getelementptr i8, ptr %1, i32 4
  %63 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 0, ptr %uglygep, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end8.cleanup_crit_edge ], [ 1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_hid_zydacron__223_206_zc_driver_init6, !1, !"__initcall__kmod_hid_zydacron__223_206_zc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-zydacron.c", i32 206, i32 1}
!2 = !{ptr @__exitcall_zc_driver_exit, !1, !"__exitcall_zc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-zydacron.c", i32 208, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-zydacron.c", i32 199, i32 10}
!9 = !{ptr @zc_driver, !10, !"zc_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-zydacron.c", i32 198, i32 26}
!11 = !{ptr @zc_devices, !12, !"zc_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-zydacron.c", i32 192, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-zydacron.c", i32 171, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @zc_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @zc_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-zydacron.c", i32 179, i32 3}
!23 = !{ptr @zc_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @zc_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-zydacron.c", i32 185, i32 3}
!27 = !{ptr @zc_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @zc_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-zydacron.c", i32 34, i32 4}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @zc_report_fixup._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @zc_report_fixup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hid/hid-zydacron.c", i32 56, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @zc_input_mapping._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @zc_input_mapping._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!42 = distinct !{null, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @__func__.hid_map_usage, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hid_map_usage._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @hid_map_usage._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
