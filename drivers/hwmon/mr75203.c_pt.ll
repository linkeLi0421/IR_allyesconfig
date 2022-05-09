; ModuleID = '/llk/IR_all_yes/drivers/hwmon/mr75203.c_pt.bc'
source_filename = "../drivers/hwmon/mr75203.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
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
%struct.pvt_device = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_mr75203__174_654_moortec_pvt_driver_init6 = internal global ptr @moortec_pvt_driver_init, section ".initcall6.init", align 4
@moortec_pvt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mr75203_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @moortec_pvt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_moortec_pvt_driver_exit = internal global ptr @moortec_pvt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file175 = internal constant [35 x i8] c"mr75203.file=drivers/hwmon/mr75203\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [23 x i8] c"mr75203.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"moortec-pvt\00", [20 x i8] zeroinitializer }, align 32
@moortec_pvt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"moortec,mr75203\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"common\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@mr75203_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 524, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mr75203_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/mr75203.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mr75203_probe._entry_ptr = internal global ptr @mr75203_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot deassert reset control\0A\00", [33 x i8] zeroinitializer }, align 32
@pvt_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @pvt_chip_config }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ts\00", [29 x i8] zeroinitializer }, align 32
@pvt_temp = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pd\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vm\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel,vm-map\00", [19 x i8] zeroinitializer }, align 32
@pvt_in = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr null }, [24 x i8] zeroinitializer }, align 32
@mr75203_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 628, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init pvt: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mr75203_probe._entry_ptr.16 = internal global ptr @mr75203_probe._entry.14, section ".printk_index", align 4
@pvt_chip_info = internal global { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @pvt_hwmon_ops, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pvt\00", [28 x i8] zeroinitializer }, align 32
@pvt_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pvt_get_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mr75203:455:(&pvt_regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@pvt_get_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 457, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init register map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pvt_get_regmap\00", [17 x i8] zeroinitializer }, align 32
@pvt_get_regmap._entry_ptr = internal global ptr @pvt_get_regmap._entry, section ".printk_index", align 4
@pvt_chip_config = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@pvt_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @pvt_is_visible, ptr @pvt_read, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"moortec_pvt_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 647, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 649, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"moortec_pvt_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 641, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 514, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 520, i32 48 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 524, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 531, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 535, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"pvt_chip\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 231, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 562, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"pvt_temp\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 236, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 577, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 585, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 594, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"pvt_in\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 240, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 628, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"pvt_chip_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 249, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 633, i32 56 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"pvt_regmap_config\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 426, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 455, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 457, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"pvt_chip_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 226, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"pvt_hwmon_ops\00", align 1
@___asan_gen_.116 = private constant [27 x i8] c"../drivers/hwmon/mr75203.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 244, i32 31 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_moortec_pvt_driver_exit, ptr @__initcall__kmod_mr75203__174_654_moortec_pvt_driver_init6, ptr @moortec_pvt_driver_exit, ptr @mr75203_probe._entry, ptr @mr75203_probe._entry.14, ptr @mr75203_probe._entry_ptr, ptr @mr75203_probe._entry_ptr.16, ptr @pvt_get_regmap._entry, ptr @pvt_get_regmap._entry_ptr, ptr @moortec_pvt_driver, ptr @.str, ptr @moortec_pvt_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pvt_chip, ptr @.str.10, ptr @pvt_temp, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pvt_in, ptr @.str.15, ptr @pvt_chip_info, ptr @.str.17, ptr @pvt_regmap_config, ptr @pvt_get_regmap._key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pvt_chip_config, ptr @pvt_hwmon_ops], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moortec_pvt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moortec_pvt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mr75203_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_temp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_in to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mr75203_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_get_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_get_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @moortec_pvt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @moortec_pvt_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @moortec_pvt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @moortec_pvt_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mr75203_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !73
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @pvt_get_regmap(ptr noundef %pdev, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup132_crit_edge

if.end.cleanup132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.pvt_device, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call6 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.2) #8
  br label %cleanup132

if.end13:                                         ; preds = %if.end5
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i.i:                                       ; preds = %if.end13
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %call.i4.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pvt_clk_disable, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end17, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %4) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %4, %if.then.i.i ], [ %call6, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i4.i, %if.then.i.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #8
  br label %do.end

do.end:                                           ; preds = %cleanup.sink.split.i, %if.end13.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %if.end13.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  br label %cleanup132

if.end17:                                         ; preds = %if.end.i
  %call.i239 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.pvt_device, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i239, ptr %rst, align 4
  %cmp.i240 = icmp ugt ptr %call.i239, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call.i239 to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.8) #8
  br label %cleanup132

if.end25:                                         ; preds = %if.end17
  %call.i241 = tail call i32 @reset_control_deassert(ptr noundef %call.i239) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool.not.i = icmp eq i32 %call.i241, 0
  br i1 %tobool.not.i, label %if.end.i244, label %if.end25.if.then28_crit_edge

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end.i244:                                      ; preds = %if.end25
  %call.i.i242 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @pvt_reset_control_assert, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %tobool.not.i.i243 = icmp eq i32 %call.i.i242, 0
  br i1 %tobool.not.i.i243, label %if.end30, label %if.then.i.i246

if.then.i.i246:                                   ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rst, align 4
  %call.i4.i245 = tail call i32 @reset_control_assert(ptr noundef %8) #8
  br label %if.then28

if.then28:                                        ; preds = %if.then.i.i246, %if.end25.if.then28_crit_edge
  %retval.0.i247.ph = phi i32 [ %call.i.i242, %if.then.i.i246 ], [ %call.i241, %if.end25.if.then28_crit_edge ]
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i247.ph, ptr noundef nonnull @.str.9) #8
  br label %cleanup132

if.end30:                                         ; preds = %if.end.i244
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call31 = call i32 @regmap_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end30.cleanup132_crit_edge, label %if.end33

if.end30.cleanup132_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.end33:                                         ; preds = %if.end30
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 31
  %and34 = lshr i32 %12, 8
  %shr35 = and i32 %and34, 31
  %and36 = lshr i32 %12, 16
  %shr37 = and i32 %and36, 31
  %t_num = getelementptr inbounds %struct.pvt_device, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %t_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %t_num, align 4
  %p_num = getelementptr inbounds %struct.pvt_device, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %p_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr35, ptr %p_num, align 4
  %v_num = getelementptr inbounds %struct.pvt_device, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %v_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr37, ptr %v_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  %not.tobool38.not = xor i1 %tobool38.not, true
  %spec.select = zext i1 %not.tobool38.not to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr37)
  %tobool41.not = icmp eq i32 %shr37, 0
  br i1 %tobool41.not, label %if.end44, label %devm_kcalloc.exit

if.end44:                                         ; preds = %if.end33
  br i1 %tobool38.not, label %if.end44.cleanup132_crit_edge, label %devm_kcalloc.exit.thread

if.end44.cleanup132_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

devm_kcalloc.exit:                                ; preds = %if.end33
  %inc43 = select i1 %tobool38.not, i32 1, i32 2
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc43, ptr %val, align 4
  %phi.bo = shl nuw nsw i32 %inc43, 2
  %phi.bo282 = add nuw nsw i32 %phi.bo, 8
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %phi.bo282, i32 noundef 3520) #8
  %tobool49.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool49.not, label %devm_kcalloc.exit.cleanup132_crit_edge, label %if.end51

