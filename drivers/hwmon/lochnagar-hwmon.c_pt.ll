; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lochnagar-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/lochnagar-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lochnagar_hwmon = type { ptr, [8 x i32], %struct.mutex }

@__initcall__kmod_lochnagar_hwmon__292_408_lochnagar_hwmon_driver_init6 = internal global ptr @lochnagar_hwmon_driver_init, section ".initcall6.init", align 4
@lochnagar_hwmon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lochnagar_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lochnagar_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lochnagar_hwmon_driver_exit = internal global ptr @lochnagar_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [69 x i8] c"lochnagar_hwmon.author=Lucas Tanure <tanureal@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [67 x i8] c"lochnagar_hwmon.description=Lochnagar hardware monitoring features\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [51 x i8] c"lochnagar_hwmon.file=drivers/hwmon/lochnagar-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [28 x i8] c"lochnagar_hwmon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lochnagar-hwmon\00", [16 x i8] zeroinitializer }, align 32
@lochnagar_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,lochnagar2-hwmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lochnagar_hwmon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->sensor_lock\00", [45 x i8] zeroinitializer }, align 32
@lochnagar_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No register map found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lochnagar_hwmon_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hwmon/lochnagar-hwmon.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lochnagar_hwmon_probe._entry_ptr = internal global ptr @lochnagar_hwmon_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Lochnagar\00", [22 x i8] zeroinitializer }, align 32
@lochnagar_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @lochnagar_ops, ptr @lochnagar_info }, [24 x i8] zeroinitializer }, align 32
@lochnagar_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @lochnagar_is_visible, ptr @lochnagar_read, ptr @lochnagar_read_string, ptr @lochnagar_write }, [16 x i8] zeroinitializer }, align 32
@lochnagar_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.21, ptr @.compoundliteral.23, ptr @.compoundliteral.25, ptr @.compoundliteral.27, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSVDD\00", [25 x i8] zeroinitializer }, align 32
@lochnagar_chan_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.8, ptr @.str.14, ptr @.str.15], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1V8 DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1V8 CDC\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VDDCORE DSP\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AVDD 1V8\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VDDCORE CDC\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@read_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to perform measurement: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_sensor\00", [20 x i8] zeroinitializer }, align 32
@read_sensor._entry_ptr = internal global ptr @read_sensor._entry, section ".printk_index", align 4
@read_sensor._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read measurement: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@read_sensor._entry_ptr.20 = internal global ptr @read_sensor._entry.18, section ".printk_index", align 4
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.22 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 1026, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.24 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 4194310, i32 4194310, i32 4194310, i32 4194310, i32 4194310, i32 4194310, i32 4194310, i32 4194310, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.26 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [23 x i8] c"lochnagar_hwmon_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 401, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 403, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"lochnagar_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 366, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 383, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 387, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 394, i32 56 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"lochnagar_chip_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 361, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"lochnagar_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 317, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"lochnagar_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 324, i32 41 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 243, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"lochnagar_chan_names\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 32, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 33, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 34, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 35, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 36, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 37, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 39, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 40, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 187, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [35 x i8] c"../drivers/hwmon/lochnagar-hwmon.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 193, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_lochnagar_hwmon_driver_exit, ptr @__initcall__kmod_lochnagar_hwmon__292_408_lochnagar_hwmon_driver_init6, ptr @lochnagar_hwmon_driver_exit, ptr @lochnagar_hwmon_probe._entry, ptr @lochnagar_hwmon_probe._entry_ptr, ptr @read_sensor._entry, ptr @read_sensor._entry.18, ptr @read_sensor._entry_ptr, ptr @read_sensor._entry_ptr.20, ptr @lochnagar_hwmon_driver, ptr @.str, ptr @lochnagar_of_match, ptr @lochnagar_hwmon_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @lochnagar_chip_info, ptr @lochnagar_ops, ptr @lochnagar_info, ptr @.str.8, ptr @lochnagar_chan_names, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.compoundliteral, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_hwmon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_hwmon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lochnagar_chan_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_sensor._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_hwmon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lochnagar_hwmon_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lochnagar_hwmon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @lochnagar_hwmon_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %sensor_lock = getelementptr inbounds %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %sensor_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lochnagar_hwmon_probe.__key) #10
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call2 = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #10
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end8, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 96, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 96, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 96, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 96, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 96, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 96, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 96, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.lochnagar_hwmon, ptr %call.i, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 96, ptr %arrayidx.7, align 4
  %call10 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i, ptr noundef nonnull @lochnagar_chip_info, ptr noundef null) #10
  %cmp.i.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %call10 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %11, i32 0
  br label %cleanup

