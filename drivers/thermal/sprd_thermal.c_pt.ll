; ModuleID = '/llk/IR_all_yes/drivers/thermal/sprd_thermal.c_pt.bc'
source_filename = "../drivers/thermal/sprd_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.sprd_thm_variant_data = type { i32, i32 }
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
%struct.sprd_thermal_data = type { ptr, [8 x ptr], ptr, ptr, i32, i32, i32 }
%struct.sprd_thermal_sensor = type { ptr, ptr, ptr, i32, i32, i32 }

@__initcall__kmod_sprd_thermal__195_554_sprd_thermal_driver_init6 = internal global ptr @sprd_thermal_driver_init, section ".initcall6.init", align 4
@sprd_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_thm_probe, ptr @sprd_thm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_thermal_driver_exit = internal global ptr @sprd_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author196 = internal constant [57 x i8] c"sprd_thermal.author=Freeman Liu <freeman.liu@unisoc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [51 x i8] c"sprd_thermal.description=Spreadtrum thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [47 x i8] c"sprd_thermal.file=drivers/thermal/sprd_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [28 x i8] c"sprd_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sprd-thermal\00", [19 x i8] zeroinitializer }, align 32
@sprd_thermal_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,ums512-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ums512_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sprd_thm_suspend, ptr @sprd_thm_resume, ptr @sprd_thm_suspend, ptr @sprd_thm_resume, ptr @sprd_thm_suspend, ptr @sprd_thm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No matching driver data found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_thm_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/thermal/sprd_thermal.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry_ptr = internal global ptr @sprd_thm_probe._entry, section ".printk_index", align 4
@sprd_thm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"incorrect sensor count\0A\00", [40 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry_ptr.8 = internal global ptr @sprd_thm_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry_ptr.12 = internal global ptr @sprd_thm_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thm_sign_cal\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thm_ratio_cal\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get sensor reg failed\00", [42 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry_ptr.18 = internal global ptr @sprd_thm_probe._entry.16, section ".printk_index", align 4
@sprd_thm_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efuse cal analysis failed\00", [38 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry_ptr.21 = internal global ptr @sprd_thm_probe._entry.19, section ".printk_index", align 4
@sprd_thm_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @sprd_thm_read_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register thermal zone failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sprd_thm_probe._entry_ptr.24 = internal global ptr @sprd_thm_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sen_delta_cal\00", [18 x i8] zeroinitializer }, align 32
@ums512_data = internal constant { %struct.sprd_thm_variant_data, [24 x i8] } { %struct.sprd_thm_variant_data { i32 262, i32 66400 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"sprd_thermal_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 544, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 548, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"sprd_thermal_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 534, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"sprd_thermal_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 540, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 343, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 358, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 362, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 364, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 374, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 383, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 397, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 399, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 405, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"sprd_thm_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 220, i32 48 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 416, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 159, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"ums512_data\00", align 1
@___asan_gen_.105 = private constant [34 x i8] c"../drivers/thermal/sprd_thermal.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 106, i32 43 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199, ptr @__exitcall_sprd_thermal_driver_exit, ptr @__initcall__kmod_sprd_thermal__195_554_sprd_thermal_driver_init6, ptr @sprd_thermal_driver_exit, ptr @sprd_thm_probe._entry, ptr @sprd_thm_probe._entry.10, ptr @sprd_thm_probe._entry.16, ptr @sprd_thm_probe._entry.19, ptr @sprd_thm_probe._entry.22, ptr @sprd_thm_probe._entry.6, ptr @sprd_thm_probe._entry_ptr, ptr @sprd_thm_probe._entry_ptr.12, ptr @sprd_thm_probe._entry_ptr.18, ptr @sprd_thm_probe._entry_ptr.21, ptr @sprd_thm_probe._entry_ptr.24, ptr @sprd_thm_probe._entry_ptr.8, ptr @sprd_thermal_driver, ptr @.str, ptr @sprd_thermal_of_match, ptr @sprd_thermal_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @sprd_thm_ops, ptr @.str.23, ptr @.str.25, ptr @ums512_data], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thermal_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_thm_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ums512_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_thermal_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_thm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %dt_offset.i = alloca i32, align 4
  %len.i198 = alloca i32, align 4
  %len.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %call.i, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call.i190 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i190, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %nr_sensors224 = getelementptr inbounds %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %nr_sensors224 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nr_sensors224, align 4
  br label %do.end22

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i190, %if.end14.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  %nr_sensors = getelementptr inbounds %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %cmp18 = icmp sgt i32 %inc.i, 8
  %or.cond = or i1 %cmp, %cmp18
  br i1 %or.cond, label %of_get_child_count.exit.do.end22_crit_edge, label %if.end24

of_get_child_count.exit.do.end22_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end22:                                         ; preds = %of_get_child_count.exit.do.end22_crit_edge, %of_get_child_count.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end24:                                         ; preds = %of_get_child_count.exit
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  %clk = getelementptr inbounds %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %clk, align 4
  %cmp.i191 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %call.i192 = tail call i32 @clk_prepare(ptr noundef %call26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end36
  %call1.i193 = tail call i32 @clk_enable(ptr noundef %call26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i193)
  %tobool2.not.i = icmp eq i32 %call1.i193, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call26) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %15 = and i32 %14, 61695
  %16 = or i32 %15, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !72
  %add.ptr2.i = getelementptr i8, ptr %13, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %18 = and i32 %17, -251658241
  %19 = or i32 %18, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %19) #6, !srcloc !72
  %add.ptr4.i = getelementptr i8, ptr %13, i32 76
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %21 = and i32 %20, 65535
  %22 = or i32 %21, 1275068416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %22) #6, !srcloc !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %len.i, align 4, !annotation !73
  %call.i194 = tail call ptr @of_nvmem_cell_get(ptr noundef %1, ptr noundef nonnull @.str.13) #6
  %cmp.i.i = icmp ugt ptr %call.i194, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end41.sprd_thm_cal_read.exit_crit_edge, label %if.end.i195

if.end41.sprd_thm_cal_read.exit_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_cal_read.exit

if.end.i195:                                      ; preds = %if.end41
  %call3.i = call ptr @nvmem_cell_read(ptr noundef %call.i194, ptr noundef nonnull %len.i) #6
  call void @nvmem_cell_put(ptr noundef %call.i194) #6
  %cmp.i19.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %if.end.i195.sprd_thm_cal_read.exit_crit_edge, label %if.end7.i

if.end.i195.sprd_thm_cal_read.exit_crit_edge:     ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_cal_read.exit

if.end7.i:                                        ; preds = %if.end.i195
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i196 = icmp ugt i32 %25, 4
  br i1 %cmp.i196, label %sprd_thm_cal_read.exit.thread232, label %sprd_thm_cal_read.exit.thread

sprd_thm_cal_read.exit.thread232:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call3.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %disable_clk

sprd_thm_cal_read.exit.thread:                    ; preds = %if.end7.i
  %26 = call ptr @memcpy(ptr %val, ptr %call3.i, i32 %25)
  call void @kfree(ptr noundef %call3.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %val.0.val.0. = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.val.0.)
  %cmp46.not = icmp eq i32 %val.0.val.0., 0
  %spec.select = select i1 %cmp46.not, i32 1, i32 -1
  %28 = getelementptr inbounds %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %28, align 4
  %ratio_off = getelementptr inbounds %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i198) #6
  %30 = ptrtoint ptr %len.i198 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %len.i198, align 4, !annotation !73
  %call.i199 = call ptr @of_nvmem_cell_get(ptr noundef %1, ptr noundef nonnull @.str.14) #6
  %cmp.i.i200 = icmp ugt ptr %call.i199, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i200, label %sprd_thm_cal_read.exit.thread.sprd_thm_cal_read.exit211_crit_edge, label %if.end.i204

