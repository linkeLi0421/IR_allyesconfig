; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-microsoft.c_pt.bc'
source_filename = "../drivers/hid/hid-microsoft.c"
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
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.ms_data = type { i32, ptr, %struct.work_struct, i8, i8, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.xb1s_ff_report = type { i8, i8, [4 x i8], i8, i8, i8 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_microsoft__223_467_ms_driver_init6 = internal global ptr @ms_driver_init, section ".initcall6.init", align 4
@ms_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ms_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ms_probe, ptr @ms_remove, ptr null, ptr null, ptr null, ptr @ms_event, ptr null, ptr @ms_report_fixup, ptr @ms_input_mapping, ptr @ms_input_mapped, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ms_driver_exit = internal global ptr @ms_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [45 x i8] c"hid_microsoft.file=drivers/hid/hid-microsoft\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [26 x i8] c"hid_microsoft.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_microsoft\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"microsoft\00", [22 x i8] zeroinitializer }, align 32
@ms_devices = internal constant { [20 x %struct.hid_device_id], [64 x i8] } { [20 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1118, i32 59, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 72, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 219, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 220, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1821, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 249, i32 10 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1811, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1840, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 180, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1872, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1842, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 157, i32 16 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1900, i32 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 227, i32 2 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 1793, i32 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 2331, i32 64 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 765, i32 128 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 736, i32 128 }, %struct.hid_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ms_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ms_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hid/hid-microsoft.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ms_probe._entry_ptr = internal global ptr @ms_probe._entry, section ".printk_index", align 4
@ms_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ms_probe._entry_ptr.9 = internal global ptr @ms_probe._entry.7, section ".printk_index", align 4
@ms_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not initialize ff, continuing anyway\00", [53 x i8] zeroinitializer }, align 32
@ms_probe._entry_ptr.12 = internal global ptr @ms_probe._entry.10, section ".printk_index", align 4
@ms_init_ff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 333, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ms_init_ff\00", [21 x i8] zeroinitializer }, align 32
@ms_init_ff._entry_ptr = internal global ptr @ms_init_ff._entry, section ".printk_index", align 4
@ms_init_ff.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ms->ff_worker)\00", [62 x i8] zeroinitializer }, align 32
@ms_ff_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 304, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to send FF report\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms_ff_worker\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ms_ff_worker._entry_ptr = internal global ptr @ms_ff_worker._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ms_event.last_key = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ms_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 71, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"fixing up Microsoft Wireless Receiver Model 1028 report descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ms_report_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ms_report_fixup._entry_ptr = internal global ptr @ms_report_fixup._entry, section ".printk_index", align 4
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.hid_map_usage, ptr @.str.24, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4278255360, i64 4278255361, i64 4278255365]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 31]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 786432, i64 4278190080]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 669, i64 670]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 16, i64 64774, i64 64775, i64 65280, i64 65281, i64 65282, i64 65285]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 16, i64 64776, i64 64777, i64 64779, i64 64782, i64 64783]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 851968, i64 4278648832]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 65584, i64 65585, i64 65734]
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"ms_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 457, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 467, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 458, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"ms_devices\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 413, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 387, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 394, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 400, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 333, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 343, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 304, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"last_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 260, i32 23 }
@___asan_gen_.115 = private constant [31 x i8] c"../drivers/hid/hid-microsoft.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 71, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1036, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_ms_driver_exit, ptr @__initcall__kmod_hid_microsoft__223_467_ms_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @ms_driver_exit, ptr @ms_ff_worker._entry, ptr @ms_ff_worker._entry_ptr, ptr @ms_init_ff._entry, ptr @ms_init_ff._entry_ptr, ptr @ms_probe._entry, ptr @ms_probe._entry.10, ptr @ms_probe._entry.7, ptr @ms_probe._entry_ptr, ptr @ms_probe._entry_ptr.12, ptr @ms_probe._entry_ptr.9, ptr @ms_report_fixup._entry, ptr @ms_report_fixup._entry_ptr, ptr @ms_driver, ptr @.str, ptr @.str.1, ptr @ms_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @ms_init_ff.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ms_event.last_key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_devices to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_init_ff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_init_ff.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_ff_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_event.last_key to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ms_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ms_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ms_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @ms_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %quirks3 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %4 = ptrtoint ptr %quirks3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks3, align 8
  %or = or i32 %5, 8
  store i32 %or, ptr %quirks3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and5 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %quirks8 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %quirks8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks8, align 8
  %or9 = or i32 %7, 2048
  store i32 %or9, ptr %quirks8, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %call.i54 = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool12.not = icmp eq i32 %call.i54, 0
  br i1 %tobool12.not, label %if.end15, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  %and16 = shl i32 %1, 1
  %8 = and i32 %and16, 2
  %or18 = or i32 %8, 45
  %call19 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %or18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end26:                                         ; preds = %if.end15
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %11 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end26
  %input.i = getelementptr inbounds %struct.hid_input, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input.i, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %hdev6.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %hdev6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hdev, ptr %hdev6.i, align 4
  %ff_worker.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 2
  tail call void @__init_work(ptr noundef %ff_worker.i, i32 noundef 0) #4
  %18 = ptrtoint ptr %ff_worker.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %ff_worker.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @ms_init_ff.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry11.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ms_ff_worker, ptr %func.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 9, i32 noundef 3520) #4
  %output_report_dmabuf.i = getelementptr inbounds %struct.ms_data, ptr %10, i32 0, i32 5
  %22 = ptrtoint ptr %output_report_dmabuf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %output_report_dmabuf.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end5.i.cleanup.sink.split_crit_edge, label %ms_init_ff.exit