do.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %for.body.preheader ], [ -22, %do.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lochnagar_is_visible(ptr nocapture noundef readnone %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr [8 x ptr], ptr @lochnagar_chan_names, i32 0, i32 %chan
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %cmp = icmp eq i32 %attr, 2
  br i1 %cmp, label %sw.bb1.return_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i16 [ 292, %sw.epilog ], [ 0, %sw.bb.return_crit_edge ], [ 420, %sw.bb1.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lochnagar_read(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %chan, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 1, label %sw.bb4
    i32 4, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @read_sensor(ptr noundef %dev, i32 noundef %chan, i32 noundef 1, i32 noundef 1, i32 noundef 1000, ptr noundef %val)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call fastcc i32 @read_sensor(ptr noundef %dev, i32 noundef %chan, i32 noundef 0, i32 noundef 1, i32 noundef 1000, ptr noundef %val)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @read_sensor(ptr noundef %dev, i32 noundef %chan, i32 noundef 2, i32 noundef 1, i32 noundef 1000, ptr noundef %val)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %attr, label %sw.bb6.cleanup_crit_edge [
    i32 1, label %sw.bb7
    i32 2, label %sw.bb9
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb6
  %arrayidx.i = getelementptr %struct.lochnagar_hwmon, ptr %1, i32 0, i32 1, i32 %chan
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [8 x ptr], ptr @lochnagar_chan_names, i32 0, i32 %chan
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  %call2.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.8, ptr noundef %7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %sw.bb7.if.end6.i_crit_edge, label %if.else.i

sw.bb7.if.end6.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.else.i:                                        ; preds = %sw.bb7
  %call3.i = tail call fastcc i32 @read_sensor(ptr noundef %dev, i32 noundef %chan, i32 noundef 1, i32 noundef 1, i32 noundef 1000000, ptr noundef %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.else.i.cleanup_crit_edge, label %if.end.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 false) #10
  %conv.i = sext i32 %10 to i64
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %sw.bb7.if.end6.i_crit_edge
  %power.0.i = phi i64 [ %conv.i, %if.end.i ], [ 5000000, %sw.bb7.if.end6.i_crit_edge ]
  %call7.i = tail call fastcc i32 @read_sensor(ptr noundef %dev, i32 noundef %chan, i32 noundef 0, i32 noundef %5, i32 noundef 1000000, ptr noundef %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.cleanup_crit_edge, label %if.end11.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 false) #10
  %conv21.i = sext i32 %13 to i64
  %mul.i = mul nsw i64 %power.0.i, %conv21.i
  %add.i = add nsw i64 %mul.i, 500000
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add.i) #16, !srcloc !71
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add.i, i64 %14, i32 0) #16, !srcloc !72
  %asmresult10.i.i = extractvalue { i64, i32 } %15, 0
  %div197332.i = lshr i64 %asmresult10.i.i, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 562949953421311, i64 %asmresult10.i.i)
  %cmp220.i = icmp ugt i64 %asmresult10.i.i, 562949953421311
  %conv224.i = trunc i64 %div197332.i to i32
  %storemerge.i = select i1 %cmp220.i, i32 2147483647, i32 %conv224.i
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.lochnagar_hwmon, ptr %1, i32 0, i32 1, i32 %chan
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %18, 1670
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 1000
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %if.end11.i, %if.end6.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb9 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ -95, %sw.bb6.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end11.i ], [ %call3.i, %if.else.i.cleanup_crit_edge ], [ %call7.i, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lochnagar_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %chan, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.off = add i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type.off)
  %switch = icmp ult i32 %type.off, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [8 x ptr], ptr @lochnagar_chan_names, i32 0, i32 %chan
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %str, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lochnagar_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %chan, i32 noundef %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %cmp1.not = icmp eq i32 %attr, 2
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %val, i32 1)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 1708)
  %mul = mul nuw nsw i32 %3, 1000
  %add = add nuw nsw i32 %mul, 835
  %div1634 = udiv i32 %add, 1670
  %arrayidx = getelementptr %struct.lochnagar_hwmon, ptr %1, i32 0, i32 1, i32 %chan
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div1634, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_sensor(ptr noundef %dev, i32 noundef %chan, i32 noundef %mode, i32 noundef %nsamples, i32 noundef %precision, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %val.i22 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sensor_lock = getelementptr inbounds %struct.lochnagar_hwmon, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %sensor_lock, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !73
  %add.i = add i32 %chan, 2
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl.i, %mode
  %or1.i = or i32 %or.i, 32768
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 264, i32 noundef %or1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do_measurement.exit.thread_crit_edge, label %if.end.i

entry.do_measurement.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 265, i32 noundef %nsamples) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do_measurement.exit.thread_crit_edge, label %if.end5.i