devm_kcalloc.exit.cleanup132_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

devm_kcalloc.exit.thread:                         ; preds = %if.end44
  %call5.i.i289 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #8
  %tobool49.not290 = icmp eq ptr %call5.i.i289, null
  br i1 %tobool49.not290, label %devm_kcalloc.exit.thread.cleanup132_crit_edge, label %if.end51.thread

devm_kcalloc.exit.thread.cleanup132_crit_edge:    ; preds = %devm_kcalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.end51.thread:                                  ; preds = %devm_kcalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call5.i.i289 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pvt_chip, ptr %call5.i.i289, align 4
  br label %if.then53

if.end51:                                         ; preds = %devm_kcalloc.exit
  %19 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pvt_chip, ptr %call5.i.i, align 4
  br i1 %tobool38.not, label %if.end51.if.end66_crit_edge, label %if.end51.if.then53_crit_edge

if.end51.if.then53_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then53:                                        ; preds = %if.end51.if.then53_crit_edge, %if.end51.thread
  %call5.i.i291295 = phi ptr [ %call5.i.i289, %if.end51.thread ], [ %call5.i.i, %if.end51.if.then53_crit_edge ]
  %call54 = call fastcc i32 @pvt_get_regmap(ptr noundef %pdev, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %devm_kcalloc.exit252, label %if.then53.cleanup132_crit_edge

if.then53.cleanup132_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

devm_kcalloc.exit252:                             ; preds = %if.then53
  %add58 = shl nuw nsw i32 %and, 2
  %20 = add nuw nsw i32 %add58, 4
  %call5.i.i249 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %20, i32 noundef 3520) #8
  %tobool60.not = icmp eq ptr %call5.i.i249, null
  br i1 %tobool60.not, label %devm_kcalloc.exit252.cleanup132_crit_edge, label %if.end62

devm_kcalloc.exit252.cleanup132_crit_edge:        ; preds = %devm_kcalloc.exit252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.end62:                                         ; preds = %devm_kcalloc.exit252
  call void @__sanitizer_cov_trace_pc() #10
  %call.i253 = call ptr @__memset32(ptr noundef nonnull %call5.i.i249, i32 noundef 2, i32 noundef %add58) #8
  store ptr %call5.i.i249, ptr getelementptr inbounds (%struct.hwmon_channel_info, ptr @pvt_temp, i32 0, i32 1), align 4
  %arrayidx65 = getelementptr ptr, ptr %call5.i.i291295, i32 1
  %21 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pvt_temp, ptr %arrayidx65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end62, %if.end51.if.end66_crit_edge
  %call5.i.i292 = phi ptr [ %call5.i.i291295, %if.end62 ], [ %call5.i.i, %if.end51.if.end66_crit_edge ]
  %index.0 = phi i32 [ 2, %if.end62 ], [ 1, %if.end51.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr35)
  %tobool67.not = icmp eq i32 %shr35, 0
  br i1 %tobool67.not, label %if.end66.if.end73_crit_edge, label %if.then68

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then68:                                        ; preds = %if.end66
  %call69 = call fastcc i32 @pvt_get_regmap(ptr noundef %pdev, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.if.end73_crit_edge, label %if.then68.cleanup132_crit_edge

if.then68.cleanup132_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.then68.if.end73_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end73:                                         ; preds = %if.then68.if.end73_crit_edge, %if.end66.if.end73_crit_edge
  br i1 %tobool41.not, label %if.end73.if.end122_crit_edge, label %if.then75

if.end73.if.end122_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then75:                                        ; preds = %if.end73
  %call76 = call fastcc i32 @pvt_get_regmap(ptr noundef %pdev, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %devm_kcalloc.exit257, label %if.then75.cleanup132_crit_edge

if.then75.cleanup132_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

devm_kcalloc.exit257:                             ; preds = %if.then75
  %call5.i.i254 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %shr37, i32 noundef 3520) #8
  %vm_idx = getelementptr inbounds %struct.pvt_device, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %vm_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i254, ptr %vm_idx, align 4
  %tobool82.not = icmp eq ptr %call5.i.i254, null
  br i1 %tobool82.not, label %devm_kcalloc.exit257.cleanup132_crit_edge, label %if.end84

devm_kcalloc.exit257.cleanup132_crit_edge:        ; preds = %devm_kcalloc.exit257
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

if.end84:                                         ; preds = %devm_kcalloc.exit257
  %call86 = call i32 @device_property_read_u8_array(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull %call5.i.i254, i32 noundef %shr37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.body.lr.ph, label %if.end84.if.end102_crit_edge

if.end84.if.end102_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

for.body.lr.ph:                                   ; preds = %if.end84
  %23 = ptrtoint ptr %vm_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vm_idx, align 4
  %25 = trunc i32 %shr37 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0284 = phi i32 [ 0, %for.body.lr.ph ], [ %inc101, %for.inc.for.body_crit_edge ]
  %arrayidx91 = getelementptr i8, ptr %24, i32 %i.0284
  %26 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx91, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %25)
  %cmp92.not = icmp ult i8 %27, %25
  br i1 %cmp92.not, label %for.inc, label %for.body.if.end102_crit_edge

for.body.if.end102_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

for.inc:                                          ; preds = %for.body
  %inc101 = add nuw nsw i32 %i.0284, 1
  %exitcond.not = icmp eq i32 %inc101, %shr37
  br i1 %exitcond.not, label %for.inc.for.end112_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end112_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

if.end102:                                        ; preds = %for.body.if.end102_crit_edge, %if.end84.if.end102_crit_edge
  %num.0 = phi i32 [ 0, %if.end84.if.end102_crit_edge ], [ %i.0284, %for.body.if.end102_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0, i32 %shr37)
  %cmp104286 = icmp ult i32 %num.0, %shr37
  br i1 %cmp104286, label %if.end102.for.body106_crit_edge, label %if.end102.for.end112_crit_edge

if.end102.for.end112_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

if.end102.for.body106_crit_edge:                  ; preds = %if.end102
  br label %for.body106

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %if.end102.for.body106_crit_edge
  %i.1287 = phi i32 [ %inc111, %for.body106.for.body106_crit_edge ], [ %num.0, %if.end102.for.body106_crit_edge ]
  %conv107 = trunc i32 %i.1287 to i8
  %28 = ptrtoint ptr %vm_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vm_idx, align 4
  %arrayidx109 = getelementptr i8, ptr %29, i32 %i.1287
  %30 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv107, ptr %arrayidx109, align 1
  %inc111 = add nuw nsw i32 %i.1287, 1
  %exitcond288.not = icmp eq i32 %inc111, %shr37
  br i1 %exitcond288.not, label %for.body106.for.end112_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body106

for.body106.for.end112_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.end112:                                       ; preds = %for.body106.for.end112_crit_edge, %if.end102.for.end112_crit_edge, %for.inc.for.end112_crit_edge
  %num.0298 = phi i32 [ %num.0, %if.end102.for.end112_crit_edge ], [ %num.0, %for.body106.for.end112_crit_edge ], [ %shr37, %for.inc.for.end112_crit_edge ]
  %add113 = add i32 %num.0298, 1
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add113, i32 4) #8
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %for.end112.cleanup132_crit_edge, label %devm_kcalloc.exit261, !prof !74