if.end5.i.cleanup.sink.split_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

ms_init_ff.exit:                                  ; preds = %if.end5.i
  tail call void @input_set_capability(ptr noundef %14, i32 noundef 21, i32 noundef 80) #4
  %call20.i = tail call i32 @input_ff_create_memless(ptr noundef %14, ptr noundef null, ptr noundef nonnull @ms_play_effect) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool28.not = icmp eq i32 %call20.i, 0
  br i1 %tobool28.not, label %ms_init_ff.exit.cleanup_crit_edge, label %ms_init_ff.exit.cleanup.sink.split_crit_edge

ms_init_ff.exit.cleanup.sink.split_crit_edge:     ; preds = %ms_init_ff.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

ms_init_ff.exit.cleanup_crit_edge:                ; preds = %ms_init_ff.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %ms_init_ff.exit.cleanup.sink.split_crit_edge, %if.end5.i.cleanup.sink.split_crit_edge, %do.end.i, %if.end15.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str.2, %if.end10.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end15.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end5.i.cleanup.sink.split_crit_edge ], [ @.str.11, %do.end.i ], [ @.str.11, %ms_init_ff.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i54, %if.end10.cleanup.sink.split_crit_edge ], [ %call19, %if.end15.cleanup.sink.split_crit_edge ], [ 0, %if.end5.i.cleanup.sink.split_crit_edge ], [ 0, %do.end.i ], [ 0, %ms_init_ff.exit.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.2.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ms_init_ff.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %ms_init_ff.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ms_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hid_hw_stop(ptr noundef %hdev) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ms_remove_ff.exit_crit_edge, label %if.end.i

entry.ms_remove_ff.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ms_remove_ff.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ff_worker.i = getelementptr inbounds %struct.ms_data, ptr %1, i32 0, i32 2
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ff_worker.i) #4
  br label %ms_remove_ff.exit