if.end.i.do_measurement.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 266, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.do_measurement.exit.thread_crit_edge, label %if.end9.i

if.end5.i.do_measurement.exit.thread_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call10.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 115) #10
  %call21170.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 266, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21170.i)
  %tobool.not171.i = icmp eq i32 %call21170.i, 0
  br i1 %tobool.not171.i, label %if.end9.i.lor.lhs.false.i_crit_edge, label %if.end9.i.lor.end.i_crit_edge

if.end9.i.lor.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

if.end9.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end9.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then33.i.lor.lhs.false.i_crit_edge, %if.end9.i.lor.lhs.false.i_crit_edge
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call26.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call26.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call26.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then33.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %call21.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 266, ptr noundef nonnull %val.i) #10
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %if.then33.i.lor.lhs.false.i_crit_edge, label %if.then33.i.lor.end.i_crit_edge

if.then33.i.lor.end.i_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

if.then33.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %call30.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 266, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool36.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool36.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.lor.end.i_crit_edge

for.end.i.lor.end.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and37.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %lor.rhs.i.do_measurement.exit.thread_crit_edge, label %lor.rhs.i.if.end44.i_crit_edge

lor.rhs.i.if.end44.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

lor.rhs.i.do_measurement.exit.thread_crit_edge:   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

lor.end.i:                                        ; preds = %for.end.i.lor.end.i_crit_edge, %if.then33.i.lor.end.i_crit_edge, %if.end9.i.lor.end.i_crit_edge
  %tobool36.not152.i = phi i32 [ %call30.i, %for.end.i.lor.end.i_crit_edge ], [ %call21170.i, %if.end9.i.lor.end.i_crit_edge ], [ %call21.i, %if.then33.i.lor.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool36.not152.i)
  %cmp42.i = icmp slt i32 %tobool36.not152.i, 0
  br i1 %cmp42.i, label %lor.end.i.do_measurement.exit.thread_crit_edge, label %lor.end.i.if.end44.i_crit_edge

lor.end.i.if.end44.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

lor.end.i.do_measurement.exit.thread_crit_edge:   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

if.end44.i:                                       ; preds = %lor.end.i.if.end44.i_crit_edge, %lor.rhs.i.if.end44.i_crit_edge
  %call45.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 266, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %if.end44.i.do_measurement.exit.thread_crit_edge, label %if.end48.i

if.end44.i.do_measurement.exit.thread_crit_edge:  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

if.end48.i:                                       ; preds = %if.end44.i
  %mul.i = mul i32 %nsamples, 3
  %div.i = sdiv i32 %mul.i, 2
  call void @msleep(i32 noundef %div.i) #10
  %call54.i = call i64 @ktime_get() #10
  %add.i143.i = add i64 %call54.i, 200000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 135) #10
  %call69172.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 266, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69172.i)
  %tobool70.not173.i = icmp eq i32 %call69172.i, 0
  br i1 %tobool70.not173.i, label %if.end48.i.lor.lhs.false71.i_crit_edge, label %if.end48.i.lor.end95.i_crit_edge