for.end112.cleanup132_crit_edge:                  ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

devm_kcalloc.exit261:                             ; preds = %for.end112
  %33 = extractvalue { i32, i1 } %31, 0
  %call5.i.i258 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %33, i32 noundef 3520) #8
  %tobool115.not = icmp eq ptr %call5.i.i258, null
  br i1 %tobool115.not, label %devm_kcalloc.exit261.cleanup132_crit_edge, label %cleanup

devm_kcalloc.exit261.cleanup132_crit_edge:        ; preds = %devm_kcalloc.exit261
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup132

cleanup:                                          ; preds = %devm_kcalloc.exit261
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i262 = shl i32 %num.0298, 2
  %call.i263 = call ptr @__memset32(ptr noundef nonnull %call5.i.i258, i32 noundef 2, i32 noundef %mul.i262) #8
  %arrayidx119 = getelementptr i32, ptr %call5.i.i258, i32 %num.0298
  %34 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx119, align 4
  store ptr %call5.i.i258, ptr getelementptr inbounds (%struct.hwmon_channel_info, ptr @pvt_in, i32 0, i32 1), align 4
  %arrayidx121 = getelementptr ptr, ptr %call5.i.i292, i32 %index.0
  %35 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pvt_in, ptr %arrayidx121, align 4
  br label %if.end122

if.end122:                                        ; preds = %cleanup, %if.end73.if.end122_crit_edge
  %call123 = call fastcc i32 @pvt_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end129, label %do.end128

do.end128:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call123) #11
  br label %cleanup132

if.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call5.i.i292, ptr getelementptr inbounds (%struct.hwmon_chip_info, ptr @pvt_chip_info, i32 0, i32 1), align 4
  %call130 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i, ptr noundef nonnull @pvt_chip_info, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call130 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %36, i32 0
  br label %cleanup132

cleanup132:                                       ; preds = %if.end129, %do.end128, %devm_kcalloc.exit261.cleanup132_crit_edge, %for.end112.cleanup132_crit_edge, %devm_kcalloc.exit257.cleanup132_crit_edge, %if.then75.cleanup132_crit_edge, %if.then68.cleanup132_crit_edge, %devm_kcalloc.exit252.cleanup132_crit_edge, %if.then53.cleanup132_crit_edge, %devm_kcalloc.exit.thread.cleanup132_crit_edge, %devm_kcalloc.exit.cleanup132_crit_edge, %if.end44.cleanup132_crit_edge, %if.end30.cleanup132_crit_edge, %if.then28, %if.then21, %do.end, %if.then9, %if.end.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  %retval.1 = phi i32 [ %call12, %if.then9 ], [ %retval.0.i.ph, %do.end ], [ %call24, %if.then21 ], [ %call29, %if.then28 ], [ %call123, %do.end128 ], [ %spec.select.i, %if.end129 ], [ -12, %entry.cleanup132_crit_edge ], [ %call2, %if.end.cleanup132_crit_edge ], [ %call31, %if.end30.cleanup132_crit_edge ], [ -19, %if.end44.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup132_crit_edge ], [ %call54, %if.then53.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit252.cleanup132_crit_edge ], [ %call69, %if.then68.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit261.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit257.cleanup132_crit_edge ], [ %call76, %if.then75.cleanup132_crit_edge ], [ -12, %for.end112.cleanup132_crit_edge ], [ -12, %devm_kcalloc.exit.thread.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvt_get_regmap(ptr noundef %pdev, ptr noundef %reg_name, ptr nocapture noundef %pvt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @strcmp(ptr noundef %reg_name, ptr noundef nonnull dereferenceable(7) @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(ptr noundef %reg_name, ptr noundef nonnull dereferenceable(3) @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %t_map = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 1
  br label %if.end16

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(ptr noundef %reg_name, ptr noundef nonnull dereferenceable(3) @.str.11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #10
  %p_map = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 2
  br label %if.end16

if.else9:                                         ; preds = %if.else5
  %call10 = tail call i32 @strcmp(ptr noundef %reg_name, ptr noundef nonnull dereferenceable(3) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else9.cleanup_crit_edge

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  %v_map = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 3
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then8, %if.then4, %entry.if.end16_crit_edge
  %reg_map.0 = phi ptr [ %v_map, %if.then12 ], [ %p_map, %if.then8 ], [ %t_map, %if.then4 ], [ %pvt, %entry.if.end16_crit_edge ]
  %call17 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef %reg_name) #8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  store ptr %reg_name, ptr @pvt_regmap_config, align 4
  %call22 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call17, ptr noundef nonnull @pvt_regmap_config, ptr noundef nonnull @pvt_get_regmap._key, ptr noundef nonnull @.str.18) #8
  %1 = ptrtoint ptr %reg_map.0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call22, ptr %reg_map.0, align 4
  %cmp.i43 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %do.end, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  %2 = ptrtoint ptr %reg_map.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_map.0, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end21.cleanup_crit_edge, %if.then19, %if.else9.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then19 ], [ %4, %do.end ], [ -22, %if.else9.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvt_init(ptr nocapture noundef %pvt) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t_map1 = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 1
  %0 = ptrtoint ptr %t_map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_map1, align 4
  %p_map2 = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 2
  %2 = ptrtoint ptr %p_map2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_map2, align 4
  %v_map3 = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 3
  %4 = ptrtoint ptr %v_map3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v_map3, align 4
  %t_num4 = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 6
  %6 = ptrtoint ptr %t_num4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_num4, align 4
  %p_num5 = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 7
  %8 = ptrtoint ptr %p_num5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p_num5, align 4
  %v_num6 = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 8
  %10 = ptrtoint ptr %v_num6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v_num6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val, align 4, !annotation !73
  %clk = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 4
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %14) #8
  %div = udiv i32 %call, 1000000
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.else.while.body.lr.ph_crit_edge, %entry
  %low.0.ph780 = phi i16 [ 4, %entry ], [ %low.0777, %if.else.while.body.lr.ph_crit_edge ]
  %high.0.ph779 = phi i16 [ 8, %entry ], [ %conv33, %if.else.while.body.lr.ph_crit_edge ]
  %conv7 = zext i16 %high.0.ph779 to i32
  %add = add nuw nsw i32 %conv7, 1
  br label %while.body

while.cond:                                       ; preds = %while.body
  %15 = trunc i32 %div13655 to i16
  %conv27 = add i16 %15, 1
  %cmp.not = icmp ult i16 %high.0.ph779, %conv27
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %low.0777 = phi i16 [ %low.0.ph780, %while.body.lr.ph ], [ %conv27, %while.cond.while.body_crit_edge ]
  %conv8 = zext i16 %low.0777 to i32
  %add12 = add nuw nsw i32 %add, %conv8
  %div13655 = lshr i32 %add12, 1
  %div17656 = lshr i32 %add12, 2
  %add18 = add nuw nsw i32 %div17656, %div
  %div20 = udiv i32 %add18, %div13655
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %div20)
  %cmp23 = icmp ugt i32 %div20, 514
  br i1 %cmp23, label %while.cond, label %if.else

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div20)
  %cmp29 = icmp ugt i32 %div20, 1
  %16 = trunc i32 %div13655 to i16
  %conv33 = add i16 %16, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %conv33, i16 %low.0777)
  %cmp.not776 = icmp ult i16 %conv33, %low.0777
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp.not776
  br i1 %or.cond, label %if.else.while.end_crit_edge, label %if.else.while.body.lr.ph_crit_edge