ms_remove_ff.exit:                                ; preds = %if.end.i, %entry.ms_remove_ff.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 33
  %4 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %claimed, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %6 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hidinput, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %input6 = getelementptr inbounds %struct.hid_input, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %input6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input6, align 4
  %and7 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usage, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %land.lhs.true.cleanup_crit_edge [
    i32 -16711936, label %if.then9
    i32 -16711935, label %if.then19
    i32 -16711931, label %if.then29
  ]

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %and10 = and i32 %value, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 117, i32 noundef %and10) #4
  %and11 = lshr i32 %value, 1
  %and11.lobit = and i32 %and11, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 179, i32 noundef %and11.lobit) #4
  %and12 = lshr i32 %value, 2
  %and12.lobit = and i32 %and12, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 180, i32 noundef %and12.lobit) #4
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  %and20 = lshr i32 %value, 5
  %15 = and i32 %and20, 3
  %and21 = and i32 %value, 31
  %16 = zext i32 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and21, label %if.then19.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 31, label %sw.bb22
  ]

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i32 %15, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 8, i32 noundef %add) #4
  br label %cleanup

sw.bb22:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %sub = xor i32 %15, -1
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 8, i32 noundef %sub) #4
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true
  %17 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %value, label %if.else [
    i32 1, label %if.then29.if.then37_crit_edge
    i32 2, label %sw.bb31
    i32 4, label %sw.bb32
    i32 8, label %sw.bb33
    i32 16, label %sw.bb34
  ]

if.then29.if.then37_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

sw.bb31:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

sw.bb32:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

sw.bb33:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

sw.bb34:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.then37:                                        ; preds = %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %if.then29.if.then37_crit_edge
  %key.0.ph = phi i32 [ 185, %sw.bb31 ], [ 186, %sw.bb32 ], [ 187, %sw.bb33 ], [ 188, %sw.bb34 ], [ 184, %if.then29.if.then37_crit_edge ]
  %conv = zext i8 %9 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef %conv, i32 noundef %key.0.ph, i32 noundef 1) #4
  store i32 %key.0.ph, ptr @ms_event.last_key, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %conv40 = zext i8 %9 to i32
  %18 = load i32, ptr @ms_event.last_key, align 4
  tail call void @input_event(ptr noundef %11, i32 noundef %conv40, i32 noundef %18, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then37, %sw.bb22, %sw.bb, %if.then19.cleanup_crit_edge, %if.then9, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then19.cleanup_crit_edge ], [ 1, %sw.bb22 ], [ 1, %sw.bb ], [ 1, %if.else ], [ 1, %if.then37 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ms_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 571, i32 %5)
  %cmp = icmp eq i32 %5, 571
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %rdesc, i32 557
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %7)
  %cmp3 = icmp eq i8 %7, 25
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %arrayidx6 = getelementptr i8, ptr %rdesc, i32 559
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %9)
  %cmp8 = icmp eq i8 %9, 41
  br i1 %cmp8, label %do.end, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 53, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 69, ptr %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true5.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %4 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1.i, align 4
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage, align 4
  %and.i = and i32 %7, -65536
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and.i, label %if.then.if.end5_crit_edge [
    i32 786432, label %if.then.i
    i32 -16777216, label %if.end9.i
  ]

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then.i:                                        ; preds = %if.then
  %trunc68.i = trunc i32 %7 to i16
  %9 = zext i16 %trunc68.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %trunc68.i, label %if.then.i.if.end5_crit_edge [
    i16 669, label %sw.bb.i
    i16 670, label %sw.bb4.i
  ]

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %type19.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %10 = ptrtoint ptr %type19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %type19.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %11 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 148, ptr %code.i.i.i, align 2
  %12 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 767, ptr %max, align 4
  %13 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %keybit.i.i.i, ptr %bit, align 4
  %14 = load i16, ptr %code.i.i.i, align 2
  %conv1.i.i = zext i16 %14 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i, ptr noundef nonnull %keybit.i.i.i) #4
  br label %cleanup24

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %keybit.i.i70.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %type19.i.i78.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %15 = ptrtoint ptr %type19.i.i78.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %type19.i.i78.i, align 4
  %code.i.i79.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %16 = ptrtoint ptr %code.i.i79.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 149, ptr %code.i.i79.i, align 2
  %17 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 767, ptr %max, align 4
  %18 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %keybit.i.i70.i, ptr %bit, align 4
  %19 = load i16, ptr %code.i.i79.i, align 2
  %conv1.i80.i = zext i16 %19 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i80.i, ptr noundef nonnull %keybit.i.i70.i) #4
  br label %cleanup24