if.end48.i.lor.end95.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end95.i

if.end48.i.lor.lhs.false71.i_crit_edge:           ; preds = %if.end48.i
  br label %lor.lhs.false71.i

lor.lhs.false71.i:                                ; preds = %if.then85.i.lor.lhs.false71.i_crit_edge, %if.end48.i.lor.lhs.false71.i_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and72.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %land.lhs.true77.i, label %lor.lhs.false71.i.lor.rhs92.i_crit_edge

lor.lhs.false71.i.lor.rhs92.i_crit_edge:          ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs92.i

land.lhs.true77.i:                                ; preds = %lor.lhs.false71.i
  %call78.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call78.i, i64 %add.i143.i)
  %cmp3.i145.i = icmp sgt i64 %call78.i, %add.i143.i
  br i1 %cmp3.i145.i, label %for.end89.i, label %if.then85.i

if.then85.i:                                      ; preds = %land.lhs.true77.i
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #10
  %call69.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 266, ptr noundef nonnull %val.i) #10
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then85.i.lor.lhs.false71.i_crit_edge, label %if.then85.i.lor.end95.i_crit_edge

if.then85.i.lor.end95.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end95.i

if.then85.i.lor.lhs.false71.i_crit_edge:          ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false71.i

for.end89.i:                                      ; preds = %land.lhs.true77.i
  %call82.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 266, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool91.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool91.not.i, label %for.end89.i.lor.rhs92.i_crit_edge, label %for.end89.i.lor.end95.i_crit_edge

for.end89.i.lor.end95.i_crit_edge:                ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end95.i

for.end89.i.lor.rhs92.i_crit_edge:                ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs92.i

lor.rhs92.i:                                      ; preds = %for.end89.i.lor.rhs92.i_crit_edge, %lor.lhs.false71.i.lor.rhs92.i_crit_edge
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %and93.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %lor.rhs92.i.do_measurement.exit.thread_crit_edge, label %lor.rhs92.i.do_measurement.exit_crit_edge

lor.rhs92.i.do_measurement.exit_crit_edge:        ; preds = %lor.rhs92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit

lor.rhs92.i.do_measurement.exit.thread_crit_edge: ; preds = %lor.rhs92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

lor.end95.i:                                      ; preds = %for.end89.i.lor.end95.i_crit_edge, %if.then85.i.lor.end95.i_crit_edge, %if.end48.i.lor.end95.i_crit_edge
  %tobool91.not161.i = phi i32 [ %call82.i, %for.end89.i.lor.end95.i_crit_edge ], [ %call69172.i, %if.end48.i.lor.end95.i_crit_edge ], [ %call69.i, %if.then85.i.lor.end95.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool91.not161.i)
  %cmp103.i = icmp slt i32 %tobool91.not161.i, 0
  br i1 %cmp103.i, label %lor.end95.i.do_measurement.exit.thread_crit_edge, label %lor.end95.i.do_measurement.exit_crit_edge

lor.end95.i.do_measurement.exit_crit_edge:        ; preds = %lor.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit

lor.end95.i.do_measurement.exit.thread_crit_edge: ; preds = %lor.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_measurement.exit.thread