if.else.while.body.lr.ph_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %while.cond.while.end_crit_edge
  %conv36 = and i32 %div20, 65535
  %17 = tail call i32 @llvm.umax.i32(i32 %conv36, i32 2)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 514)
  %conv55 = add nuw nsw i32 %18, 65534
  %conv56 = and i32 %conv55, 65535
  %add57 = add nuw nsw i32 %conv56, 1
  %19 = lshr i32 %add57, 1
  %20 = lshr i32 %conv56, 1
  %shl60 = shl nuw nsw i32 %20, 8
  %shl63 = shl nuw nsw i32 %20, 16
  %or = or i32 %shl60, %19
  %or64 = or i32 %or, %shl63
  %or65 = or i32 %or64, 16777216
  %mul = mul nuw nsw i32 %div, 100
  %add68 = add nuw nsw i32 %conv56, 2
  %div69 = udiv i32 %mul, %add68
  %ip_freq = getelementptr inbounds %struct.pvt_device, ptr %pvt, i32 0, i32 9
  %21 = ptrtoint ptr %ip_freq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div69, ptr %ip_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.end.if.end269_crit_edge, label %if.then70

while.end.if.end269_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

if.then70:                                        ; preds = %while.end
  %call71 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then70.cleanup_crit_edge, label %if.end

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then70
  %call75 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end.cleanup_crit_edge, label %if.end79

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79:                                         ; preds = %if.end
  %call80 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef %or65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end79.cleanup_crit_edge, label %if.end84

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end79
  %call85 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end84.cleanup_crit_edge, label %if.end89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %call90 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call90, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 312) #8
  %call102781 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102781)
  %tobool103.not782 = icmp eq i32 %call102781, 0
  br i1 %tobool103.not782, label %if.end89.lor.lhs.false_crit_edge, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89.lor.lhs.false_crit_edge:                 ; preds = %if.end89
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then116.lor.lhs.false_crit_edge, %if.end89.lor.lhs.false_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool104.not = icmp eq i32 %and, 0
  br i1 %tobool104.not, label %lor.lhs.false.lor.end_crit_edge, label %land.lhs.true

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call108 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call108, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call108, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then116

if.then116:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call102 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then116.lor.lhs.false_crit_edge, label %if.then116.cleanup_crit_edge

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then116.lor.lhs.false_crit_edge:               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call113 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool121.not = icmp eq i32 %call113, 0
  br i1 %tobool121.not, label %for.end.lor.end_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and122 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end133, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133:                                        ; preds = %lor.end
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1996488703, ptr %val, align 4
  %call134 = call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef -1996488703) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.end133.cleanup_crit_edge, label %if.end138

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end138:                                        ; preds = %if.end133
  %call144 = call i64 @ktime_get() #8
  %add.i658 = add i64 %call144, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 325) #8
  %call160784 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160784)
  %tobool161.not785 = icmp eq i32 %call160784, 0
  br i1 %tobool161.not785, label %if.end138.lor.lhs.false162_crit_edge, label %if.end138.cleanup_crit_edge

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end138.lor.lhs.false162_crit_edge:             ; preds = %if.end138
  br label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %if.then177.lor.lhs.false162_crit_edge, %if.end138.lor.lhs.false162_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and163 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %lor.lhs.false162.lor.end188_crit_edge, label %land.lhs.true168

lor.lhs.false162.lor.end188_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end188

land.lhs.true168:                                 ; preds = %lor.lhs.false162
  %call169 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call169, i64 %add.i658)
  %cmp3.i660 = icmp sgt i64 %call169, %add.i658
  br i1 %cmp3.i660, label %for.end181, label %if.then177

if.then177:                                       ; preds = %land.lhs.true168
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call160 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then177.lor.lhs.false162_crit_edge, label %if.then177.cleanup_crit_edge

if.then177.cleanup_crit_edge:                     ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then177.lor.lhs.false162_crit_edge:            ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false162

for.end181:                                       ; preds = %land.lhs.true168
  %call174 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool183.not = icmp eq i32 %call174, 0
  br i1 %tobool183.not, label %for.end181.lor.end188_crit_edge, label %for.end181.cleanup_crit_edge

for.end181.cleanup_crit_edge:                     ; preds = %for.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end181.lor.end188_crit_edge:                  ; preds = %for.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end188

lor.end188:                                       ; preds = %for.end181.lor.end188_crit_edge, %lor.lhs.false162.lor.end188_crit_edge
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and185 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end198, label %lor.end188.cleanup_crit_edge

lor.end188.cleanup_crit_edge:                     ; preds = %lor.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end198:                                        ; preds = %lor.end188
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1929379584, ptr %val, align 4
  %call199 = call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef -1929379584) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %if.end198.cleanup_crit_edge, label %if.end203

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end203:                                        ; preds = %if.end198
  %call209 = call i64 @ktime_get() #8
  %add.i663 = add i64 %call209, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 338) #8
  %call225787 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225787)
  %tobool226.not788 = icmp eq i32 %call225787, 0
  br i1 %tobool226.not788, label %if.end203.lor.lhs.false227_crit_edge, label %if.end203.cleanup_crit_edge

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end203.lor.lhs.false227_crit_edge:             ; preds = %if.end203
  br label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %if.then242.lor.lhs.false227_crit_edge, %if.end203.lor.lhs.false227_crit_edge
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and228 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %lor.lhs.false227.lor.end253_crit_edge, label %land.lhs.true233

lor.lhs.false227.lor.end253_crit_edge:            ; preds = %lor.lhs.false227
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end253

land.lhs.true233:                                 ; preds = %lor.lhs.false227
  %call234 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call234, i64 %add.i663)
  %cmp3.i665 = icmp sgt i64 %call234, %add.i663
  br i1 %cmp3.i665, label %for.end246, label %if.then242

if.then242:                                       ; preds = %land.lhs.true233
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call225 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.then242.lor.lhs.false227_crit_edge, label %if.then242.cleanup_crit_edge

if.then242.cleanup_crit_edge:                     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then242.lor.lhs.false227_crit_edge:            ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false227

for.end246:                                       ; preds = %land.lhs.true233
  %call239 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool248.not = icmp eq i32 %call239, 0
  br i1 %tobool248.not, label %for.end246.lor.end253_crit_edge, label %for.end246.cleanup_crit_edge

for.end246.cleanup_crit_edge:                     ; preds = %for.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end246.lor.end253_crit_edge:                  ; preds = %for.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end253

lor.end253:                                       ; preds = %for.end246.lor.end253_crit_edge, %lor.lhs.false227.lor.end253_crit_edge
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %and250 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.end263, label %lor.end253.cleanup_crit_edge