sprd_thm_cal_read.exit.thread.sprd_thm_cal_read.exit211_crit_edge: ; preds = %sprd_thm_cal_read.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_cal_read.exit211

sprd_thm_cal_read.exit:                           ; preds = %if.end.i195.sprd_thm_cal_read.exit_crit_edge, %if.end41.sprd_thm_cal_read.exit_crit_edge
  %retval.0.i197.in = phi ptr [ %call.i194, %if.end41.sprd_thm_cal_read.exit_crit_edge ], [ %call3.i, %if.end.i195.sprd_thm_cal_read.exit_crit_edge ]
  %retval.0.i197 = ptrtoint ptr %retval.0.i197.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %disable_clk

if.end.i204:                                      ; preds = %sprd_thm_cal_read.exit.thread
  %call3.i202 = call ptr @nvmem_cell_read(ptr noundef %call.i199, ptr noundef nonnull %len.i198) #6
  call void @nvmem_cell_put(ptr noundef %call.i199) #6
  %cmp.i19.i203 = icmp ugt ptr %call3.i202, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i203, label %if.end.i204.sprd_thm_cal_read.exit211_crit_edge, label %if.end7.i207

if.end.i204.sprd_thm_cal_read.exit211_crit_edge:  ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_cal_read.exit211

if.end7.i207:                                     ; preds = %if.end.i204
  %31 = ptrtoint ptr %len.i198 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp.i206 = icmp ugt i32 %32, 4
  br i1 %cmp.i206, label %sprd_thm_cal_read.exit211.thread237, label %sprd_thm_cal_read.exit211.thread