if.end9.i:                                        ; preds = %if.then
  %trunc.i = trunc i32 %7 to i16
  %20 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %trunc.i, label %if.end9.i.if.end5_crit_edge [
    i16 -762, label %sw.bb12.i
    i16 -761, label %sw.bb13.i
    i16 -256, label %sw.bb14.i
    i16 -255, label %sw.bb17.i
    i16 -254, label %if.end9.i.cleanup24_crit_edge
    i16 -251, label %sw.bb19.i
  ]

if.end9.i.cleanup24_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.end9.i.if.end5_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

sw.bb12.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %keybit.i.i84.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %type19.i.i92.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i92.i, align 4
  %code.i.i93.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i93.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 216, ptr %code.i.i93.i, align 2
  %23 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 767, ptr %max, align 4
  %24 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %keybit.i.i84.i, ptr %bit, align 4
  %25 = load i16, ptr %code.i.i93.i, align 2
  %conv1.i94.i = zext i16 %25 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i94.i, ptr noundef nonnull %keybit.i.i84.i) #4
  br label %cleanup24

sw.bb13.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %keybit.i.i98.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %type19.i.i106.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %26 = ptrtoint ptr %type19.i.i106.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %type19.i.i106.i, align 4
  %code.i.i107.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %27 = ptrtoint ptr %code.i.i107.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 169, ptr %code.i.i107.i, align 2
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 767, ptr %max, align 4
  %29 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %keybit.i.i98.i, ptr %bit, align 4
  %30 = load i16, ptr %code.i.i107.i, align 2
  %conv1.i108.i = zext i16 %30 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i108.i, ptr noundef nonnull %keybit.i.i98.i) #4
  br label %cleanup24

sw.bb14.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %keybit.i.i112.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %type19.i.i120.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %31 = ptrtoint ptr %type19.i.i120.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %type19.i.i120.i, align 4
  %code.i.i121.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %32 = ptrtoint ptr %code.i.i121.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 117, ptr %code.i.i121.i, align 2
  %33 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 767, ptr %max, align 4
  %34 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %keybit.i.i112.i, ptr %bit, align 4
  %35 = load i16, ptr %code.i.i121.i, align 2
  %conv1.i122.i = zext i16 %35 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i122.i, ptr noundef nonnull %keybit.i.i112.i) #4
  tail call void @_set_bit(i32 noundef 179, ptr noundef %keybit.i.i112.i) #4
  tail call void @_set_bit(i32 noundef 180, ptr noundef %keybit.i.i112.i) #4
  br label %cleanup24

sw.bb17.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %relbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 7
  %type19.i.i133.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %36 = ptrtoint ptr %type19.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %type19.i.i133.i, align 4
  %code.i.i134.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %37 = ptrtoint ptr %code.i.i134.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 8, ptr %code.i.i134.i, align 2
  %38 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 15, ptr %max, align 4
  %39 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %relbit.i.i.i, ptr %bit, align 4
  %40 = load i16, ptr %code.i.i134.i, align 2
  %conv1.i135.i = zext i16 %40 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i135.i, ptr noundef nonnull %relbit.i.i.i) #4
  br label %cleanup24