lor.end253.cleanup_crit_edge:                     ; preds = %lor.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end263:                                        ; preds = %lor.end253
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2013265654, ptr %val, align 4
  %call264 = call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef -2013265654) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp slt i32 %call264, 0
  br i1 %cmp265, label %if.end263.cleanup_crit_edge, label %if.end263.if.end269_crit_edge

if.end263.if.end269_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end269

if.end263.cleanup_crit_edge:                      ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end269:                                        ; preds = %if.end263.if.end269_crit_edge, %while.end.if.end269_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool270.not = icmp eq i32 %9, 0
  br i1 %tobool270.not, label %if.end269.if.end289_crit_edge, label %if.then271

if.end269.if.end289_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.then271:                                       ; preds = %if.end269
  %call272 = call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %cmp273 = icmp slt i32 %call272, 0
  br i1 %cmp273, label %if.then271.cleanup_crit_edge, label %if.end276

if.then271.cleanup_crit_edge:                     ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end276:                                        ; preds = %if.then271
  %notmask = shl nsw i32 -1, %9
  %sub278 = xor i32 %notmask, -1
  %call279 = call i32 @regmap_write(ptr noundef %3, i32 noundef 4, i32 noundef %sub278) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %cmp280 = icmp slt i32 %call279, 0
  br i1 %cmp280, label %if.end276.cleanup_crit_edge, label %if.end283

if.end276.cleanup_crit_edge:                      ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end283:                                        ; preds = %if.end276
  %call284 = call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef %or65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %cmp285 = icmp slt i32 %call284, 0
  br i1 %cmp285, label %if.end283.cleanup_crit_edge, label %if.end283.if.end289_crit_edge

if.end283.if.end289_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end289

if.end283.cleanup_crit_edge:                      ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end289:                                        ; preds = %if.end283.if.end289_crit_edge, %if.end269.if.end289_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool290.not = icmp eq i32 %11, 0
  br i1 %tobool290.not, label %if.end289.if.end507_crit_edge, label %if.then291

if.end289.if.end507_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end507

if.then291:                                       ; preds = %if.end289
  %call292 = call i32 @regmap_write(ptr noundef %5, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %cmp293 = icmp slt i32 %call292, 0
  br i1 %cmp293, label %if.then291.cleanup_crit_edge, label %if.end296

if.then291.cleanup_crit_edge:                     ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end296:                                        ; preds = %if.then291
  %call297 = call i32 @regmap_write(ptr noundef %5, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %cmp298 = icmp slt i32 %call297, 0
  br i1 %cmp298, label %if.end296.cleanup_crit_edge, label %if.end301

if.end296.cleanup_crit_edge:                      ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end301:                                        ; preds = %if.end296
  %call302 = call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %or65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %cmp303 = icmp slt i32 %call302, 0
  br i1 %cmp303, label %if.end301.cleanup_crit_edge, label %if.end306

if.end301.cleanup_crit_edge:                      ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end306:                                        ; preds = %if.end301
  %call307 = call i32 @regmap_write(ptr noundef %5, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %cmp308 = icmp slt i32 %call307, 0
  br i1 %cmp308, label %if.end306.cleanup_crit_edge, label %if.end311

if.end306.cleanup_crit_edge:                      ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end311:                                        ; preds = %if.end306
  %call317 = call i64 @ktime_get() #8
  %add.i668 = add i64 %call317, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 384) #8
  %call333790 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call333790)
  %tobool334.not791 = icmp eq i32 %call333790, 0
  br i1 %tobool334.not791, label %if.end311.lor.lhs.false335_crit_edge, label %if.end311.cleanup_crit_edge

if.end311.cleanup_crit_edge:                      ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end311.lor.lhs.false335_crit_edge:             ; preds = %if.end311
  br label %lor.lhs.false335

lor.lhs.false335:                                 ; preds = %if.then350.lor.lhs.false335_crit_edge, %if.end311.lor.lhs.false335_crit_edge
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and336 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %lor.lhs.false335.lor.end361_crit_edge, label %land.lhs.true341

lor.lhs.false335.lor.end361_crit_edge:            ; preds = %lor.lhs.false335
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end361

land.lhs.true341:                                 ; preds = %lor.lhs.false335
  %call342 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call342, i64 %add.i668)
  %cmp3.i670 = icmp sgt i64 %call342, %add.i668
  br i1 %cmp3.i670, label %for.end354, label %if.then350

if.then350:                                       ; preds = %land.lhs.true341
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call333 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  %tobool334.not = icmp eq i32 %call333, 0
  br i1 %tobool334.not, label %if.then350.lor.lhs.false335_crit_edge, label %if.then350.cleanup_crit_edge

if.then350.cleanup_crit_edge:                     ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then350.lor.lhs.false335_crit_edge:            ; preds = %if.then350
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false335

for.end354:                                       ; preds = %land.lhs.true341
  %call347 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347)
  %tobool356.not = icmp eq i32 %call347, 0
  br i1 %tobool356.not, label %for.end354.lor.end361_crit_edge, label %for.end354.cleanup_crit_edge

for.end354.cleanup_crit_edge:                     ; preds = %for.end354
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end354.lor.end361_crit_edge:                  ; preds = %for.end354
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end361

lor.end361:                                       ; preds = %for.end354.lor.end361_crit_edge, %lor.lhs.false335.lor.end361_crit_edge
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %and358 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %if.end371, label %lor.end361.cleanup_crit_edge

lor.end361.cleanup_crit_edge:                     ; preds = %lor.end361
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end371:                                        ; preds = %lor.end361
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1996488704, ptr %val, align 4
  %call372 = call i32 @regmap_write(ptr noundef %5, i32 noundef 12, i32 noundef -1996488704) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %cmp373 = icmp slt i32 %call372, 0
  br i1 %cmp373, label %if.end371.cleanup_crit_edge, label %if.end376

if.end371.cleanup_crit_edge:                      ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end376:                                        ; preds = %if.end371
  %call382 = call i64 @ktime_get() #8
  %add.i673 = add i64 %call382, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 398) #8
  %call398793 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398793)
  %tobool399.not794 = icmp eq i32 %call398793, 0
  br i1 %tobool399.not794, label %if.end376.lor.lhs.false400_crit_edge, label %if.end376.cleanup_crit_edge

if.end376.cleanup_crit_edge:                      ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end376.lor.lhs.false400_crit_edge:             ; preds = %if.end376
  br label %lor.lhs.false400

lor.lhs.false400:                                 ; preds = %if.then415.lor.lhs.false400_crit_edge, %if.end376.lor.lhs.false400_crit_edge
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %and401 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and401)
  %tobool402.not = icmp eq i32 %and401, 0
  br i1 %tobool402.not, label %lor.lhs.false400.lor.rhs422_crit_edge, label %land.lhs.true406

lor.lhs.false400.lor.rhs422_crit_edge:            ; preds = %lor.lhs.false400
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs422

land.lhs.true406:                                 ; preds = %lor.lhs.false400
  %call407 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call407, i64 %add.i673)
  %cmp3.i675 = icmp sgt i64 %call407, %add.i673
  br i1 %cmp3.i675, label %for.end419, label %if.then415

if.then415:                                       ; preds = %land.lhs.true406
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call398 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %if.then415.lor.lhs.false400_crit_edge, label %if.then415.cleanup_crit_edge

if.then415.cleanup_crit_edge:                     ; preds = %if.then415
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then415.lor.lhs.false400_crit_edge:            ; preds = %if.then415
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false400