sprd_thm_cal_read.exit211.thread237:              ; preds = %if.end7.i207
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call3.i202) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i198) #6
  br label %disable_clk

sprd_thm_cal_read.exit211.thread:                 ; preds = %if.end7.i207
  %33 = call ptr @memcpy(ptr %ratio_off, ptr %call3.i202, i32 %32)
  call void @kfree(ptr noundef %call3.i202) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i198) #6
  %call54 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp55.not263 = icmp eq ptr %call54, null
  br i1 %cmp55.not263, label %sprd_thm_cal_read.exit211.thread.for.end_crit_edge, label %sprd_thm_cal_read.exit211.thread.for.body_crit_edge

sprd_thm_cal_read.exit211.thread.for.body_crit_edge: ; preds = %sprd_thm_cal_read.exit211.thread
  br label %for.body

sprd_thm_cal_read.exit211.thread.for.end_crit_edge: ; preds = %sprd_thm_cal_read.exit211.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

sprd_thm_cal_read.exit211:                        ; preds = %if.end.i204.sprd_thm_cal_read.exit211_crit_edge, %sprd_thm_cal_read.exit.thread.sprd_thm_cal_read.exit211_crit_edge
  %retval.0.i210.in = phi ptr [ %call.i199, %sprd_thm_cal_read.exit.thread.sprd_thm_cal_read.exit211_crit_edge ], [ %call3.i202, %if.end.i204.sprd_thm_cal_read.exit211_crit_edge ]
  %retval.0.i210 = ptrtoint ptr %retval.0.i210.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i198) #6
  br label %disable_clk

for.body:                                         ; preds = %if.end92.for.body_crit_edge, %sprd_thm_cal_read.exit211.thread.for.body_crit_edge
  %sen_child.0264 = phi ptr [ %call94, %if.end92.for.body_crit_edge ], [ %call54, %sprd_thm_cal_read.exit211.thread.for.body_crit_edge ]
  %call.i212 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool58.not = icmp eq ptr %call.i212, null
  br i1 %tobool58.not, label %for.body.of_put_crit_edge, label %if.end60

for.body.of_put_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_put

if.end60:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 1
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %data, align 4
  %dev62 = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 2
  %35 = ptrtoint ptr %dev62 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %dev62, align 4
  %id = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %sen_child.0264, ptr noundef nonnull @.str.15, ptr noundef %id, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool64.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %of_put

if.end70:                                         ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dt_offset.i)
  %36 = ptrtoint ptr %dt_offset.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 64, ptr %dt_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #6
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %len.i.i, align 4, !annotation !73
  %call.i.i213 = call ptr @of_nvmem_cell_get(ptr noundef nonnull %sen_child.0264, ptr noundef nonnull @.str.25) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end70.sprd_thm_sensor_calibration.exit_crit_edge, label %if.end.i.i