sw.bb19.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit.i) #4
  %41 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input1.i, align 4
  %keybit.i.i139.i = getelementptr inbounds %struct.input_dev, ptr %42, i32 0, i32 6
  %type19.i.i147.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %43 = ptrtoint ptr %type19.i.i147.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %type19.i.i147.i, align 4
  %code.i.i148.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %44 = ptrtoint ptr %code.i.i148.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 183, ptr %code.i.i148.i, align 2
  %45 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 767, ptr %max, align 4
  %46 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %keybit.i.i139.i, ptr %bit, align 4
  %47 = load i16, ptr %code.i.i148.i, align 2
  %conv1.i149.i = zext i16 %47 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i149.i, ptr noundef nonnull %keybit.i.i139.i) #4
  %keybit21.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 184, ptr noundef %keybit21.i) #4
  tail call void @_set_bit(i32 noundef 185, ptr noundef %keybit21.i) #4
  tail call void @_set_bit(i32 noundef 186, ptr noundef %keybit21.i) #4
  tail call void @_set_bit(i32 noundef 187, ptr noundef %keybit21.i) #4
  tail call void @_set_bit(i32 noundef 188, ptr noundef %keybit21.i) #4
  br label %cleanup24

if.end5:                                          ; preds = %if.end9.i.if.end5_crit_edge, %if.then.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %and6 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %land.lhs.true

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end5
  %48 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usage, align 4
  %and.i40 = and i32 %49, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %and.i40)
  %cmp.not.i = icmp eq i32 %and.i40, -16777216
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.i:                                         ; preds = %land.lhs.true
  %input.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %50 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input.i, align 4
  %evbit.i41 = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit.i41) #4
  %52 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %usage, align 4
  %trunc.i42 = trunc i32 %53 to i16
  %54 = zext i16 %trunc.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %trunc.i42, label %if.end.i.if.end11_crit_edge [
    i16 -760, label %sw.bb.i44
    i16 -759, label %sw.bb3.i
    i16 -757, label %sw.bb4.i48
    i16 -754, label %sw.bb5.i
    i16 -753, label %sw.bb6.i
  ]

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

sw.bb.i44:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input.i, align 4
  %keybit.i.i.i43 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i.i45 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i.i45 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i.i45, align 4
  %code.i.i.i46 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i.i46 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 159, ptr %code.i.i.i46, align 2
  %59 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 767, ptr %max, align 4
  %60 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %keybit.i.i.i43, ptr %bit, align 4
  %61 = load i16, ptr %code.i.i.i46, align 2
  %conv1.i.i47 = zext i16 %61 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i47, ptr noundef nonnull %keybit.i.i.i43) #4
  br label %cleanup24

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input.i, align 4
  %keybit.i.i27.i = getelementptr inbounds %struct.input_dev, ptr %63, i32 0, i32 6
  %type19.i.i35.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %64 = ptrtoint ptr %type19.i.i35.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %type19.i.i35.i, align 4
  %code.i.i36.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %65 = ptrtoint ptr %code.i.i36.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 158, ptr %code.i.i36.i, align 2
  %66 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 767, ptr %max, align 4
  %67 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %keybit.i.i27.i, ptr %bit, align 4
  %68 = load i16, ptr %code.i.i36.i, align 2
  %conv1.i37.i = zext i16 %68 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i37.i, ptr noundef nonnull %keybit.i.i27.i) #4
  br label %cleanup24