do_measurement.exit.thread:                       ; preds = %lor.end95.i.do_measurement.exit.thread_crit_edge, %lor.rhs92.i.do_measurement.exit.thread_crit_edge, %if.end44.i.do_measurement.exit.thread_crit_edge, %lor.end.i.do_measurement.exit.thread_crit_edge, %lor.rhs.i.do_measurement.exit.thread_crit_edge, %if.end5.i.do_measurement.exit.thread_crit_edge, %if.end.i.do_measurement.exit.thread_crit_edge, %entry.do_measurement.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %lor.rhs92.i.do_measurement.exit.thread_crit_edge ], [ -110, %lor.rhs.i.do_measurement.exit.thread_crit_edge ], [ %tobool91.not161.i, %lor.end95.i.do_measurement.exit.thread_crit_edge ], [ %call45.i, %if.end44.i.do_measurement.exit.thread_crit_edge ], [ %tobool36.not152.i, %lor.end.i.do_measurement.exit.thread_crit_edge ], [ %call6.i, %if.end5.i.do_measurement.exit.thread_crit_edge ], [ %call2.i, %if.end.i.do_measurement.exit.thread_crit_edge ], [ %call.i, %entry.do_measurement.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %do.end

do_measurement.exit:                              ; preds = %lor.end95.i.do_measurement.exit_crit_edge, %lor.rhs92.i.do_measurement.exit_crit_edge
  %call106.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 266, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %cmp = icmp slt i32 %call106.i, 0
  br i1 %cmp, label %do_measurement.exit.do.end_crit_edge, label %if.end

do_measurement.exit.do.end_crit_edge:             ; preds = %do_measurement.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %do_measurement.exit.do.end_crit_edge, %do_measurement.exit.thread
  %retval.0.i49 = phi i32 [ %retval.0.i.ph, %do_measurement.exit.thread ], [ %call106.i, %do_measurement.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i49) #13
  br label %error

if.end:                                           ; preds = %do_measurement.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i22) #10
  %13 = ptrtoint ptr %val.i22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i22, align 4, !annotation !73
  %shl.i23 = shl i32 %chan, 4
  %or.i24 = or i32 %shl.i23, 128
  %call.i25 = call i32 @regmap_write(ptr noundef %3, i32 noundef 267, i32 noundef %or.i24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %if.end.request_data.exit.thread_crit_edge, label %if.end.i28

if.end.request_data.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_data.exit.thread

if.end.i28:                                       ; preds = %if.end
  %call1.i = call i64 @ktime_get() #10
  %add.i.i27 = add i64 %call1.i, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 155) #10
  %call1277.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 267, ptr noundef nonnull %val.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1277.i)
  %tobool.not78.i = icmp eq i32 %call1277.i, 0
  br i1 %tobool.not78.i, label %if.end.i28.lor.lhs.false.i30_crit_edge, label %if.end.i28.lor.end.i37_crit_edge

if.end.i28.lor.end.i37_crit_edge:                 ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i37

if.end.i28.lor.lhs.false.i30_crit_edge:           ; preds = %if.end.i28
  br label %lor.lhs.false.i30

lor.lhs.false.i30:                                ; preds = %if.then24.i.lor.lhs.false.i30_crit_edge, %if.end.i28.lor.lhs.false.i30_crit_edge
  %14 = ptrtoint ptr %val.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i22, align 4
  %and.i29 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool13.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i32, label %lor.lhs.false.i30.lor.rhs.i36_crit_edge

lor.lhs.false.i30.lor.rhs.i36_crit_edge:          ; preds = %lor.lhs.false.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i36

land.lhs.true.i32:                                ; preds = %lor.lhs.false.i30
  %call17.i = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i27)
  %cmp3.i.i31 = icmp sgt i64 %call17.i, %add.i.i27
  br i1 %cmp3.i.i31, label %for.end.i35, label %if.then24.i

if.then24.i:                                      ; preds = %land.lhs.true.i32
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %call12.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 267, ptr noundef nonnull %val.i22) #10
  %tobool.not.i33 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i33, label %if.then24.i.lor.lhs.false.i30_crit_edge, label %if.then24.i.lor.end.i37_crit_edge

if.then24.i.lor.end.i37_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i37

if.then24.i.lor.lhs.false.i30_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i30

for.end.i35:                                      ; preds = %land.lhs.true.i32
  %call21.i34 = call i32 @regmap_read(ptr noundef %3, i32 noundef 267, ptr noundef nonnull %val.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i34)
  %tobool26.not.i = icmp eq i32 %call21.i34, 0
  br i1 %tobool26.not.i, label %for.end.i35.lor.rhs.i36_crit_edge, label %for.end.i35.lor.end.i37_crit_edge

for.end.i35.lor.end.i37_crit_edge:                ; preds = %for.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i37

for.end.i35.lor.rhs.i36_crit_edge:                ; preds = %for.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i36