if.end70.sprd_thm_sensor_calibration.exit_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_sensor_calibration.exit

if.end.i.i:                                       ; preds = %if.end70
  %call3.i.i = call ptr @nvmem_cell_read(ptr noundef %call.i.i213, ptr noundef nonnull %len.i.i) #6
  call void @nvmem_cell_put(ptr noundef %call.i.i213) #6
  %cmp.i19.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i.i, label %if.end.i.i.sprd_thm_sensor_calibration.exit_crit_edge, label %if.end7.i.i

if.end.i.i.sprd_thm_sensor_calibration.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_sensor_calibration.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %38 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i.i214 = icmp ugt i32 %39, 4
  br i1 %cmp.i.i214, label %sprd_thm_sensor_calibration.exit.thread242, label %sprd_thm_sensor_calibration.exit.thread

sprd_thm_sensor_calibration.exit.thread242:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %call3.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_offset.i)
  br label %do.end76

sprd_thm_sensor_calibration.exit.thread:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = call ptr @memcpy(ptr %dt_offset.i, ptr %call3.i.i, i32 %39)
  call void @kfree(ptr noundef %call3.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %28, align 4
  %43 = ptrtoint ptr %ratio_off to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ratio_off, align 4
  %mul.i = mul i32 %44, %42
  %add.i = add i32 %mul.i, 1000
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %mul1.i = mul i32 %48, %add.i
  %div.i = udiv i32 %mul1.i, 1000
  %cal_slope.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 3
  %49 = ptrtoint ptr %cal_slope.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div.i, ptr %cal_slope.i, align 4
  %ideal_b.i = getelementptr inbounds %struct.sprd_thm_variant_data, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %ideal_b.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ideal_b.i, align 4
  %52 = ptrtoint ptr %dt_offset.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %dt_offset.i.0.dt_offset.i.0.dt_offset.0.dt_offset.0..i = load i32, ptr %dt_offset.i, align 4
  %53 = mul i32 %dt_offset.i.0.dt_offset.i.0.dt_offset.0.dt_offset.0..i, 250
  %mul3.i = add i32 %51, -32000
  %add4.i = add i32 %mul3.i, %53
  %cal_offset.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 4
  %54 = ptrtoint ptr %cal_offset.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add4.i, ptr %cal_offset.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_offset.i)
  br label %if.end78

sprd_thm_sensor_calibration.exit:                 ; preds = %if.end.i.i.sprd_thm_sensor_calibration.exit_crit_edge, %if.end70.sprd_thm_sensor_calibration.exit_crit_edge
  %retval.0.i.in.i = phi ptr [ %call.i.i213, %if.end70.sprd_thm_sensor_calibration.exit_crit_edge ], [ %call3.i.i, %if.end.i.i.sprd_thm_sensor_calibration.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dt_offset.i)
  %tobool72.not = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool72.not, label %sprd_thm_sensor_calibration.exit.if.end78_crit_edge, label %do.end76.loopexit

sprd_thm_sensor_calibration.exit.if.end78_crit_edge: ; preds = %sprd_thm_sensor_calibration.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.end76.loopexit:                                ; preds = %sprd_thm_sensor_calibration.exit
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i.i.le = ptrtoint ptr %retval.0.i.in.i to i32
  br label %do.end76