sw.bb4.i48:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %input.i, align 4
  %keybit.i.i41.i = getelementptr inbounds %struct.input_dev, ptr %70, i32 0, i32 6
  %type19.i.i49.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %71 = ptrtoint ptr %type19.i.i49.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %type19.i.i49.i, align 4
  %code.i.i50.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %72 = ptrtoint ptr %code.i.i50.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 164, ptr %code.i.i50.i, align 2
  %73 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 767, ptr %max, align 4
  %74 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %keybit.i.i41.i, ptr %bit, align 4
  %75 = load i16, ptr %code.i.i50.i, align 2
  %conv1.i51.i = zext i16 %75 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i51.i, ptr noundef nonnull %keybit.i.i41.i) #4
  br label %cleanup24

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %input.i, align 4
  %keybit.i.i55.i = getelementptr inbounds %struct.input_dev, ptr %77, i32 0, i32 6
  %type19.i.i63.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %78 = ptrtoint ptr %type19.i.i63.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %type19.i.i63.i, align 4
  %code.i.i64.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %79 = ptrtoint ptr %code.i.i64.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 206, ptr %code.i.i64.i, align 2
  %80 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 767, ptr %max, align 4
  %81 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %keybit.i.i55.i, ptr %bit, align 4
  %82 = load i16, ptr %code.i.i64.i, align 2
  %conv1.i65.i = zext i16 %82 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i65.i, ptr noundef nonnull %keybit.i.i55.i) #4
  br label %cleanup24

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %input.i, align 4
  %keybit.i.i69.i = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 6
  %type19.i.i77.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %85 = ptrtoint ptr %type19.i.i77.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %type19.i.i77.i, align 4
  %code.i.i78.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %86 = ptrtoint ptr %code.i.i78.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 207, ptr %code.i.i78.i, align 2
  %87 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 767, ptr %max, align 4
  %88 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %keybit.i.i69.i, ptr %bit, align 4
  %89 = load i16, ptr %code.i.i78.i, align 2
  %conv1.i79.i = zext i16 %89 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i79.i, ptr noundef nonnull %keybit.i.i69.i) #4
  br label %cleanup24

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %and12 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.cleanup24_crit_edge, label %if.then14

if.end11.cleanup24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.then14:                                        ; preds = %if.end11
  %90 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %usage, align 4
  %and.i50 = and i32 %91, -65536
  %92 = zext i32 %and.i50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and.i50, label %if.then14.ms_surface_dial_quirk.exit_crit_edge [
    i32 -16318464, label %if.then14.cleanup24_crit_edge
    i32 851968, label %if.then14.cleanup24_crit_edge59
    i32 65536, label %sw.bb1.i
  ]

if.then14.cleanup24_crit_edge59:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.then14.cleanup24_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

if.then14.ms_surface_dial_quirk.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %ms_surface_dial_quirk.exit

sw.bb1.i:                                         ; preds = %if.then14
  %93 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %91, label %sw.bb1.i.ms_surface_dial_quirk.exit_crit_edge [
    i32 65584, label %sw.bb1.i.cleanup24_crit_edge
    i32 65585, label %sw.bb1.i.cleanup24_crit_edge60
    i32 65734, label %sw.bb1.i.cleanup24_crit_edge61
  ]

sw.bb1.i.cleanup24_crit_edge61:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

sw.bb1.i.cleanup24_crit_edge60:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

sw.bb1.i.cleanup24_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup24

sw.bb1.i.ms_surface_dial_quirk.exit_crit_edge:    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ms_surface_dial_quirk.exit

ms_surface_dial_quirk.exit:                       ; preds = %sw.bb1.i.ms_surface_dial_quirk.exit_crit_edge, %if.then14.ms_surface_dial_quirk.exit_crit_edge
  br label %cleanup24