lor.rhs.i36:                                      ; preds = %for.end.i35.lor.rhs.i36_crit_edge, %lor.lhs.false.i30.lor.rhs.i36_crit_edge
  %16 = ptrtoint ptr %val.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i22, align 4
  %and27.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %lor.rhs.i36.request_data.exit.thread_crit_edge, label %lor.rhs.i36.if.end34.i_crit_edge

lor.rhs.i36.if.end34.i_crit_edge:                 ; preds = %lor.rhs.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs.i36.request_data.exit.thread_crit_edge:   ; preds = %lor.rhs.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_data.exit.thread

lor.end.i37:                                      ; preds = %for.end.i35.lor.end.i37_crit_edge, %if.then24.i.lor.end.i37_crit_edge, %if.end.i28.lor.end.i37_crit_edge
  %tobool26.not70.i = phi i32 [ %call21.i34, %for.end.i35.lor.end.i37_crit_edge ], [ %call1277.i, %if.end.i28.lor.end.i37_crit_edge ], [ %call12.i, %if.then24.i.lor.end.i37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool26.not70.i)
  %cmp32.i = icmp slt i32 %tobool26.not70.i, 0
  br i1 %cmp32.i, label %lor.end.i37.request_data.exit.thread_crit_edge, label %lor.end.i37.if.end34.i_crit_edge

lor.end.i37.if.end34.i_crit_edge:                 ; preds = %lor.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.end.i37.request_data.exit.thread_crit_edge:   ; preds = %lor.end.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_data.exit.thread

if.end34.i:                                       ; preds = %lor.end.i37.if.end34.i_crit_edge, %lor.rhs.i36.if.end34.i_crit_edge
  %call35.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 268, ptr noundef nonnull %val.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end34.i.request_data.exit.thread_crit_edge, label %if.end38.i

if.end34.i.request_data.exit.thread_crit_edge:    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_data.exit.thread

if.end38.i:                                       ; preds = %if.end34.i
  %18 = ptrtoint ptr %val.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i22, align 4
  %call40.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 269, ptr noundef nonnull %val.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.end38.i.request_data.exit.thread_crit_edge, label %request_data.exit

if.end38.i.request_data.exit.thread_crit_edge:    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %request_data.exit.thread

request_data.exit.thread:                         ; preds = %if.end38.i.request_data.exit.thread_crit_edge, %if.end34.i.request_data.exit.thread_crit_edge, %lor.end.i37.request_data.exit.thread_crit_edge, %lor.rhs.i36.request_data.exit.thread_crit_edge, %if.end.request_data.exit.thread_crit_edge
  %retval.0.i39.ph = phi i32 [ -110, %lor.rhs.i36.request_data.exit.thread_crit_edge ], [ %call40.i, %if.end38.i.request_data.exit.thread_crit_edge ], [ %call35.i, %if.end34.i.request_data.exit.thread_crit_edge ], [ %tobool26.not70.i, %lor.end.i37.request_data.exit.thread_crit_edge ], [ %call.i25, %if.end.request_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i22) #10
  br label %do.end8

request_data.exit:                                ; preds = %if.end38.i
  %shl39.i = shl i32 %19, 16
  %20 = ptrtoint ptr %val.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i22, align 4
  %or44.i = or i32 %21, %shl39.i
  %call45.i38 = call i32 @regmap_write(ptr noundef %3, i32 noundef 267, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i38)
  %cmp4 = icmp slt i32 %call45.i38, 0
  br i1 %cmp4, label %request_data.exit.do.end8_crit_edge, label %if.end9

request_data.exit.do.end8_crit_edge:              ; preds = %request_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end8:                                          ; preds = %request_data.exit.do.end8_crit_edge, %request_data.exit.thread
  %retval.0.i3953 = phi i32 [ %retval.0.i39.ph, %request_data.exit.thread ], [ %call45.i38, %request_data.exit.do.end8_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i3953) #13
  br label %error