do.end76:                                         ; preds = %do.end76.loopexit, %sprd_thm_sensor_calibration.exit.thread242
  %retval.0.i215245 = phi i32 [ -22, %sprd_thm_sensor_calibration.exit.thread242 ], [ %retval.0.i.i.le, %do.end76.loopexit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %of_put

if.end78:                                         ; preds = %sprd_thm_sensor_calibration.exit.if.end78_crit_edge, %sprd_thm_sensor_calibration.exit.thread
  %cal_offset.i.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 4
  %55 = ptrtoint ptr %cal_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cal_offset.i.i, align 4
  %add.i.i = add i32 %56, 120000
  %cal_slope.i.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %call.i212, i32 0, i32 3
  %57 = ptrtoint ptr %cal_slope.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cal_slope.i.i, align 4
  %div.i.i = sdiv i32 %add.i.i, %58
  %59 = call i32 @llvm.umin.i32(i32 %div.i.i, i32 999) #6
  %add.i27.i = add i32 %56, 75000
  %div.i29.i = sdiv i32 %add.i27.i, %58
  %60 = call i32 @llvm.umin.i32(i32 %div.i29.i, i32 999) #6
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr.i217 = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %shl.i = shl nuw i32 1, %64
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #6, !srcloc !69
  %66 = call i32 @llvm.bswap.i32(i32 %65) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %or.i.i = or i32 %66, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %67 = call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %67) #6, !srcloc !72
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %70 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id, align 4
  %mul.i218 = shl i32 %71, 2
  %add7.i = add i32 %mul.i218, 44
  %add.ptr8.i = getelementptr i8, ptr %69, i32 %add7.i
  %shl9.i = shl nuw nsw i32 %59, 10
  %or.i = or i32 %shl9.i, %60
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %73 = and i32 %72, 61695
  %74 = call i32 @llvm.bswap.i32(i32 %73) #6
  %or.i31.i = or i32 %74, %or.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %75 = call i32 @llvm.bswap.i32(i32 %or.i31.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %75) #6, !srcloc !72
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %78 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id, align 4
  %add13.i = add i32 %79, 2
  %shl14.i = shl nuw i32 1, %add13.i
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #6, !srcloc !69
  %81 = call i32 @llvm.bswap.i32(i32 %80) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %or.i34.i = or i32 %81, %shl14.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %82 = call i32 @llvm.bswap.i32(i32 %or.i34.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %82) #6, !srcloc !72
  %83 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev62, align 4
  %85 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id, align 4
  %call81 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %84, i32 noundef %86, ptr noundef nonnull %call.i212, ptr noundef nonnull @sprd_thm_ops) #6
  %87 = ptrtoint ptr %call.i212 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call81, ptr %call.i212, align 4
  %cmp.i219 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  %88 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %id, align 4
  br i1 %cmp.i219, label %do.end87, label %if.end92

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %89) #9
  %90 = ptrtoint ptr %call.i212 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i212, align 4
  %92 = ptrtoint ptr %91 to i32
  br label %of_put

if.end92:                                         ; preds = %if.end78
  %arrayidx = getelementptr %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 1, i32 %89
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i212, ptr %arrayidx, align 4
  %call94 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %sen_child.0264) #6
  %cmp55.not = icmp eq ptr %call94, null
  br i1 %cmp55.not, label %if.end92.for.end_crit_edge, label %if.end92.for.body_crit_edge