cleanup24:                                        ; preds = %ms_surface_dial_quirk.exit, %sw.bb1.i.cleanup24_crit_edge, %sw.bb1.i.cleanup24_crit_edge60, %sw.bb1.i.cleanup24_crit_edge61, %if.then14.cleanup24_crit_edge, %if.then14.cleanup24_crit_edge59, %if.end11.cleanup24_crit_edge, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i48, %sw.bb3.i, %sw.bb.i44, %sw.bb19.i, %sw.bb17.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %if.end9.i.cleanup24_crit_edge, %sw.bb4.i, %sw.bb.i
  %retval.3 = phi i32 [ 0, %ms_surface_dial_quirk.exit ], [ 0, %if.end11.cleanup24_crit_edge ], [ 1, %sw.bb17.i ], [ 1, %sw.bb13.i ], [ 1, %sw.bb12.i ], [ 1, %sw.bb4.i ], [ 1, %sw.bb.i ], [ 1, %sw.bb14.i ], [ 1, %sw.bb19.i ], [ -1, %if.end9.i.cleanup24_crit_edge ], [ 1, %sw.bb.i44 ], [ 1, %sw.bb3.i ], [ 1, %sw.bb4.i48 ], [ 1, %sw.bb5.i ], [ 1, %sw.bb6.i ], [ -1, %if.then14.cleanup24_crit_edge ], [ -1, %if.then14.cleanup24_crit_edge59 ], [ -1, %sw.bb1.i.cleanup24_crit_edge ], [ -1, %sw.bb1.i.cleanup24_crit_edge60 ], [ -1, %sw.bb1.i.cleanup24_crit_edge61 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms_input_mapped(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readonly %bit, ptr nocapture noundef readnone %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %code, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bit, align 4
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
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
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ms_ff_worker(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %output_report_dmabuf = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %output_report_dmabuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output_report_dmabuf, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 6)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %3, align 1
  %enable = getelementptr inbounds %struct.xb1s_ff_report, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %enable, align 1
  %duration_10ms = getelementptr inbounds %struct.xb1s_ff_report, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %duration_10ms to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %duration_10ms, align 1
  %loop_count = getelementptr inbounds %struct.xb1s_ff_report, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %loop_count to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %loop_count, align 1
  %strong = getelementptr i8, ptr %work, i32 44
  %10 = ptrtoint ptr %strong to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %strong, align 4
  %arrayidx = getelementptr %struct.xb1s_ff_report, ptr %3, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx, align 1
  %weak = getelementptr i8, ptr %work, i32 45
  %13 = ptrtoint ptr %weak to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %weak, align 1
  %arrayidx3 = getelementptr %struct.xb1s_ff_report, ptr %3, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx3, align 1
  %call = tail call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef %3, i32 noundef 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ms_play_effect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %1)
  %cmp.not = icmp eq i16 %1, 80
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i16 = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i16, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 4
  %conv3 = zext i16 %7 to i32
  %mul = mul nuw nsw i32 %conv3, 100
  %div = udiv i32 %mul, 65535
  %conv4 = trunc i32 %div to i8
  %strong = getelementptr inbounds %struct.ms_data, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %strong to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %strong, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %weak_magnitude, align 2
  %conv6 = zext i16 %10 to i32
  %mul7 = mul nuw nsw i32 %conv6, 100
  %div8 = udiv i32 %mul7, 65535
  %conv9 = trunc i32 %div8 to i8
  %weak = getelementptr inbounds %struct.ms_data, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %weak to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %weak, align 1
  %ff_worker = getelementptr inbounds %struct.ms_data, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %ff_worker) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_hid_microsoft__223_467_ms_driver_init6, !1, !"__initcall__kmod_hid_microsoft__223_467_ms_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-microsoft.c", i32 467, i32 1}
!2 = !{ptr @__exitcall_ms_driver_exit, !1, !"__exitcall_ms_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-microsoft.c", i32 469, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-microsoft.c", i32 458, i32 10}
!9 = !{ptr @ms_driver, !10, !"ms_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-microsoft.c", i32 457, i32 26}
!11 = !{ptr @ms_devices, !12, !"ms_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-microsoft.c", i32 413, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-microsoft.c", i32 387, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ms_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @ms_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-microsoft.c", i32 394, i32 3}
!23 = !{ptr @ms_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ms_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-microsoft.c", i32 400, i32 3}
!27 = !{ptr @ms_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ms_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-microsoft.c", i32 333, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ms_init_ff._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ms_init_ff._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ms_init_ff.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-microsoft.c", i32 343, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-microsoft.c", i32 304, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ms_ff_worker._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @ms_ff_worker._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ms_event.last_key, !44, !"last_key", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-microsoft.c", i32 260, i32 23}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-microsoft.c", i32 71, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ms_report_fixup._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @ms_report_fixup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!53 = distinct !{null, !52, !"_rs", i1 false, i1 false}
!54 = !{ptr @__func__.hid_map_usage, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hid_map_usage._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @hid_map_usage._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