if.end9:                                          ; preds = %request_data.exit
  %and.i40 = and i32 %or44.i, 8388607
  %and1.i = lshr i32 %or44.i, 23
  %shr.i = and i32 %and1.i, 255
  %sub2.i = add nsw i32 %shr.i, -150
  %22 = or i32 %and.i40, 8388608
  %add.i41 = zext i32 %22 to i64
  %conv4.i = zext i32 %precision to i64
  %mul.i42 = mul nuw nsw i64 %add.i41, %conv4.i
  %shr.i.i = lshr i64 %mul.i42, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %23 = call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 false) #10, !range !74
  %24 = sub nsw i32 %shr.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 117, i32 %24)
  %cmp.i43 = icmp sgt i32 %24, 117
  br i1 %cmp.i43, label %if.end9.float_to_long.exit_crit_edge, label %if.else.i

if.end9.float_to_long.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %float_to_long.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %shr.i)
  %cmp7.i44 = icmp ult i32 %shr.i, 150
  br i1 %cmp7.i44, label %if.then9.i, label %if.else17.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub10.i = sub nuw nsw i32 150, %shr.i
  %sub11.i = sub nuw nsw i32 149, %shr.i
  %sh_prom.i = zext i32 %sub11.i to i64
  %shl.i45 = shl nuw i64 1, %sh_prom.i
  %add12.i = add nuw i64 %shl.i45, %mul.i42
  %sh_prom14.i = zext i32 %sub10.i to i64
  %shr15.i = lshr i64 %add12.i, %sh_prom14.i
  %conv16.i = trunc i64 %shr15.i to i32
  br label %float_to_long.exit

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom18.i = zext i32 %sub2.i to i64
  %shl19.i = shl i64 %mul.i42, %sh_prom18.i
  %conv20.i = trunc i64 %shl19.i to i32
  br label %float_to_long.exit

float_to_long.exit:                               ; preds = %if.else17.i, %if.then9.i, %if.end9.float_to_long.exit_crit_edge
  %result.0.i = phi i32 [ %conv16.i, %if.then9.i ], [ %conv20.i, %if.else17.i ], [ 2147483647, %if.end9.float_to_long.exit_crit_edge ]
  %sub24.i = sub i32 0, %result.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or44.i)
  %tobool.not35.i = icmp slt i32 %or44.i, 0
  %cond.i = select i1 %tobool.not35.i, i32 %sub24.i, i32 %result.0.i
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.i, ptr %val, align 4
  br label %error

error:                                            ; preds = %float_to_long.exit, %do.end8, %do.end
  %ret.0 = phi i32 [ %retval.0.i49, %do.end ], [ %retval.0.i3953, %do.end8 ], [ %call45.i38, %float_to_long.exit ]
  call void @mutex_unlock(ptr noundef %sensor_lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_lochnagar_hwmon__292_408_lochnagar_hwmon_driver_init6, !1, !"__initcall__kmod_lochnagar_hwmon__292_408_lochnagar_hwmon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 408, i32 1}
!2 = !{ptr @__exitcall_lochnagar_hwmon_driver_exit, !1, !"__exitcall_lochnagar_hwmon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 410, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 411, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 412, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 403, i32 11}
!12 = !{ptr @lochnagar_hwmon_driver, !13, !"lochnagar_hwmon_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 401, i32 31}
!14 = !{ptr @lochnagar_hwmon_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 383, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 387, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lochnagar_hwmon_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lochnagar_hwmon_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 394, i32 56}
!27 = !{ptr @lochnagar_chip_info, !28, !"lochnagar_chip_info", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 361, i32 37}
!29 = !{ptr @lochnagar_ops, !30, !"lochnagar_ops", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 317, i32 31}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 243, i32 15}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 33, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 34, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 35, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 36, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 37, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 39, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 40, i32 2}
!47 = !{ptr @lochnagar_chan_names, !48, !"lochnagar_chan_names", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 32, i32 27}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 187, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @read_sensor._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @read_sensor._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 193, i32 3}
!56 = !{ptr @read_sensor._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @read_sensor._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @lochnagar_info, !59, !"lochnagar_info", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 324, i32 41}
!60 = !{ptr @lochnagar_of_match, !61, !"lochnagar_of_match", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/lochnagar-hwmon.c", i32 366, i32 34}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 482750, i64 482777}
!72 = !{i64 483445, i64 483472, i64 483505, i64 483526, i64 483553, i64 483579}
!73 = !{!"auto-init"}
!74 = !{i32 0, i32 33}