if.end92.for.body_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end92.for.end_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end92.for.end_crit_edge, %sprd_thm_cal_read.exit211.thread.for.end_crit_edge
  %call95 = call fastcc i32 @sprd_thm_set_ready(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %for.end.of_put_crit_edge

for.end.of_put_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_put

if.end98:                                         ; preds = %for.end
  %call99 = call fastcc i32 @sprd_thm_wait_temp_ready(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %for.cond103.preheader, label %if.end98.of_put_crit_edge

if.end98.of_put_crit_edge:                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_put

for.cond103.preheader:                            ; preds = %if.end98
  %94 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp105265 = icmp sgt i32 %95, 0
  br i1 %cmp105265, label %for.cond103.preheader.for.body106_crit_edge, label %for.cond103.preheader.for.end110_crit_edge

for.cond103.preheader.for.end110_crit_edge:       ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end110

for.cond103.preheader.for.body106_crit_edge:      ; preds = %for.cond103.preheader
  br label %for.body106

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.cond103.preheader.for.body106_crit_edge
  %i.0266 = phi i32 [ %inc, %for.body106.for.body106_crit_edge ], [ 0, %for.cond103.preheader.for.body106_crit_edge ]
  %arrayidx108 = getelementptr %struct.sprd_thermal_data, ptr %call.i, i32 0, i32 1, i32 %i.0266
  %96 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx108, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call.i220 = call i32 @thermal_zone_device_enable(ptr noundef %99) #6
  %inc = add nuw nsw i32 %i.0266, 1
  %100 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nr_sensors, align 4
  %cmp105 = icmp slt i32 %inc, %101
  br i1 %cmp105, label %for.body106.for.body106_crit_edge, label %for.body106.for.end110_crit_edge

for.body106.for.end110_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end110

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body106

for.end110:                                       ; preds = %for.body106.for.end110_crit_edge, %for.cond103.preheader.for.end110_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %102 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

of_put:                                           ; preds = %if.end98.of_put_crit_edge, %for.end.of_put_crit_edge, %do.end87, %do.end76, %do.end68, %for.body.of_put_crit_edge
  %sen_child.0251 = phi ptr [ %sen_child.0264, %do.end68 ], [ %sen_child.0264, %do.end76 ], [ %sen_child.0264, %do.end87 ], [ null, %for.end.of_put_crit_edge ], [ null, %if.end98.of_put_crit_edge ], [ %sen_child.0264, %for.body.of_put_crit_edge ]
  %ret.0 = phi i32 [ %call.i.i, %do.end68 ], [ %retval.0.i215245, %do.end76 ], [ %92, %do.end87 ], [ %call95, %for.end.of_put_crit_edge ], [ %call99, %if.end98.of_put_crit_edge ], [ -12, %for.body.of_put_crit_edge ]
  call void @of_node_put(ptr noundef %sen_child.0251) #6
  br label %disable_clk

disable_clk:                                      ; preds = %of_put, %sprd_thm_cal_read.exit211, %sprd_thm_cal_read.exit211.thread237, %sprd_thm_cal_read.exit, %sprd_thm_cal_read.exit.thread232
  %ret.1 = phi i32 [ %retval.0.i197, %sprd_thm_cal_read.exit ], [ %retval.0.i210, %sprd_thm_cal_read.exit211 ], [ %ret.0, %of_put ], [ -22, %sprd_thm_cal_read.exit.thread232 ], [ -22, %sprd_thm_cal_read.exit211.thread237 ]
  %103 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %104) #6
  call void @clk_unprepare(ptr noundef %104) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %for.end110, %if.then3.i, %if.end36.cleanup_crit_edge, %do.end32, %do.end22, %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %5, %if.then11 ], [ -22, %do.end22 ], [ %11, %do.end32 ], [ %ret.1, %disable_clk ], [ 0, %for.end110 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call1.i193, %if.then3.i ], [ %call.i192, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_thm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr_sensors = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_thermal_data, ptr %1, i32 0, i32 1, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2.i = tail call i32 @thermal_zone_device_disable(ptr noundef %7) #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @devm_thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %11) #6
  %inc = add nuw nsw i32 %i.011, 1
  %12 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_sensors, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %clk = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_thm_set_ready(ptr nocapture noundef readonly %thm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sprd_thm_poll_ready_status(ptr noundef %thm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.sprd_thermal_data, ptr %thm, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -255) #6, !srcloc !72
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %5 = or i32 %4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #6, !srcloc !72
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #6, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_thm_wait_temp_ready(ptr nocapture noundef readonly %thm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 600000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 254) #6
  %base = getelementptr inbounds %struct.sprd_thermal_data, ptr %thm, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not41 = icmp eq i32 %3, 0
  br i1 %tobool.not41, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 84
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %7 = and i32 %6, 16777216
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then26.for.end.thread_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then26.for.end.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 84
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then26.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %12

12:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %13 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_thm_read_temp(ptr nocapture noundef readonly %devdata, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %devdata, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %base = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %id = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %devdata, i32 0, i32 5
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 92
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %7 = and i32 %6, -16580608
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %cal_slope.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %devdata, i32 0, i32 3
  %9 = ptrtoint ptr %cal_slope.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cal_slope.i, align 4
  %mul.i = mul i32 %10, %8
  %cal_offset.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %devdata, i32 0, i32 4
  %11 = ptrtoint ptr %cal_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cal_offset.i, align 4
  %sub.i = sub i32 %mul.i, %12
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_thm_poll_ready_status(ptr nocapture noundef readonly %thm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 700000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 235) #6
  %base = getelementptr inbounds %struct.sprd_thermal_data, ptr %thm, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %and54 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool.not55 = icmp eq i32 %and54, 0
  br i1 %tobool.not55, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !69
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !69
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %and = and i32 %11, 8192
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.for.end_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %7, %if.then16 ], [ %3, %entry.for.end_crit_edge ], [ %11, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %val.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end33, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #6, !srcloc !72
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %19 = or i32 %18, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #6, !srcloc !72
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_thm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_sensors = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.sprd_thm_hw_suspend.exit_crit_edge

entry.sprd_thm_hw_suspend.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_hw_suspend.exit

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_thermal_data, ptr %1, i32 0, i32 1, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2.i = tail call i32 @thermal_zone_device_disable(ptr noundef %7) #6
  %inc = add nuw nsw i32 %i.07, 1
  %8 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_sensors, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.i = icmp sgt i32 %9, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %for.end.sprd_thm_hw_suspend.exit_crit_edge

for.end.sprd_thm_hw_suspend.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_hw_suspend.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %base.i = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %arrayidx.i = getelementptr %struct.sprd_thermal_data, ptr %1, i32 0, i32 1, i32 %i.010.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %id.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %add.i = add i32 %15, 2
  %shl.i = shl nuw i32 1, %add.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !69
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %17, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %18) #6, !srcloc !72
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %19 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_sensors, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sprd_thm_hw_suspend.exit_crit_edge

for.body.i.sprd_thm_hw_suspend.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sprd_thm_hw_suspend.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sprd_thm_hw_suspend.exit:                         ; preds = %for.body.i.sprd_thm_hw_suspend.exit_crit_edge, %for.end.sprd_thm_hw_suspend.exit_crit_edge, %entry.sprd_thm_hw_suspend.exit_crit_edge
  %base1.i = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base1.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %24 = and i32 %23, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #6, !srcloc !72
  %clk = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %26) #6
  tail call void @clk_unprepare(ptr noundef %26) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_thm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %nr_sensors.i = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %nr_sensors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_sensors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.i = icmp sgt i32 %5, 0
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %base.i = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %arrayidx.i = getelementptr %struct.sprd_thermal_data, ptr %1, i32 0, i32 1, i32 %i.026.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %id.i = getelementptr inbounds %struct.sprd_thermal_sensor, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  %add.i = add i32 %11, 2
  %shl.i = shl nuw i32 1, %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !69
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %or.i.i = or i32 %13, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %14) #6, !srcloc !72
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %15 = ptrtoint ptr %nr_sensors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_sensors.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %call.i18 = tail call fastcc i32 @sprd_thm_poll_ready_status(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %sprd_thm_hw_resume.exit, label %for.end.i.disable_clk_crit_edge

for.end.i.disable_clk_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

sprd_thm_hw_resume.exit:                          ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %base6.i = getelementptr inbounds %struct.sprd_thermal_data, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %base6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 -255) #6, !srcloc !72
  %19 = ptrtoint ptr %base6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base6.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %22 = or i32 %21, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #6, !srcloc !72
  %call10.i = tail call fastcc i32 @sprd_thm_wait_temp_ready(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool3.not = icmp eq i32 %call10.i, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %sprd_thm_hw_resume.exit.disable_clk_crit_edge

sprd_thm_hw_resume.exit.disable_clk_crit_edge:    ; preds = %sprd_thm_hw_resume.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_clk

for.cond.preheader:                               ; preds = %sprd_thm_hw_resume.exit
  %23 = ptrtoint ptr %nr_sensors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_sensors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp28 = icmp sgt i32 %24, 0
  br i1 %cmp28, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_thermal_data, ptr %1, i32 0, i32 1, i32 %i.029
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i21 = tail call i32 @thermal_zone_device_enable(ptr noundef %28) #6
  %inc = add nuw nsw i32 %i.029, 1
  %29 = ptrtoint ptr %nr_sensors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_sensors.i, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

disable_clk:                                      ; preds = %sprd_thm_hw_resume.exit.disable_clk_crit_edge, %for.end.i.disable_clk_crit_edge
  %retval.0.i2027 = phi i32 [ %call10.i, %sprd_thm_hw_resume.exit.disable_clk_crit_edge ], [ %call.i18, %for.end.i.disable_clk_crit_edge ]
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %disable_clk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %32, %disable_clk ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i2027, %disable_clk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_sprd_thermal__195_554_sprd_thermal_driver_init6, !1, !"__initcall__kmod_sprd_thermal__195_554_sprd_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/sprd_thermal.c", i32 554, i32 1}
!2 = !{ptr @__exitcall_sprd_thermal_driver_exit, !1, !"__exitcall_sprd_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author196, !4, !"__UNIQUE_ID_author196", i1 false, i1 false}
!4 = !{!"../drivers/thermal/sprd_thermal.c", i32 556, i32 1}
!5 = !{ptr @__UNIQUE_ID_description197, !6, !"__UNIQUE_ID_description197", i1 false, i1 false}
!6 = !{!"../drivers/thermal/sprd_thermal.c", i32 557, i32 1}
!7 = !{ptr @__UNIQUE_ID_file198, !8, !"__UNIQUE_ID_file198", i1 false, i1 false}
!8 = !{!"../drivers/thermal/sprd_thermal.c", i32 558, i32 1}
!9 = !{ptr @__UNIQUE_ID_license199, !8, !"__UNIQUE_ID_license199", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/sprd_thermal.c", i32 548, i32 11}
!12 = !{ptr @sprd_thermal_driver, !13, !"sprd_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/sprd_thermal.c", i32 544, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/thermal/sprd_thermal.c", i32 343, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sprd_thm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sprd_thm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/sprd_thermal.c", i32 358, i32 3}
!24 = !{ptr @sprd_thm_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sprd_thm_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thermal/sprd_thermal.c", i32 362, i32 38}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thermal/sprd_thermal.c", i32 364, i32 3}
!30 = !{ptr @sprd_thm_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sprd_thm_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/sprd_thermal.c", i32 374, i32 30}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/sprd_thermal.c", i32 383, i32 30}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thermal/sprd_thermal.c", i32 397, i32 41}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/sprd_thermal.c", i32 399, i32 4}
!40 = !{ptr @sprd_thm_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sprd_thm_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thermal/sprd_thermal.c", i32 405, i32 4}
!44 = !{ptr @sprd_thm_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sprd_thm_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/thermal/sprd_thermal.c", i32 416, i32 4}
!48 = !{ptr @sprd_thm_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sprd_thm_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thermal/sprd_thermal.c", i32 159, i32 30}
!52 = !{ptr @sprd_thm_ops, !53, !"sprd_thm_ops", i1 false, i1 false}
!53 = !{!"../drivers/thermal/sprd_thermal.c", i32 220, i32 48}
!54 = !{ptr @sprd_thermal_of_match, !55, !"sprd_thermal_of_match", i1 false, i1 false}
!55 = !{!"../drivers/thermal/sprd_thermal.c", i32 534, i32 34}
!56 = !{ptr @ums512_data, !57, !"ums512_data", i1 false, i1 false}
!57 = !{!"../drivers/thermal/sprd_thermal.c", i32 106, i32 43}
!58 = !{ptr @sprd_thermal_pm_ops, !59, !"sprd_thermal_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/thermal/sprd_thermal.c", i32 540, i32 32}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2041646}
!70 = !{i64 2152974756}
!71 = !{i64 2152974956}
!72 = !{i64 2041228}
!73 = !{!"auto-init"}
!74 = !{i64 2153011242}
!75 = !{i64 2153009571}
!76 = !{i64 2153010053}
!77 = !{i64 2153005236}
!78 = !{i64 2153006982}
!79 = !{i64 2153007460}
!80 = !{i64 2153031948}