for.end419:                                       ; preds = %land.lhs.true406
  %call412 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool421.not = icmp eq i32 %call412, 0
  br i1 %tobool421.not, label %for.end419.lor.rhs422_crit_edge, label %for.end419.cleanup_crit_edge

for.end419.cleanup_crit_edge:                     ; preds = %for.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end419.lor.rhs422_crit_edge:                  ; preds = %for.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs422

lor.rhs422:                                       ; preds = %for.end419.lor.rhs422_crit_edge, %lor.lhs.false400.lor.rhs422_crit_edge
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %and423 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  br i1 %tobool424.not, label %if.end436, label %lor.rhs422.cleanup_crit_edge

lor.rhs422.cleanup_crit_edge:                     ; preds = %lor.rhs422
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end436:                                        ; preds = %lor.rhs422
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1929379776, ptr %val, align 4
  %call437 = call i32 @regmap_write(ptr noundef %5, i32 noundef 12, i32 noundef -1929379776) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call437)
  %cmp438 = icmp slt i32 %call437, 0
  br i1 %cmp438, label %if.end436.cleanup_crit_edge, label %if.end441

if.end436.cleanup_crit_edge:                      ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end441:                                        ; preds = %if.end436
  %call447 = call i64 @ktime_get() #8
  %add.i678 = add i64 %call447, 20000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 411) #8
  %call463796 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call463796)
  %tobool464.not797 = icmp eq i32 %call463796, 0
  br i1 %tobool464.not797, label %if.end441.lor.lhs.false465_crit_edge, label %if.end441.cleanup_crit_edge

if.end441.cleanup_crit_edge:                      ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end441.lor.lhs.false465_crit_edge:             ; preds = %if.end441
  br label %lor.lhs.false465

lor.lhs.false465:                                 ; preds = %if.then480.lor.lhs.false465_crit_edge, %if.end441.lor.lhs.false465_crit_edge
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  %and466 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and466)
  %tobool467.not = icmp eq i32 %and466, 0
  br i1 %tobool467.not, label %lor.lhs.false465.lor.rhs487_crit_edge, label %land.lhs.true471

lor.lhs.false465.lor.rhs487_crit_edge:            ; preds = %lor.lhs.false465
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs487

land.lhs.true471:                                 ; preds = %lor.lhs.false465
  %call472 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call472, i64 %add.i678)
  %cmp3.i680 = icmp sgt i64 %call472, %add.i678
  br i1 %cmp3.i680, label %for.end484, label %if.then480

if.then480:                                       ; preds = %land.lhs.true471
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call463 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  %tobool464.not = icmp eq i32 %call463, 0
  br i1 %tobool464.not, label %if.then480.lor.lhs.false465_crit_edge, label %if.then480.cleanup_crit_edge

if.then480.cleanup_crit_edge:                     ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then480.lor.lhs.false465_crit_edge:            ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false465

for.end484:                                       ; preds = %land.lhs.true471
  %call477 = call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call477)
  %tobool486.not = icmp eq i32 %call477, 0
  br i1 %tobool486.not, label %for.end484.lor.rhs487_crit_edge, label %for.end484.cleanup_crit_edge

for.end484.cleanup_crit_edge:                     ; preds = %for.end484
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end484.lor.rhs487_crit_edge:                  ; preds = %for.end484
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs487

lor.rhs487:                                       ; preds = %for.end484.lor.rhs487_crit_edge, %lor.lhs.false465.lor.rhs487_crit_edge
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %and488 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and488)
  %tobool489.not = icmp eq i32 %and488, 0
  br i1 %tobool489.not, label %if.end501, label %lor.rhs487.cleanup_crit_edge

lor.rhs487.cleanup_crit_edge:                     ; preds = %lor.rhs487
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end501:                                        ; preds = %lor.rhs487
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2013264630, ptr %val, align 4
  %call502 = call i32 @regmap_write(ptr noundef %5, i32 noundef 12, i32 noundef -2013264630) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call502)
  %cmp503 = icmp slt i32 %call502, 0
  br i1 %cmp503, label %if.end501.cleanup_crit_edge, label %if.end501.if.end507_crit_edge

if.end501.if.end507_crit_edge:                    ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end507

if.end501.cleanup_crit_edge:                      ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end507:                                        ; preds = %if.end501.if.end507_crit_edge, %if.end289.if.end507_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end507, %if.end501.cleanup_crit_edge, %lor.rhs487.cleanup_crit_edge, %for.end484.cleanup_crit_edge, %if.then480.cleanup_crit_edge, %if.end441.cleanup_crit_edge, %if.end436.cleanup_crit_edge, %lor.rhs422.cleanup_crit_edge, %for.end419.cleanup_crit_edge, %if.then415.cleanup_crit_edge, %if.end376.cleanup_crit_edge, %if.end371.cleanup_crit_edge, %lor.end361.cleanup_crit_edge, %for.end354.cleanup_crit_edge, %if.then350.cleanup_crit_edge, %if.end311.cleanup_crit_edge, %if.end306.cleanup_crit_edge, %if.end301.cleanup_crit_edge, %if.end296.cleanup_crit_edge, %if.then291.cleanup_crit_edge, %if.end283.cleanup_crit_edge, %if.end276.cleanup_crit_edge, %if.then271.cleanup_crit_edge, %if.end263.cleanup_crit_edge, %lor.end253.cleanup_crit_edge, %for.end246.cleanup_crit_edge, %if.then242.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %if.end198.cleanup_crit_edge, %lor.end188.cleanup_crit_edge, %for.end181.cleanup_crit_edge, %if.then177.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %if.end133.cleanup_crit_edge, %lor.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then116.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then70.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end507 ], [ %call71, %if.then70.cleanup_crit_edge ], [ %call75, %if.end.cleanup_crit_edge ], [ %call80, %if.end79.cleanup_crit_edge ], [ %call85, %if.end84.cleanup_crit_edge ], [ %call134, %if.end133.cleanup_crit_edge ], [ %call199, %if.end198.cleanup_crit_edge ], [ %call264, %if.end263.cleanup_crit_edge ], [ %call272, %if.then271.cleanup_crit_edge ], [ %call279, %if.end276.cleanup_crit_edge ], [ %call284, %if.end283.cleanup_crit_edge ], [ %call292, %if.then291.cleanup_crit_edge ], [ %call297, %if.end296.cleanup_crit_edge ], [ %call302, %if.end301.cleanup_crit_edge ], [ %call307, %if.end306.cleanup_crit_edge ], [ %call372, %if.end371.cleanup_crit_edge ], [ %call437, %if.end436.cleanup_crit_edge ], [ %call502, %if.end501.cleanup_crit_edge ], [ -110, %lor.end.cleanup_crit_edge ], [ %call102781, %if.end89.cleanup_crit_edge ], [ %call113, %for.end.cleanup_crit_edge ], [ -110, %lor.end188.cleanup_crit_edge ], [ %call160784, %if.end138.cleanup_crit_edge ], [ %call174, %for.end181.cleanup_crit_edge ], [ -110, %lor.end253.cleanup_crit_edge ], [ %call225787, %if.end203.cleanup_crit_edge ], [ %call239, %for.end246.cleanup_crit_edge ], [ -110, %lor.end361.cleanup_crit_edge ], [ %call333790, %if.end311.cleanup_crit_edge ], [ %call347, %for.end354.cleanup_crit_edge ], [ %call398793, %if.end376.cleanup_crit_edge ], [ -110, %lor.rhs422.cleanup_crit_edge ], [ %call412, %for.end419.cleanup_crit_edge ], [ %call463796, %if.end441.cleanup_crit_edge ], [ -110, %lor.rhs487.cleanup_crit_edge ], [ %call477, %for.end484.cleanup_crit_edge ], [ %call463, %if.then480.cleanup_crit_edge ], [ %call398, %if.then415.cleanup_crit_edge ], [ %call333, %if.then350.cleanup_crit_edge ], [ %call225, %if.then242.cleanup_crit_edge ], [ %call160, %if.then177.cleanup_crit_edge ], [ %call102, %if.then116.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvt_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.pvt_device, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvt_reset_control_assert(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.pvt_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pvt_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp = icmp eq i32 %attr, 1
  br i1 %cmp, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp2 = icmp eq i32 %attr, 1
  br i1 %cmp2, label %sw.bb1.return_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb1.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvt_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %n.i = alloca i32, align 4
  %stat.i7 = alloca i32, align 4
  %stat.i = alloca i32, align 4
  %nbs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %t_map1.i = getelementptr inbounds %struct.pvt_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %t_map1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t_map1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #8
  %5 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %stat.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbs.i) #8
  %6 = ptrtoint ptr %nbs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nbs.i, align 4, !annotation !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond250.i = icmp eq i32 %attr, 1
  br i1 %cond250.i, label %sw.bb.i, label %sw.bb.pvt_read_temp.exit_crit_edge

sw.bb.pvt_read_temp.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_temp.exit

sw.bb.i:                                          ; preds = %sw.bb
  %call2.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call2.i, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 153) #8
  %mul.i = shl i32 %channel, 6
  %add.i = add i32 %mul.i, 84
  %call10362.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %stat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10362.i)
  %tobool.not363.i = icmp eq i32 %call10362.i, 0
  br i1 %tobool.not363.i, label %sw.bb.i.lor.lhs.false.i_crit_edge, label %sw.bb.i.pvt_read_temp.exit_crit_edge

