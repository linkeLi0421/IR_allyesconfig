; ModuleID = '/llk/IR_all_yes/drivers/thermal/uniphier_thermal.c_pt.bc'
source_filename = "../drivers/thermal/uniphier_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_tm_soc_data = type { i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.uniphier_tm_dev = type { ptr, ptr, [3 x i8], ptr, ptr }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_uniphier_thermal__187_377_uniphier_tm_driver_init6 = internal global ptr @uniphier_tm_driver_init, section ".initcall6.init", align 4
@uniphier_tm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_tm_probe, ptr @uniphier_tm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_tm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_tm_driver_exit = internal global ptr @uniphier_tm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [74 x i8] c"uniphier_thermal.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [53 x i8] c"uniphier_thermal.description=UniPhier thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [55 x i8] c"uniphier_thermal.file=drivers/thermal/uniphier_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [32 x i8] c"uniphier_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uniphier-thermal\00", [47 x i8] zeroinitializer }, align 32
@uniphier_tm_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_tm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_tm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_tm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_tm_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/thermal/uniphier_thermal.c\00", [61 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get regmap (error %ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uniphier_tm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry_ptr = internal global ptr @uniphier_tm_probe._entry, section ".printk_index", align 4
@uniphier_tm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 280, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize sensor\0A\00", [35 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry_ptr.8 = internal global ptr @uniphier_tm_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"thermal\00", [24 x i8] zeroinitializer }, align 32
@uniphier_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @uniphier_tm_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.1, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register sensor device\0A\00", [62 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry_ptr.12 = internal global ptr @uniphier_tm_probe._entry.10, section ".printk_index", align 4
@uniphier_tm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.1, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"thermal zone has too many trips\0A\00", [63 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry_ptr.15 = internal global ptr @uniphier_tm_probe._entry.13, section ".printk_index", align 4
@uniphier_tm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.1, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"critical trip is over limit(>%d), or not set\0A\00", [50 x i8] zeroinitializer }, align 32
@uniphier_tm_probe._entry_ptr.18 = internal global ptr @uniphier_tm_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"socionext,tmod-calibration\00", [37 x i8] zeroinitializer }, align 32
@uniphier_pxs2_tm_data = internal constant { %struct.uniphier_tm_soc_data, [20 x i8] } { %struct.uniphier_tm_soc_data { i32 57344, i32 57344, i32 59652 }, [20 x i8] zeroinitializer }, align 32
@uniphier_ld20_tm_data = internal constant { %struct.uniphier_tm_soc_data, [20 x i8] } { %struct.uniphier_tm_soc_data { i32 57344, i32 59392, i32 59704 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"uniphier_tm_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 369, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 373, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"uniphier_tm_dt_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 348, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 260, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 272, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 280, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 286, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"uniphier_of_thermal_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 207, i32 48 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 295, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 303, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 316, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 115, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"uniphier_pxs2_tm_data\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 336, i32 42 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"uniphier_ld20_tm_data\00", align 1
@___asan_gen_.84 = private constant [38 x i8] c"../drivers/thermal/uniphier_thermal.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 342, i32 42 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_uniphier_tm_driver_exit, ptr @__initcall__kmod_uniphier_thermal__187_377_uniphier_tm_driver_init6, ptr @uniphier_tm_driver_exit, ptr @uniphier_tm_probe._entry, ptr @uniphier_tm_probe._entry.10, ptr @uniphier_tm_probe._entry.13, ptr @uniphier_tm_probe._entry.16, ptr @uniphier_tm_probe._entry.6, ptr @uniphier_tm_probe._entry_ptr, ptr @uniphier_tm_probe._entry_ptr.12, ptr @uniphier_tm_probe._entry_ptr.15, ptr @uniphier_tm_probe._entry_ptr.18, ptr @uniphier_tm_probe._entry_ptr.8, ptr @uniphier_tm_driver, ptr @.str, ptr @uniphier_tm_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @uniphier_of_thermal_ops, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @uniphier_pxs2_tm_data, ptr @uniphier_ld20_tm_data], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_tm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pxs2_tm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld20_tm_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_tm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_tm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_tm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_tm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_tm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %tmod_calib.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %data = getelementptr inbounds %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end30, !prof !60

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call31 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call34 = tail call ptr @of_get_parent(ptr noundef %3) #6
  %call35 = tail call ptr @syscon_node_to_regmap(ptr noundef %call34) #6
  tail call void @of_node_put(ptr noundef %call34) #6
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call35, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmod_calib.i) #6
  %7 = ptrtoint ptr %tmod_calib.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmod_calib.i, align 4, !annotation !61
  %8 = getelementptr inbounds [2 x i32], ptr %tmod_calib.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !61
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %block_base.i = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %block_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_base.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call35, i32 noundef %13, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %add2.i = add i32 %15, 3676
  %call3.i = call i32 @regmap_read(ptr noundef %call35, i32 noundef %add2.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %uniphier_tm_initialize_sensor.exit.thread163

uniphier_tm_initialize_sensor.exit.thread163:     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmod_calib.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %do.end50

if.end.i:                                         ; preds = %if.end43
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.uniphier_tm_initialize_sensor.exit.thread_crit_edge

if.end.i.uniphier_tm_initialize_sensor.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uniphier_tm_initialize_sensor.exit.thread

if.then5.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call.i47.i = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef nonnull %tmod_calib.i, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i47.i)
  %tobool7.not.i = icmp sgt i32 %call.i47.i, -1
  br i1 %tobool7.not.i, label %if.end9.i, label %uniphier_tm_initialize_sensor.exit

if.end9.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %tmod_setup_addr.i = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %tmod_setup_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmod_setup_addr.i, align 4
  %26 = ptrtoint ptr %tmod_calib.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmod_calib.i, align 4
  %and.i = shl i32 %27, 16
  %shl.i = and i32 %and.i, 1073676288
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  %and13.i = and i32 %29, 32767
  %or11.i = or i32 %shl.i, %and13.i
  %or14.i = or i32 %or11.i, 1073774592
  %call15.i = call i32 @regmap_write(ptr noundef %call35, i32 noundef %25, i32 noundef %or14.i) #6
  br label %uniphier_tm_initialize_sensor.exit.thread

uniphier_tm_initialize_sensor.exit.thread:        ; preds = %if.end9.i, %if.end.i.uniphier_tm_initialize_sensor.exit.thread_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %block_base18.i = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %block_base18.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %block_base18.i, align 4
  %add19.i = add i32 %33, 4
  %call.i48.i = call i32 @regmap_update_bits_base(ptr noundef %call35, i32 noundef %add19.i, i32 noundef 15, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %34 = ptrtoint ptr %block_base18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %block_base18.i, align 4
  %add23.i = add i32 %35, 64
  %call.i49.i = call i32 @regmap_update_bits_base(ptr noundef %call35, i32 noundef %add23.i, i32 noundef 16777231, i32 noundef 16777225, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %31, align 4
  %add27.i = add i32 %37, 2304
  %call.i50.i = call i32 @regmap_update_bits_base(ptr noundef %call35, i32 noundef %add27.i, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmod_calib.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call52 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call31, ptr noundef nonnull @uniphier_tm_alarm_irq, ptr noundef nonnull @uniphier_tm_alarm_irq_thread, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %uniphier_tm_initialize_sensor.exit.thread.cleanup_crit_edge

uniphier_tm_initialize_sensor.exit.thread.cleanup_crit_edge: ; preds = %uniphier_tm_initialize_sensor.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

uniphier_tm_initialize_sensor.exit:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmod_calib.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %do.end50

do.end50:                                         ; preds = %uniphier_tm_initialize_sensor.exit, %uniphier_tm_initialize_sensor.exit.thread163
  %retval.0.i166 = phi i32 [ %call3.i, %uniphier_tm_initialize_sensor.exit.thread163 ], [ %call.i47.i, %uniphier_tm_initialize_sensor.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end55:                                         ; preds = %uniphier_tm_initialize_sensor.exit.thread
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call56 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @uniphier_of_thermal_ops) #6
  %tz_dev = getelementptr inbounds %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %tz_dev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call56, ptr %tz_dev, align 4
  %cmp.i152 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %40 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tz_dev, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end65:                                         ; preds = %if.end55
  %call67 = call ptr @of_thermal_get_trip_points(ptr noundef %call56) #6
  %43 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tz_dev, align 4
  %call69 = call i32 @of_thermal_get_ntrips(ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call69)
  %cmp70 = icmp sgt i32 %call69, 3
  br i1 %cmp70, label %do.end74, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp76167 = icmp sgt i32 %call69, 0
  br i1 %cmp76167, label %for.body, label %for.cond.preheader.do.end91_crit_edge

for.cond.preheader.do.end91_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.preheader
  %type = getelementptr %struct.thermal_trip, ptr %call67, i32 0, i32 3
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp77 = icmp eq i32 %46, 3
  br i1 %cmp77, label %land.lhs.true, label %for.body.if.end83_crit_edge

for.body.if.end83_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %temperature = getelementptr %struct.thermal_trip, ptr %call67, i32 0, i32 1
  %47 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %temperature, align 4
  br label %if.end83

if.end83:                                         ; preds = %land.lhs.true, %for.body.if.end83_crit_edge
  %crit_temp.1 = phi i32 [ 2147483647, %for.body.if.end83_crit_edge ], [ %48, %land.lhs.true ]
  %temperature85 = getelementptr %struct.thermal_trip, ptr %call67, i32 0, i32 1
  %49 = ptrtoint ptr %temperature85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %temperature85, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %add1.i = add i32 %56, 2320
  %div.i = udiv i32 %50, 1000
  %and.i155 = shl i32 %div.i, 16
  %shl2.i = and i32 %and.i155, 16711680
  %or.i = or i32 %shl2.i, 1
  %call.i.i156 = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %add1.i, i32 noundef 16711681, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %arrayidx86 = getelementptr %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 2, i32 0
  %57 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %arrayidx86, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69)
  %exitcond.not = icmp eq i32 %call69, 1
  br i1 %exitcond.not, label %if.end83.for.end_crit_edge, label %for.body.1

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %if.end83
  %type.1 = getelementptr %struct.thermal_trip, ptr %call67, i32 1, i32 3
  %58 = ptrtoint ptr %type.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp77.1 = icmp eq i32 %59, 3
  br i1 %cmp77.1, label %land.lhs.true.1, label %for.body.1.if.end83.1_crit_edge

for.body.1.if.end83.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.1

land.lhs.true.1:                                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %temperature.1 = getelementptr %struct.thermal_trip, ptr %call67, i32 1, i32 1
  %60 = ptrtoint ptr %temperature.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %temperature.1, align 4
  %62 = call i32 @llvm.smin.i32(i32 %61, i32 %crit_temp.1)
  br label %if.end83.1

if.end83.1:                                       ; preds = %land.lhs.true.1, %for.body.1.if.end83.1_crit_edge
  %crit_temp.1.1 = phi i32 [ %crit_temp.1, %for.body.1.if.end83.1_crit_edge ], [ %62, %land.lhs.true.1 ]
  %temperature85.1 = getelementptr %struct.thermal_trip, ptr %call67, i32 1, i32 1
  %63 = ptrtoint ptr %temperature85.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %temperature85.1, align 4
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add1.i.1 = add i32 %70, 2324
  %div.i.1 = udiv i32 %64, 1000
  %and.i155.1 = shl i32 %div.i.1, 16
  %shl2.i.1 = and i32 %and.i155.1, 16711680
  %or.i.1 = or i32 %shl2.i.1, 1
  %call.i.i156.1 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %add1.i.1, i32 noundef 16711681, i32 noundef %or.i.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %arrayidx86.1 = getelementptr %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %arrayidx86.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call69)
  %exitcond.not.1 = icmp eq i32 %call69, 2
  br i1 %exitcond.not.1, label %if.end83.1.for.end_crit_edge, label %for.body.2

if.end83.1.for.end_crit_edge:                     ; preds = %if.end83.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %if.end83.1
  %type.2 = getelementptr %struct.thermal_trip, ptr %call67, i32 2, i32 3
  %72 = ptrtoint ptr %type.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp77.2 = icmp eq i32 %73, 3
  br i1 %cmp77.2, label %land.lhs.true.2, label %for.body.2.if.end83.2_crit_edge

for.body.2.if.end83.2_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.2

land.lhs.true.2:                                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %temperature.2 = getelementptr %struct.thermal_trip, ptr %call67, i32 2, i32 1
  %74 = ptrtoint ptr %temperature.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %temperature.2, align 4
  %76 = call i32 @llvm.smin.i32(i32 %75, i32 %crit_temp.1.1)
  br label %if.end83.2

if.end83.2:                                       ; preds = %land.lhs.true.2, %for.body.2.if.end83.2_crit_edge
  %crit_temp.1.2 = phi i32 [ %crit_temp.1.1, %for.body.2.if.end83.2_crit_edge ], [ %76, %land.lhs.true.2 ]
  %temperature85.2 = getelementptr %struct.thermal_trip, ptr %call67, i32 2, i32 1
  %77 = ptrtoint ptr %temperature85.2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %temperature85.2, align 4
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %add1.i.2 = add i32 %84, 2328
  %div.i.2 = udiv i32 %78, 1000
  %and.i155.2 = shl i32 %div.i.2, 16
  %shl2.i.2 = and i32 %and.i155.2, 16711680
  %or.i.2 = or i32 %shl2.i.2, 1
  %call.i.i156.2 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %add1.i.2, i32 noundef 16711681, i32 noundef %or.i.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %arrayidx86.2 = getelementptr %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 2, i32 2
  %85 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %arrayidx86.2, align 1
  br label %for.end

for.end:                                          ; preds = %if.end83.2, %if.end83.1.for.end_crit_edge, %if.end83.for.end_crit_edge
  %crit_temp.1.lcssa = phi i32 [ %crit_temp.1, %if.end83.for.end_crit_edge ], [ %crit_temp.1.1, %if.end83.1.for.end_crit_edge ], [ %crit_temp.1.2, %if.end83.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %crit_temp.1.lcssa)
  %cmp87 = icmp sgt i32 %crit_temp.1.lcssa, 120000
  br i1 %cmp87, label %for.end.do.end91_crit_edge, label %if.end92

for.end.do.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91

do.end91:                                         ; preds = %for.end.do.end91_crit_edge, %for.cond.preheader.do.end91_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef 120000) #9
  br label %cleanup

if.end92:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 2, i32 0
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i, align 1, !range !62
  %90 = zext i8 %89 to i32
  %arrayidx.1.i = getelementptr %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 2, i32 1
  %91 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.1.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.1.i = icmp eq i8 %92, 0
  %or.1.i = select i1 %tobool.not.1.i, i32 0, i32 16
  %bits.1.1.i = or i32 %or.1.i, %90
  %arrayidx.2.i = getelementptr %struct.uniphier_tm_dev, ptr %call.i, i32 0, i32 2, i32 2
  %93 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.2.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.2.i = icmp eq i8 %94, 0
  %or.2.i = select i1 %tobool.not.2.i, i32 0, i32 256
  %bits.1.2.i = or i32 %bits.1.1.i, %or.2.i
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %add1.i158 = add i32 %98, 2336
  %call.i.i159 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef %add1.i158, i32 noundef 1911, i32 noundef %bits.1.2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %block_base.i160 = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %block_base.i160 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %block_base.i160, align 4
  %call.i13.i = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef %102, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @usleep_range_state(i32 noundef 700, i32 noundef 1500, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %do.end91, %do.end74, %do.end62, %do.end50, %uniphier_tm_initialize_sensor.exit.thread.cleanup_crit_edge, %do.end40, %if.end30.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %4, %do.end40 ], [ %retval.0.i166, %do.end50 ], [ %42, %do.end62 ], [ -7, %do.end74 ], [ -22, %do.end91 ], [ 0, %if.end92 ], [ -12, %entry.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call52, %uniphier_tm_initialize_sensor.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_tm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %data.i = getelementptr inbounds %struct.uniphier_tm_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.i = add i32 %7, 2336
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef 1911, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %block_base.i = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %block_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_base.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %11, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_tm_alarm_irq(i32 noundef %irq, ptr nocapture noundef readonly %_tdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #6
  %0 = ptrtoint ptr %_tdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tdev, align 4
  %data.i = getelementptr inbounds %struct.uniphier_tm_dev, ptr %_tdev, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add9.i = add i32 %5, 2336
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add9.i, i32 noundef 1638, i32 noundef 1092, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_tm_alarm_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %_tdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tz_dev = getelementptr inbounds %struct.uniphier_tm_dev, ptr %_tdev, i32 0, i32 3
  %0 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz_dev, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_tm_get_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %out_temp) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !61
  %data1 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %add = add i32 %6, 2344
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %shl.i = shl i32 %8, 23
  %shr.i = ashr exact i32 %shl.i, 23
  %mul = mul nsw i32 %shr.i, 1000
  %9 = ptrtoint ptr %out_temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %out_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_uniphier_thermal__187_377_uniphier_tm_driver_init6, !1, !"__initcall__kmod_uniphier_thermal__187_377_uniphier_tm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/uniphier_thermal.c", i32 377, i32 1}
!2 = !{ptr @__exitcall_uniphier_tm_driver_exit, !1, !"__exitcall_uniphier_tm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/uniphier_thermal.c", i32 379, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/thermal/uniphier_thermal.c", i32 380, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/thermal/uniphier_thermal.c", i32 381, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/uniphier_thermal.c", i32 373, i32 11}
!12 = !{ptr @uniphier_tm_driver, !13, !"uniphier_tm_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/uniphier_thermal.c", i32 369, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/uniphier_thermal.c", i32 260, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/uniphier_thermal.c", i32 272, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @uniphier_tm_probe._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @uniphier_tm_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thermal/uniphier_thermal.c", i32 280, i32 3}
!25 = !{ptr @uniphier_tm_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @uniphier_tm_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/uniphier_thermal.c", i32 286, i32 9}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/uniphier_thermal.c", i32 295, i32 3}
!31 = !{ptr @uniphier_tm_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @uniphier_tm_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/uniphier_thermal.c", i32 303, i32 3}
!35 = !{ptr @uniphier_tm_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @uniphier_tm_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/uniphier_thermal.c", i32 316, i32 3}
!39 = !{ptr @uniphier_tm_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @uniphier_tm_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thermal/uniphier_thermal.c", i32 115, i32 8}
!43 = !{ptr @uniphier_of_thermal_ops, !44, !"uniphier_of_thermal_ops", i1 false, i1 false}
!44 = !{!"../drivers/thermal/uniphier_thermal.c", i32 207, i32 48}
!45 = !{ptr @uniphier_tm_dt_ids, !46, !"uniphier_tm_dt_ids", i1 false, i1 false}
!46 = !{!"../drivers/thermal/uniphier_thermal.c", i32 348, i32 34}
!47 = !{ptr @uniphier_pxs2_tm_data, !48, !"uniphier_pxs2_tm_data", i1 false, i1 false}
!48 = !{!"../drivers/thermal/uniphier_thermal.c", i32 336, i32 42}
!49 = !{ptr @uniphier_ld20_tm_data, !50, !"uniphier_ld20_tm_data", i1 false, i1 false}
!50 = !{!"../drivers/thermal/uniphier_thermal.c", i32 342, i32 42}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"auto-init"}
!62 = !{i8 0, i8 2}