sw.bb.i.pvt_read_temp.exit_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_temp.exit

sw.bb.i.lor.lhs.false.i_crit_edge:                ; preds = %sw.bb.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then24.i.lor.lhs.false.i_crit_edge, %sw.bb.i.lor.lhs.false.i_crit_edge
  %7 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call15.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then24.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call10.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %stat.i) #8
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.then24.i.lor.lhs.false.i_crit_edge, label %if.then24.i.pvt_read_temp.exit_crit_edge

if.then24.i.pvt_read_temp.exit_crit_edge:         ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_temp.exit

if.then24.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %call21.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %stat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool28.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool28.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.pvt_read_temp.exit_crit_edge

for.end.i.pvt_read_temp.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_temp.exit

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %9 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat.i, align 4
  %and29.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %lor.rhs.i.pvt_read_temp.exit_crit_edge, label %if.end36.i

lor.rhs.i.pvt_read_temp.exit_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_temp.exit

if.end36.i:                                       ; preds = %lor.rhs.i
  %add38.i = add i32 %mul.i, 88
  %call39.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add38.i, ptr noundef nonnull %nbs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.end36.i.pvt_read_temp.exit_crit_edge, label %if.end42.i

if.end36.i.pvt_read_temp.exit_crit_edge:          ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_temp.exit

if.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %nbs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbs.i, align 4
  %and43.i = and i32 %12, 65535
  %mul44.i = mul i32 %and43.i, 100000
  %conv.i = zext i32 %mul44.i to i64
  %13 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9218866237129883392, i64 %conv.i, i32 0) #13, !srcloc !75
  %asmresult.i.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %13, 1
  %14 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9218866237129883392, i64 %conv.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #13, !srcloc !76
  %asmresult10.i.i = extractvalue { i64, i32 } %14, 0
  %div219344.i = lshr i64 %asmresult10.i.i, 10
  %ip_freq.i = getelementptr inbounds %struct.pvt_device, ptr %2, i32 0, i32 9
  %15 = ptrtoint ptr %ip_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip_freq.i, align 4
  %17 = trunc i64 %div219344.i to i32
  %18 = sub i32 -40000, %16
  %conv244.i = add i32 %18, %17
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv244.i, ptr %val, align 4
  br label %pvt_read_temp.exit

pvt_read_temp.exit:                               ; preds = %if.end42.i, %if.end36.i.pvt_read_temp.exit_crit_edge, %lor.rhs.i.pvt_read_temp.exit_crit_edge, %for.end.i.pvt_read_temp.exit_crit_edge, %if.then24.i.pvt_read_temp.exit_crit_edge, %sw.bb.i.pvt_read_temp.exit_crit_edge, %sw.bb.pvt_read_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end42.i ], [ %call39.i, %if.end36.i.pvt_read_temp.exit_crit_edge ], [ -95, %sw.bb.pvt_read_temp.exit_crit_edge ], [ %call10362.i, %sw.bb.i.pvt_read_temp.exit_crit_edge ], [ %call21.i, %for.end.i.pvt_read_temp.exit_crit_edge ], [ -110, %lor.rhs.i.pvt_read_temp.exit_crit_edge ], [ %call10.i, %if.then24.i.pvt_read_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbs.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i8 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i8, align 4
  %v_map1.i = getelementptr inbounds %struct.pvt_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %v_map1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v_map1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #8
  %24 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %n.i, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i7) #8
  %25 = ptrtoint ptr %stat.i7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %stat.i7, align 4, !annotation !73
  %v_num.i = getelementptr inbounds %struct.pvt_device, ptr %21, i32 0, i32 8
  %26 = ptrtoint ptr %v_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %v_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %channel)
  %cmp.not.i = icmp ugt i32 %27, %channel
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb1.pvt_read_in.exit_crit_edge

sw.bb1.pvt_read_in.exit_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

if.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond58.i = icmp eq i32 %attr, 1
  br i1 %cond58.i, label %sw.bb.i13, label %if.end.i.pvt_read_in.exit_crit_edge

if.end.i.pvt_read_in.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

sw.bb.i13:                                        ; preds = %if.end.i
  %vm_idx2.i = getelementptr inbounds %struct.pvt_device, ptr %21, i32 0, i32 10
  %28 = ptrtoint ptr %vm_idx2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vm_idx2.i, align 4
  %arrayidx.i = getelementptr i8, ptr %29, i32 %channel
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %call3.i = tail call i64 @ktime_get() #8
  %add.i.i9 = add i64 %call3.i, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 195) #8
  %conv.i10 = zext i8 %31 to i32
  %mul.i11 = shl nuw nsw i32 %conv.i10, 9
  %add.i12 = add nuw nsw i32 %mul.i11, 564
  %call1492.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %add.i12, ptr noundef nonnull %stat.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1492.i)
  %tobool.not93.i = icmp eq i32 %call1492.i, 0
  br i1 %tobool.not93.i, label %sw.bb.i13.lor.lhs.false.i15_crit_edge, label %sw.bb.i13.pvt_read_in.exit_crit_edge

sw.bb.i13.pvt_read_in.exit_crit_edge:             ; preds = %sw.bb.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

sw.bb.i13.lor.lhs.false.i15_crit_edge:            ; preds = %sw.bb.i13
  br label %lor.lhs.false.i15

lor.lhs.false.i15:                                ; preds = %if.then30.i.lor.lhs.false.i15_crit_edge, %sw.bb.i13.lor.lhs.false.i15_crit_edge
  %32 = ptrtoint ptr %stat.i7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stat.i7, align 4
  %and.i14 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool15.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i17, label %lor.lhs.false.i15.lor.rhs.i20_crit_edge

lor.lhs.false.i15.lor.rhs.i20_crit_edge:          ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i20

land.lhs.true.i17:                                ; preds = %lor.lhs.false.i15
  %call19.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call19.i, i64 %add.i.i9)
  %cmp3.i.i16 = icmp sgt i64 %call19.i, %add.i.i9
  br i1 %cmp3.i.i16, label %for.end.i19, label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true.i17
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %call14.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %add.i12, ptr noundef nonnull %stat.i7) #8
  %tobool.not.i18 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i18, label %if.then30.i.lor.lhs.false.i15_crit_edge, label %if.then30.i.pvt_read_in.exit_crit_edge

if.then30.i.pvt_read_in.exit_crit_edge:           ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

if.then30.i.lor.lhs.false.i15_crit_edge:          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i15

for.end.i19:                                      ; preds = %land.lhs.true.i17
  %call27.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %add.i12, ptr noundef nonnull %stat.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool33.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool33.not.i, label %for.end.i19.lor.rhs.i20_crit_edge, label %for.end.i19.pvt_read_in.exit_crit_edge

for.end.i19.pvt_read_in.exit_crit_edge:           ; preds = %for.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

for.end.i19.lor.rhs.i20_crit_edge:                ; preds = %for.end.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i20

lor.rhs.i20:                                      ; preds = %for.end.i19.lor.rhs.i20_crit_edge, %lor.lhs.false.i15.lor.rhs.i20_crit_edge
  %34 = ptrtoint ptr %stat.i7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stat.i7, align 4
  %and34.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %lor.rhs.i20.pvt_read_in.exit_crit_edge, label %if.end41.i

lor.rhs.i20.pvt_read_in.exit_crit_edge:           ; preds = %lor.rhs.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

if.end41.i:                                       ; preds = %lor.rhs.i20
  %add44.i = add nuw nsw i32 %mul.i11, 576
  %call45.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %add44.i, ptr noundef nonnull %n.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %if.end41.i.pvt_read_in.exit_crit_edge, label %if.end49.i

if.end41.i.pvt_read_in.exit_crit_edge:            ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvt_read_in.exit

if.end49.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n.i, align 4
  %and50.i = and i32 %37, 65535
  store i32 %and50.i, ptr %n.i, align 4
  %mul51.i = mul nuw nsw i32 %and50.i, 90
  %sub.i = add nsw i32 %mul51.i, -245805
  %shr52.i = lshr i32 %sub.i, 10
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr52.i, ptr %val, align 4
  br label %pvt_read_in.exit

pvt_read_in.exit:                                 ; preds = %if.end49.i, %if.end41.i.pvt_read_in.exit_crit_edge, %lor.rhs.i20.pvt_read_in.exit_crit_edge, %for.end.i19.pvt_read_in.exit_crit_edge, %if.then30.i.pvt_read_in.exit_crit_edge, %sw.bb.i13.pvt_read_in.exit_crit_edge, %if.end.i.pvt_read_in.exit_crit_edge, %sw.bb1.pvt_read_in.exit_crit_edge
  %retval.0.i21 = phi i32 [ 0, %if.end49.i ], [ -22, %sw.bb1.pvt_read_in.exit_crit_edge ], [ %call45.i, %if.end41.i.pvt_read_in.exit_crit_edge ], [ -95, %if.end.i.pvt_read_in.exit_crit_edge ], [ %call1492.i, %sw.bb.i13.pvt_read_in.exit_crit_edge ], [ %call27.i, %for.end.i19.pvt_read_in.exit_crit_edge ], [ -110, %lor.rhs.i20.pvt_read_in.exit_crit_edge ], [ %call14.i, %if.then30.i.pvt_read_in.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #8
  br label %return

return:                                           ; preds = %pvt_read_in.exit, %pvt_read_temp.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %pvt_read_in.exit ], [ %retval.0.i, %pvt_read_temp.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_mr75203__174_654_moortec_pvt_driver_init6, !1, !"__initcall__kmod_mr75203__174_654_moortec_pvt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/mr75203.c", i32 654, i32 1}
!2 = !{ptr @__exitcall_moortec_pvt_driver_exit, !1, !"__exitcall_moortec_pvt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file175, !4, !"__UNIQUE_ID_file175", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/mr75203.c", i32 656, i32 1}
!5 = !{ptr @__UNIQUE_ID_license176, !4, !"__UNIQUE_ID_license176", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/mr75203.c", i32 649, i32 11}
!8 = !{ptr @moortec_pvt_driver, !9, !"moortec_pvt_driver", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/mr75203.c", i32 647, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/mr75203.c", i32 514, i32 29}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/mr75203.c", i32 520, i32 48}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/mr75203.c", i32 524, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mr75203_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mr75203_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/mr75203.c", i32 531, i32 10}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/mr75203.c", i32 535, i32 34}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/mr75203.c", i32 562, i32 30}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/mr75203.c", i32 577, i32 30}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/mr75203.c", i32 585, i32 30}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/mr75203.c", i32 594, i32 44}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/mr75203.c", i32 628, i32 3}
!36 = !{ptr @mr75203_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mr75203_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/mr75203.c", i32 633, i32 56}
!40 = !{ptr @pvt_get_regmap._key, !41, !"_key", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/mr75203.c", i32 455, i32 13}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/mr75203.c", i32 457, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pvt_get_regmap._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pvt_get_regmap._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pvt_regmap_config, !49, !"pvt_regmap_config", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/mr75203.c", i32 426, i32 29}
!50 = !{ptr @pvt_chip, !51, !"pvt_chip", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/mr75203.c", i32 231, i32 40}
!52 = !{ptr @pvt_chip_config, !53, !"pvt_chip_config", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/mr75203.c", i32 226, i32 18}
!54 = !{ptr @pvt_temp, !55, !"pvt_temp", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/mr75203.c", i32 236, i32 34}
!56 = !{ptr @pvt_in, !57, !"pvt_in", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/mr75203.c", i32 240, i32 34}
!58 = !{ptr @pvt_chip_info, !59, !"pvt_chip_info", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/mr75203.c", i32 249, i32 31}
!60 = !{ptr @pvt_hwmon_ops, !61, !"pvt_hwmon_ops", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/mr75203.c", i32 244, i32 31}
!62 = !{ptr @moortec_pvt_of_match, !63, !"moortec_pvt_of_match", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/mr75203.c", i32 641, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 1157808, i64 1157835, i64 1157857, i64 1157885}
!76 = !{i64 1158216, i64 1158243, i64 1158276, i64 1158297, i64 1158324, i64 1158350}
