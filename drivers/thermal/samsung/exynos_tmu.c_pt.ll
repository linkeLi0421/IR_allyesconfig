; ModuleID = '/llk/IR_all_yes/drivers/thermal/samsung/exynos_tmu.c_pt.bc'
source_filename = "../drivers/thermal/samsung/exynos_tmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.exynos_tmu_data = type { i32, ptr, ptr, i32, i32, %struct.work_struct, %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i8, i8, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_exynos_thermal__290_1190_exynos_tmu_driver_init6 = internal global ptr @exynos_tmu_driver_init, section ".initcall6.init", align 4
@exynos_tmu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_tmu_probe, ptr @exynos_tmu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_tmu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_tmu_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_tmu_driver_exit = internal global ptr @exynos_tmu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [45 x i8] c"exynos_thermal.description=Exynos TMU Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [58 x i8] c"exynos_thermal.author=Donggeun Kim <dg77.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [59 x i8] c"exynos_thermal.file=drivers/thermal/samsung/exynos_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [27 x i8] c"exynos_thermal.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [41 x i8] c"exynos_thermal.alias=platform:exynos-tmu\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos-tmu\00", [21 x i8] zeroinitializer }, align 32
@exynos_tmu_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-tmu-ext-triminfo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-tmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@exynos_tmu_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_tmu_suspend, ptr @exynos_tmu_resume, ptr @exynos_tmu_suspend, ptr @exynos_tmu_resume, ptr @exynos_tmu_suspend, ptr @exynos_tmu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@exynos_tmu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vtmu\00", [27 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1027, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable vtmu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_tmu_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/thermal/samsung/exynos_tmu.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr = internal global ptr @exynos_tmu_probe._entry, section ".printk_index", align 4
@exynos_tmu_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1033, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Regulator node (vtmu) not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.11 = internal global ptr @exynos_tmu_probe._entry.8, section ".printk_index", align 4
@exynos_tmu_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&data->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmu_apbif\00", [22 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1044, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.17 = internal global ptr @exynos_tmu_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tmu_triminfo_apbif\00", [45 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1052, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get triminfo clock\0A\00", [34 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.21 = internal global ptr @exynos_tmu_probe._entry.19, section ".printk_index", align 4
@exynos_tmu_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1059, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.23 = internal global ptr @exynos_tmu_probe._entry.22, section ".printk_index", align 4
@exynos_tmu_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1066, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.25 = internal global ptr @exynos_tmu_probe._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tmu_sclk\00", [23 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1075, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get sclk\0A\00", [44 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.29 = internal global ptr @exynos_tmu_probe._entry.27, section ".printk_index", align 4
@exynos_tmu_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 1081, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable sclk\0A\00", [41 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.32 = internal global ptr @exynos_tmu_probe._entry.30, section ".printk_index", align 4
@exynos_sensor_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @exynos_get_temp, ptr null, ptr null, ptr @exynos_tmu_set_emulation, ptr null }, [44 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 1100, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register sensor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.35 = internal global ptr @exynos_tmu_probe._entry.33, section ".printk_index", align 4
@exynos_tmu_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.4, ptr @.str.5, i32 1106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize TMU\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.38 = internal global ptr @exynos_tmu_probe._entry.36, section ".printk_index", align 4
@exynos_tmu_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.4, ptr @.str.5, i32 1113, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@exynos_tmu_probe._entry_ptr.41 = internal global ptr @exynos_tmu_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmuctrl\00", [24 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 882, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_map_dt_data\00", [45 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry_ptr = internal global ptr @exynos_map_dt_data._entry, section ".printk_index", align 4
@exynos_map_dt_data._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 887, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get Resource 0\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry_ptr.47 = internal global ptr @exynos_map_dt_data._entry.45, section ".printk_index", align 4
@exynos_map_dt_data._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 893, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to ioremap memory\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry_ptr.50 = internal global ptr @exynos_map_dt_data._entry.48, section ".printk_index", align 4
@exynos_map_dt_data._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.5, i32 972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Platform not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry_ptr.53 = internal global ptr @exynos_map_dt_data._entry.51, section ".printk_index", align 4
@exynos_map_dt_data._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.5, i32 986, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get Resource 1\0A\00", [38 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry_ptr.56 = internal global ptr @exynos_map_dt_data._entry.54, section ".printk_index", align 4
@exynos_map_dt_data._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 993, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@exynos_map_dt_data._entry_ptr.58 = internal global ptr @exynos_map_dt_data._entry.57, section ".printk_index", align 4
@exynos5433_tmu_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.5, i32 501, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Temperature sensor ID: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos5433_tmu_initialize\00", [38 x i8] zeroinitializer }, align 32
@exynos5433_tmu_initialize._entry_ptr = internal global ptr @exynos5433_tmu_initialize._entry, section ".printk_index", align 4
@exynos5433_tmu_initialize._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.5, i32 519, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Calibration type is %d-point calibration\0A\00", [54 x i8] zeroinitializer }, align 32
@exynos5433_tmu_initialize._entry_ptr.63 = internal global ptr @exynos5433_tmu_initialize._entry.61, section ".printk_index", align 4
@exynos_tmu_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 270, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot get trip points from device tree!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos_tmu_initialize\00", [42 x i8] zeroinitializer }, align 32
@exynos_tmu_initialize._entry_ptr = internal global ptr @exynos_tmu_initialize._entry, section ".printk_index", align 4
@exynos_tmu_initialize._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No CRITICAL trip point defined in device tree!\0A\00", [48 x i8] zeroinitializer }, align 32
@exynos_tmu_initialize._entry_ptr.68 = internal global ptr @exynos_tmu_initialize._entry.66, section ".printk_index", align 4
@exynos_tmu_initialize._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.5, i32 284, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"More trip points than supported by this TMU.\0A\00", [50 x i8] zeroinitializer }, align 32
@exynos_tmu_initialize._entry_ptr.71 = internal global ptr @exynos_tmu_initialize._entry.69, section ".printk_index", align 4
@exynos_tmu_initialize._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.5, i32 287, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%d trip points should be configured in polling mode.\0A\00", [42 x i8] zeroinitializer }, align 32
@exynos_tmu_initialize._entry_ptr.74 = internal global ptr @exynos_tmu_initialize._entry.72, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.exynos4210_tmu_clear_irqs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 200, i32 120, i32 120, i32 200, i32 280], [44 x i8] zeroinitializer }, align 32
@switch.table.exynos4210_tmu_clear_irqs.75 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 196, i32 116, i32 116, i32 200, i32 280], [44 x i8] zeroinitializer }, align 32
@switch.table.exynos4412_tmu_set_emulation = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 256, i32 128, i32 128, i32 272, i32 352], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"exynos_tmu_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1180, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1182, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"exynos_tmu_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 835, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"exynos_tmu_pm\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1173, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1016, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1023, i32 60 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1027, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1033, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1040, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1042, i32 39 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1044, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1049, i32 43 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1052, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1059, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1066, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1073, i32 41 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1075, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1081, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"exynos_sensor_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1000, i32 48 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1099, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1106, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1113, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 876, i32 48 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 882, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 887, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 893, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 972, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 986, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 993, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 501, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 518, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 269, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 277, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 283, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [40 x i8] c"../drivers/thermal/samsung/exynos_tmu.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 285, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [39 x i8] c"switch.table.exynos4210_tmu_clear_irqs\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [42 x i8] c"switch.table.exynos4210_tmu_clear_irqs.75\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [42 x i8] c"switch.table.exynos4412_tmu_set_emulation\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_exynos_tmu_driver_exit, ptr @__initcall__kmod_exynos_thermal__290_1190_exynos_tmu_driver_init6, ptr @exynos5433_tmu_initialize._entry, ptr @exynos5433_tmu_initialize._entry.61, ptr @exynos5433_tmu_initialize._entry_ptr, ptr @exynos5433_tmu_initialize._entry_ptr.63, ptr @exynos_map_dt_data._entry, ptr @exynos_map_dt_data._entry.45, ptr @exynos_map_dt_data._entry.48, ptr @exynos_map_dt_data._entry.51, ptr @exynos_map_dt_data._entry.54, ptr @exynos_map_dt_data._entry.57, ptr @exynos_map_dt_data._entry_ptr, ptr @exynos_map_dt_data._entry_ptr.47, ptr @exynos_map_dt_data._entry_ptr.50, ptr @exynos_map_dt_data._entry_ptr.53, ptr @exynos_map_dt_data._entry_ptr.56, ptr @exynos_map_dt_data._entry_ptr.58, ptr @exynos_tmu_driver_exit, ptr @exynos_tmu_initialize._entry, ptr @exynos_tmu_initialize._entry.66, ptr @exynos_tmu_initialize._entry.69, ptr @exynos_tmu_initialize._entry.72, ptr @exynos_tmu_initialize._entry_ptr, ptr @exynos_tmu_initialize._entry_ptr.68, ptr @exynos_tmu_initialize._entry_ptr.71, ptr @exynos_tmu_initialize._entry_ptr.74, ptr @exynos_tmu_probe._entry, ptr @exynos_tmu_probe._entry.15, ptr @exynos_tmu_probe._entry.19, ptr @exynos_tmu_probe._entry.22, ptr @exynos_tmu_probe._entry.24, ptr @exynos_tmu_probe._entry.27, ptr @exynos_tmu_probe._entry.30, ptr @exynos_tmu_probe._entry.33, ptr @exynos_tmu_probe._entry.36, ptr @exynos_tmu_probe._entry.39, ptr @exynos_tmu_probe._entry.8, ptr @exynos_tmu_probe._entry_ptr, ptr @exynos_tmu_probe._entry_ptr.11, ptr @exynos_tmu_probe._entry_ptr.17, ptr @exynos_tmu_probe._entry_ptr.21, ptr @exynos_tmu_probe._entry_ptr.23, ptr @exynos_tmu_probe._entry_ptr.25, ptr @exynos_tmu_probe._entry_ptr.29, ptr @exynos_tmu_probe._entry_ptr.32, ptr @exynos_tmu_probe._entry_ptr.35, ptr @exynos_tmu_probe._entry_ptr.38, ptr @exynos_tmu_probe._entry_ptr.41, ptr @exynos_tmu_driver, ptr @.str, ptr @exynos_tmu_match, ptr @exynos_tmu_pm, ptr @exynos_tmu_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @exynos_tmu_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @exynos_sensor_ops, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @switch.table.exynos4210_tmu_clear_irqs, ptr @switch.table.exynos4210_tmu_clear_irqs.75, ptr @switch.table.exynos4412_tmu_set_emulation], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_sensor_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_map_dt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_map_dt_data._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_map_dt_data._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_map_dt_data._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_map_dt_data._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_map_dt_data._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_tmu_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_tmu_initialize._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_initialize._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_initialize._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_tmu_initialize._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4210_tmu_clear_irqs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4210_tmu_clear_irqs.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos4412_tmu_set_emulation to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_tmu_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_tmu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_tmu_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 236, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_tmu_probe.__key) #7
  %call2 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %regulator = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 18
  %1 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @regulator_enable(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end23_crit_edge, label %do.end12

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp = icmp eq ptr %call2, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %do.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.then5.if.end23_crit_edge
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %4 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %3, null
  %5 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %if.end23.exynos_map_dt_data.exit.thread_crit_edge, label %lor.lhs.false.i

if.end23.exynos_map_dt_data.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_map_dt_data.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end23
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.exynos_map_dt_data.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.exynos_map_dt_data.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exynos_map_dt_data.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %7, ptr noundef nonnull @.str.42) #7
  %8 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %3, align 4
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call11.i = tail call i32 @irq_of_parse_and_map(ptr noundef %11, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call11.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp13.i = icmp slt i32 %call11.i, 1
  br i1 %cmp13.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %exynos_map_dt_data.exit.thread

if.end16.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call19.i = call i32 @of_address_to_resource(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end26.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #10
  br label %exynos_map_dt_data.exit.thread

if.end26.i:                                       ; preds = %if.end16.i
  %15 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res.i, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 4
  %sub.i.i = sub i32 1, %16
  %add.i.i = add i32 %sub.i.i, %18
  %call29.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %16, i32 noundef %add.i.i) #7
  %base.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call29.i, ptr %base.i, align 4
  %tobool31.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool31.not.i, label %do.end35.i, label %if.end37.i

do.end35.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #10
  br label %exynos_map_dt_data.exit.thread

if.end37.i:                                       ; preds = %if.end26.i
  %call39.i = call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %20 = ptrtoint ptr %call39.i to i32
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %soc.i, align 4
  %22 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end97.i [
    i32 2, label %sw.bb.i
    i32 1, label %if.end37.i.sw.bb41.i_crit_edge
    i32 3, label %if.end37.i.sw.bb41.i_crit_edge252
    i32 4, label %if.end37.i.sw.bb41.i_crit_edge253
    i32 5, label %if.end37.i.sw.bb41.i_crit_edge254
    i32 6, label %if.end37.i.sw.bb41.i_crit_edge255
    i32 7, label %if.end37.i.sw.bb41.i_crit_edge256
    i32 8, label %sw.bb61.i
    i32 9, label %sw.bb81.i
  ]

if.end37.i.sw.bb41.i_crit_edge256:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

if.end37.i.sw.bb41.i_crit_edge255:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

if.end37.i.sw.bb41.i_crit_edge254:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

if.end37.i.sw.bb41.i_crit_edge253:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

if.end37.i.sw.bb41.i_crit_edge252:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

if.end37.i.sw.bb41.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41.i

sw.bb.i:                                          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %tmu_set_trip_temp.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 22
  %23 = ptrtoint ptr %tmu_set_trip_temp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @exynos4210_tmu_set_trip_temp, ptr %tmu_set_trip_temp.i, align 4
  %tmu_set_trip_hyst.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 23
  %24 = ptrtoint ptr %tmu_set_trip_hyst.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @exynos4210_tmu_set_trip_hyst, ptr %tmu_set_trip_hyst.i, align 4
  %tmu_initialize.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 24
  %25 = ptrtoint ptr %tmu_initialize.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @exynos4210_tmu_initialize, ptr %tmu_initialize.i, align 4
  %tmu_control.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 25
  %26 = ptrtoint ptr %tmu_control.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @exynos4210_tmu_control, ptr %tmu_control.i, align 4
  %tmu_read.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 26
  %27 = ptrtoint ptr %tmu_read.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @exynos4210_tmu_read, ptr %tmu_read.i, align 4
  %tmu_clear_irqs.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 28
  %28 = ptrtoint ptr %tmu_clear_irqs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @exynos4210_tmu_clear_irqs, ptr %tmu_clear_irqs.i, align 4
  %ntrip.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 20
  %29 = ptrtoint ptr %ntrip.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %ntrip.i, align 4
  %gain.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %gain.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 15, ptr %gain.i, align 4
  %reference_voltage.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 17
  %31 = ptrtoint ptr %reference_voltage.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 7, ptr %reference_voltage.i, align 1
  %efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %32 = ptrtoint ptr %efuse_value.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 55, ptr %efuse_value.i, align 4
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end37.i.sw.bb41.i_crit_edge, %if.end37.i.sw.bb41.i_crit_edge252, %if.end37.i.sw.bb41.i_crit_edge253, %if.end37.i.sw.bb41.i_crit_edge254, %if.end37.i.sw.bb41.i_crit_edge255, %if.end37.i.sw.bb41.i_crit_edge256
  %tmu_set_trip_temp42.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 22
  %33 = ptrtoint ptr %tmu_set_trip_temp42.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @exynos4412_tmu_set_trip_temp, ptr %tmu_set_trip_temp42.i, align 4
  %tmu_set_trip_hyst43.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 23
  %34 = ptrtoint ptr %tmu_set_trip_hyst43.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @exynos4412_tmu_set_trip_hyst, ptr %tmu_set_trip_hyst43.i, align 4
  %tmu_initialize44.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 24
  %35 = ptrtoint ptr %tmu_initialize44.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @exynos4412_tmu_initialize, ptr %tmu_initialize44.i, align 4
  %tmu_control45.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 25
  %36 = ptrtoint ptr %tmu_control45.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @exynos4210_tmu_control, ptr %tmu_control45.i, align 4
  %tmu_read46.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 26
  %37 = ptrtoint ptr %tmu_read46.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @exynos4412_tmu_read, ptr %tmu_read46.i, align 4
  %tmu_set_emulation.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 27
  %38 = ptrtoint ptr %tmu_set_emulation.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @exynos4412_tmu_set_emulation, ptr %tmu_set_emulation.i, align 4
  %tmu_clear_irqs47.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 28
  %39 = ptrtoint ptr %tmu_clear_irqs47.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @exynos4210_tmu_clear_irqs, ptr %tmu_clear_irqs47.i, align 4
  %ntrip48.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 20
  %40 = ptrtoint ptr %ntrip48.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %ntrip48.i, align 4
  %gain49.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 16
  %41 = ptrtoint ptr %gain49.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %gain49.i, align 4
  %reference_voltage50.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 17
  %42 = ptrtoint ptr %reference_voltage50.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 16, ptr %reference_voltage50.i, align 1
  %efuse_value51.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %43 = ptrtoint ptr %efuse_value51.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 55, ptr %efuse_value51.i, align 4
  %44 = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %switch.i = icmp eq i32 %44, 6
  %spec.select.i = select i1 %switch.i, i32 0, i32 40
  br label %sw.epilog.i

sw.bb61.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %tmu_set_trip_temp62.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 22
  %45 = ptrtoint ptr %tmu_set_trip_temp62.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @exynos5433_tmu_set_trip_temp, ptr %tmu_set_trip_temp62.i, align 4
  %tmu_set_trip_hyst63.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 23
  %46 = ptrtoint ptr %tmu_set_trip_hyst63.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @exynos5433_tmu_set_trip_hyst, ptr %tmu_set_trip_hyst63.i, align 4
  %tmu_initialize64.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 24
  %47 = ptrtoint ptr %tmu_initialize64.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @exynos5433_tmu_initialize, ptr %tmu_initialize64.i, align 4
  %tmu_control65.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 25
  %48 = ptrtoint ptr %tmu_control65.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @exynos5433_tmu_control, ptr %tmu_control65.i, align 4
  %tmu_read66.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 26
  %49 = ptrtoint ptr %tmu_read66.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @exynos4412_tmu_read, ptr %tmu_read66.i, align 4
  %tmu_set_emulation67.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 27
  %50 = ptrtoint ptr %tmu_set_emulation67.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @exynos4412_tmu_set_emulation, ptr %tmu_set_emulation67.i, align 4
  %tmu_clear_irqs68.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 28
  %51 = ptrtoint ptr %tmu_clear_irqs68.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @exynos4210_tmu_clear_irqs, ptr %tmu_clear_irqs68.i, align 4
  %ntrip69.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 20
  %52 = ptrtoint ptr %ntrip69.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %ntrip69.i, align 4
  %gain70.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 16
  %53 = ptrtoint ptr %gain70.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %gain70.i, align 4
  %54 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268894208, i32 %55)
  %cmp72.i = icmp eq i32 %55, 268894208
  %spec.select214.i = select i1 %cmp72.i, i8 23, i8 16
  %56 = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 17
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %spec.select214.i, ptr %56, align 1
  %efuse_value78.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %58 = ptrtoint ptr %efuse_value78.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 75, ptr %efuse_value78.i, align 4
  br label %sw.epilog.i

sw.bb81.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %tmu_set_trip_temp82.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 22
  %59 = ptrtoint ptr %tmu_set_trip_temp82.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @exynos7_tmu_set_trip_temp, ptr %tmu_set_trip_temp82.i, align 4
  %tmu_set_trip_hyst83.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 23
  %60 = ptrtoint ptr %tmu_set_trip_hyst83.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @exynos7_tmu_set_trip_hyst, ptr %tmu_set_trip_hyst83.i, align 4
  %tmu_initialize84.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 24
  %61 = ptrtoint ptr %tmu_initialize84.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @exynos7_tmu_initialize, ptr %tmu_initialize84.i, align 4
  %tmu_control85.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 25
  %62 = ptrtoint ptr %tmu_control85.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @exynos7_tmu_control, ptr %tmu_control85.i, align 4
  %tmu_read86.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 26
  %63 = ptrtoint ptr %tmu_read86.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @exynos7_tmu_read, ptr %tmu_read86.i, align 4
  %tmu_set_emulation87.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 27
  %64 = ptrtoint ptr %tmu_set_emulation87.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @exynos4412_tmu_set_emulation, ptr %tmu_set_emulation87.i, align 4
  %tmu_clear_irqs88.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 28
  %65 = ptrtoint ptr %tmu_clear_irqs88.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @exynos4210_tmu_clear_irqs, ptr %tmu_clear_irqs88.i, align 4
  %ntrip89.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 20
  %66 = ptrtoint ptr %ntrip89.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 8, ptr %ntrip89.i, align 4
  %gain90.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 16
  %67 = ptrtoint ptr %gain90.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 9, ptr %gain90.i, align 4
  %reference_voltage91.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 17
  %68 = ptrtoint ptr %reference_voltage91.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 17, ptr %reference_voltage91.i, align 1
  %efuse_value92.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 11
  %69 = ptrtoint ptr %efuse_value92.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 75, ptr %efuse_value92.i, align 4
  br label %sw.epilog.i

do.end97.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #10
  br label %exynos_map_dt_data.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb81.i, %sw.bb61.i, %sw.bb41.i, %sw.bb.i
  %.sink215.i = phi i32 [ 15, %sw.bb81.i ], [ 40, %sw.bb61.i ], [ %spec.select.i, %sw.bb41.i ], [ 40, %sw.bb.i ]
  %.sink.i = phi i32 [ 100, %sw.bb81.i ], [ 150, %sw.bb61.i ], [ 100, %sw.bb41.i ], [ 100, %sw.bb.i ]
  %min_efuse_value93.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 12
  %70 = ptrtoint ptr %min_efuse_value93.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.sink215.i, ptr %min_efuse_value93.i, align 4
  %max_efuse_value94.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 13
  %71 = ptrtoint ptr %max_efuse_value94.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i, ptr %max_efuse_value94.i, align 4
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 10
  %72 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %cal_type.i, align 4
  %73 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %74)
  %cmp100.not.i = icmp eq i32 %74, 7
  br i1 %cmp100.not.i, label %if.end102.i, label %sw.epilog.i.do.body28_crit_edge

sw.epilog.i.do.body28_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.end102.i:                                      ; preds = %sw.epilog.i
  %75 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %of_node.i, align 8
  %call105.i = call i32 @of_address_to_resource(ptr noundef %76, i32 noundef 1, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end112.i, label %do.end110.i

do.end110.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #10
  br label %exynos_map_dt_data.exit.thread

if.end112.i:                                      ; preds = %if.end102.i
  %77 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %res.i, align 4
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %4, align 4
  %sub.i210.i = sub i32 1, %78
  %add.i211.i = add i32 %sub.i210.i, %80
  %call116.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %78, i32 noundef %add.i211.i) #7
  %base_second.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %base_second.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call116.i, ptr %base_second.i, align 4
  %tobool118.not.i = icmp eq ptr %call116.i, null
  br i1 %tobool118.not.i, label %do.end122.i, label %if.end112.i.do.body28_crit_edge

if.end112.i.do.body28_crit_edge:                  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

do.end122.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #10
  br label %exynos_map_dt_data.exit.thread

exynos_map_dt_data.exit.thread:                   ; preds = %do.end122.i, %do.end110.i, %do.end97.i, %do.end35.i, %do.end24.i, %do.end.i, %lor.lhs.false.i.exynos_map_dt_data.exit.thread_crit_edge, %if.end23.exynos_map_dt_data.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end23.exynos_map_dt_data.exit.thread_crit_edge ], [ -19, %lor.lhs.false.i.exynos_map_dt_data.exit.thread_crit_edge ], [ -99, %do.end35.i ], [ -12, %do.end122.i ], [ -19, %do.end110.i ], [ -22, %do.end97.i ], [ -19, %do.end24.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  br label %err_sensor

do.body28:                                        ; preds = %if.end112.i.do.body28_crit_edge, %sw.epilog.i.do.body28_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  %irq_work = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #7
  %82 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @exynos_tmu_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry33 = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 5, i32 2
  %85 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @exynos_tmu_work, ptr %func, align 4
  %call38 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %clk = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 7
  %86 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call38, ptr %clk, align 4
  %cmp.i229 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %do.end44, label %if.end48

do.end44:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %87 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clk, align 4
  %89 = ptrtoint ptr %88 to i32
  br label %err_sensor

if.end48:                                         ; preds = %do.body28
  %call50 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  %clk_sec = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 8
  %90 = ptrtoint ptr %clk_sec to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call50, ptr %clk_sec, align 4
  %cmp.i230 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then53, label %if.else63

if.then53:                                        ; preds = %if.end48
  %soc = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 4
  %91 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %92)
  %cmp54 = icmp eq i32 %92, 7
  br i1 %cmp54, label %do.end58, label %if.then53.if.end73_crit_edge

if.then53.if.end73_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

do.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  %93 = ptrtoint ptr %clk_sec to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_sec, align 4
  %95 = ptrtoint ptr %94 to i32
  br label %err_sensor

if.else63:                                        ; preds = %if.end48
  %call65 = call i32 @clk_prepare(ptr noundef %call50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else63.if.end73_crit_edge, label %do.end70

if.else63.if.end73_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

do.end70:                                         ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %err_sensor

if.end73:                                         ; preds = %if.else63.if.end73_crit_edge, %if.then53.if.end73_crit_edge
  %96 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk, align 4
  %call75 = call i32 @clk_prepare(ptr noundef %97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %err_clk_sec

if.end82:                                         ; preds = %if.end73
  %soc83 = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 4
  %98 = ptrtoint ptr %soc83 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %soc83, align 4
  %100 = and i32 %99, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %100)
  %switch = icmp eq i32 %100, 8
  br i1 %switch, label %sw.bb, label %if.end82.sw.epilog_crit_edge

if.end82.sw.epilog_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end82
  %call85 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  %sclk = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 9
  %101 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call85, ptr %sclk, align 4
  %cmp.i231 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %do.end91, label %if.else95

do.end91:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  %102 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sclk, align 4
  %104 = ptrtoint ptr %103 to i32
  br label %err_clk

if.else95:                                        ; preds = %sw.bb
  %call.i232 = call i32 @clk_prepare(ptr noundef %call85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not.i233 = icmp eq i32 %call.i232, 0
  br i1 %tobool.not.i233, label %if.end.i234, label %if.else95.do.end102_crit_edge

if.else95.do.end102_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end102

if.end.i234:                                      ; preds = %if.else95
  %call1.i = call i32 @clk_enable(ptr noundef %call85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i234.sw.epilog_crit_edge, label %if.then3.i

if.end.i234.sw.epilog_crit_edge:                  ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then3.i:                                       ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call85) #7
  br label %do.end102

do.end102:                                        ; preds = %if.then3.i, %if.else95.do.end102_crit_edge
  %retval.0.i235.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i232, %if.else95.do.end102_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %err_clk

sw.epilog:                                        ; preds = %if.end.i234.sw.epilog_crit_edge, %if.end82.sw.epilog_crit_edge
  %call107 = call ptr @thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @exynos_sensor_ops) #7
  %tzd = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 19
  %105 = ptrtoint ptr %tzd to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call107, ptr %tzd, align 4
  %cmp.i236 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then110, label %if.end120

if.then110:                                       ; preds = %sw.epilog
  %cmp113.not = icmp eq ptr %call107, inttoptr (i32 -517 to ptr)
  br i1 %cmp113.not, label %if.then110.err_sclk_crit_edge, label %do.end117

if.then110.err_sclk_crit_edge:                    ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sclk

do.end117:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %call107 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %106) #10
  br label %err_sclk

if.end120:                                        ; preds = %sw.epilog
  %call121 = call fastcc i32 @exynos_tmu_initialize(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end128, label %do.end126

do.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %err_thermal

if.end128:                                        ; preds = %if.end120
  %irq = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 3
  %107 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %109 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i237 = icmp eq ptr %110, null
  br i1 %tobool.not.i237, label %if.end.i238, label %if.end128.dev_name.exit_crit_edge

if.end128.dev_name.exit_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i238:                                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i238, %if.end128.dev_name.exit_crit_edge
  %retval.0.i239 = phi ptr [ %112, %if.end.i238 ], [ %110, %if.end128.dev_name.exit_crit_edge ]
  %call.i240 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %108, ptr noundef nonnull @exynos_tmu_irq, ptr noundef null, i32 noundef 129, ptr noundef %retval.0.i239, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool133.not = icmp eq i32 %call.i240, 0
  br i1 %tobool133.not, label %if.end140, label %do.end137

do.end137:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %114) #10
  br label %err_thermal

if.end140:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %116, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %clk.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk.i, align 4
  %call1.i242 = call i32 @clk_enable(ptr noundef %118) #7
  %tmu_control.i243 = getelementptr inbounds %struct.exynos_tmu_data, ptr %116, i32 0, i32 25
  %119 = ptrtoint ptr %tmu_control.i243 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tmu_control.i243, align 4
  call void %120(ptr noundef %pdev, i1 noundef zeroext true) #7
  %enabled.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %116, i32 0, i32 21
  %121 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %enabled.i, align 4
  %122 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %123) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

err_thermal:                                      ; preds = %do.end137, %do.end126
  %ret.0 = phi i32 [ %call121, %do.end126 ], [ %call.i240, %do.end137 ]
  %124 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tzd, align 4
  call void @thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %125) #7
  br label %err_sclk

err_sclk:                                         ; preds = %err_thermal, %do.end117, %if.then110.err_sclk_crit_edge
  %ret.1 = phi i32 [ %106, %do.end117 ], [ -517, %if.then110.err_sclk_crit_edge ], [ %ret.0, %err_thermal ]
  %sclk143 = getelementptr inbounds %struct.exynos_tmu_data, ptr %call.i, i32 0, i32 9
  %126 = ptrtoint ptr %sclk143 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sclk143, align 4
  call void @clk_disable(ptr noundef %127) #7
  call void @clk_unprepare(ptr noundef %127) #7
  br label %err_clk

err_clk:                                          ; preds = %err_sclk, %do.end102, %do.end91
  %ret.2 = phi i32 [ %ret.1, %err_sclk ], [ %104, %do.end91 ], [ %retval.0.i235.ph, %do.end102 ]
  %128 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %clk, align 4
  call void @clk_unprepare(ptr noundef %129) #7
  br label %err_clk_sec

err_clk_sec:                                      ; preds = %err_clk, %do.end80
  %ret.3 = phi i32 [ %call75, %do.end80 ], [ %ret.2, %err_clk ]
  %130 = ptrtoint ptr %clk_sec to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clk_sec, align 4
  %cmp.i244 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %err_clk_sec.err_sensor_crit_edge, label %if.then147

err_clk_sec.err_sensor_crit_edge:                 ; preds = %err_clk_sec
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_sensor

if.then147:                                       ; preds = %err_clk_sec
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %131) #7
  br label %err_sensor

err_sensor:                                       ; preds = %if.then147, %err_clk_sec.err_sensor_crit_edge, %do.end70, %do.end58, %do.end44, %exynos_map_dt_data.exit.thread
  %ret.4 = phi i32 [ %89, %do.end44 ], [ %95, %do.end58 ], [ %ret.3, %err_clk_sec.err_sensor_crit_edge ], [ %ret.3, %if.then147 ], [ %call65, %do.end70 ], [ %retval.0.i.ph, %exynos_map_dt_data.exit.thread ]
  %132 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regulator, align 4
  %cmp.i245 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %err_sensor.cleanup_crit_edge, label %if.then152

err_sensor.cleanup_crit_edge:                     ; preds = %err_sensor
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then152:                                       ; preds = %err_sensor
  call void @__sanitizer_cov_trace_pc() #9
  %call154 = call i32 @regulator_disable(ptr noundef %133) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %err_sensor.cleanup_crit_edge, %if.end140, %if.else.cleanup_crit_edge, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end140 ], [ %call7, %do.end12 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ %ret.4, %if.then152 ], [ %ret.4, %err_sensor.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tzd1 = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tzd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzd1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @thermal_zone_of_sensor_unregister(ptr noundef %dev, ptr noundef %3) #7
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %clk.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  %tmu_control.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %tmu_control.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tmu_control.i, align 4
  tail call void %9(ptr noundef %pdev, i1 noundef zeroext false) #7
  %enabled.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %5, i32 0, i32 21
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled.i, align 4
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %sclk = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sclk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %clk = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %16) #7
  %clk_sec = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %clk_sec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_sec, align 4
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %18) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regulator = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regulator, align 4
  %cmp.i17 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @regulator_disable(ptr noundef %20) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_tmu_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %tzd = getelementptr i8, ptr %work, i32 176
  %0 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzd, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 0) #7
  %lock = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %clk = getelementptr i8, ptr %work, i32 136
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #7
  %tmu_clear_irqs = getelementptr i8, ptr %work, i32 212
  %4 = ptrtoint ptr %tmu_clear_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmu_clear_irqs, align 4
  tail call void %5(ptr noundef %add.ptr) #7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %irq = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos_tmu_initialize(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %temp = alloca i32, align 4
  %hyst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tzd1 = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tzd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzd1, align 4
  %call2 = tail call ptr @of_thermal_get_trip_points(ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hyst) #7
  %5 = ptrtoint ptr %hyst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %hyst, align 4, !annotation !144
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #10
  br label %cleanup67

if.end:                                           ; preds = %entry
  %soc = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp.not = icmp eq i32 %7, 8
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %if.end5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end5:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_crit_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %get_crit_temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_crit_temp, align 4
  %call4 = call i32 %11(ptr noundef %3, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %do.end10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.67) #10
  br label %cleanup67

if.end12:                                         ; preds = %if.end5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = call i32 @of_thermal_get_ntrips(ptr noundef %3) #7
  %ntrip = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntrip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %13)
  %cmp14 = icmp ugt i32 %call13, %13
  br i1 %cmp14, label %do.end18, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.70) #10
  %call24 = call i32 @of_thermal_get_ntrips(ptr noundef %3) #7
  %14 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ntrip, align 4
  %sub = sub i32 %call24, %15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.73, i32 noundef %sub) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end18, %if.end12.if.end26_crit_edge
  %lock = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call27 = call i32 @clk_enable(ptr noundef %17) #7
  %clk_sec = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %clk_sec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_sec, align 4
  %cmp.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = call i32 @clk_enable(ptr noundef %19) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 40
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %if.end32.err_crit_edge, label %if.else

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.else:                                          ; preds = %if.end32
  %call37 = call i32 @of_thermal_get_ntrips(ptr noundef %3) #7
  %23 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ntrip, align 4
  %25 = call i32 @llvm.smin.i32(i32 %call37, i32 %24)
  %tmu_initialize = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %tmu_initialize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tmu_initialize, align 4
  call void %27(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp42121 = icmp sgt i32 %25, 0
  br i1 %cmp42121, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %ops44 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 20
  %tmu_set_trip_temp = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 22
  %tmu_set_trip_hyst = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end54.for.body_crit_edge ]
  %28 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops44, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_trip_temp, align 4
  %call45 = call i32 %31(ptr noundef %3, i32 noundef %i.0122, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end48:                                         ; preds = %for.body
  %32 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp, align 4
  %div = sdiv i32 %33, 1000
  store i32 %div, ptr %temp, align 4
  %34 = ptrtoint ptr %tmu_set_trip_temp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tmu_set_trip_temp, align 4
  %conv49 = trunc i32 %div to i8
  call void %35(ptr noundef %1, i32 noundef %i.0122, i8 noundef zeroext %conv49) #7
  %36 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops44, align 4
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %get_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_trip_hyst, align 4
  %call51 = call i32 %39(ptr noundef %3, i32 noundef %i.0122, ptr noundef nonnull %hyst) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end48.err_crit_edge

if.end48.err_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end54:                                         ; preds = %if.end48
  %40 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hyst, align 4
  %div55 = sdiv i32 %41, 1000
  store i32 %div55, ptr %hyst, align 4
  %42 = ptrtoint ptr %tmu_set_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tmu_set_trip_hyst, align 4
  %44 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %temp, align 4
  %conv56 = trunc i32 %45 to i8
  %conv57 = trunc i32 %div55 to i8
  call void %43(ptr noundef %1, i32 noundef %i.0122, i8 noundef zeroext %conv56, i8 noundef zeroext %conv57) #7
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %if.end54.for.end_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end54.for.end_crit_edge, %if.else.for.end_crit_edge
  %tmu_clear_irqs = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 28
  %46 = ptrtoint ptr %tmu_clear_irqs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tmu_clear_irqs, align 4
  call void %47(ptr noundef %1) #7
  br label %err

err:                                              ; preds = %for.end, %if.end48.err_crit_edge, %for.body.err_crit_edge, %if.end32.err_crit_edge
  %ret.3 = phi i32 [ -16, %if.end32.err_crit_edge ], [ 0, %for.end ], [ %call51, %if.end48.err_crit_edge ], [ %call45, %for.body.err_crit_edge ]
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %49) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  %50 = ptrtoint ptr %clk_sec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_sec, align 4
  %cmp.i118 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %err.cleanup67_crit_edge, label %if.then64

err.cleanup67_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.then64:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_disable(ptr noundef %51) #7
  br label %cleanup67

cleanup67:                                        ; preds = %if.then64, %err.cleanup67_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call4, %do.end10 ], [ %ret.3, %err.cleanup67_crit_edge ], [ %ret.3, %if.then64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_irq(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #7
  %irq_work = getelementptr inbounds %struct.exynos_tmu_data, ptr %id, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %irq_work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_of_sensor_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4210_tmu_set_trip_temp(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tzd = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzd, align 4
  %call = tail call ptr @of_thermal_get_trip_points(ptr noundef %1) #7
  %temperature = getelementptr inbounds %struct.thermal_trip, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temperature, align 4
  %div = sdiv i32 %3, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cmp = icmp eq i32 %trip, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %conv.i = and i32 %div, 255
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %6 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %7 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %9 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %10 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %11 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %conv3 = trunc i32 %retval.0.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv3) #7, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %temp_to_code.exit, %entry.if.end_crit_edge
  %14 = trunc i32 %div to i8
  %conv6 = sub i8 %temp, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %base10 = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base10, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 80
  %mul = shl i32 %trip, 2
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %mul
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %conv6) #7, !srcloc !148
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @exynos4210_tmu_set_trip_hyst(ptr nocapture noundef %data, i32 noundef %trip, i8 noundef zeroext %temp, i8 noundef zeroext %hyst) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4210_tmu_initialize(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i = icmp eq i32 %7, 9
  %conv1.i = select i1 %cmp.i, i32 511, i32 255
  %and.i = and i32 %conv1.i, %5
  %conv2.i = trunc i32 %and.i to i16
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %temp_error1.i, align 4
  %9 = trunc i32 %5 to i16
  %10 = lshr i16 %9, 8
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %temp_error2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i)
  %tobool.not.i = icmp eq i16 %conv2.i, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %min_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %min_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and.i)
  %cmp8.i = icmp ugt i32 %13, %and.i
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %max_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %max_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %15)
  %cmp13.i = icmp ugt i32 %and.i, %15
  br i1 %cmp13.i, label %lor.lhs.false10.i.if.then.i_crit_edge, label %lor.lhs.false10.i.if.end.i_crit_edge

lor.lhs.false10.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false10.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false10.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %efuse_value.i, align 4
  %18 = trunc i32 %17 to i16
  %conv16.i = and i16 %18, 255
  %19 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv16.i, ptr %temp_error1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false10.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %tobool19.not.i = icmp ult i16 %9, 256
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end.i.sanitize_temp_error.exit_crit_edge

if.end.i.sanitize_temp_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sanitize_temp_error.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %efuse_value21.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %efuse_value21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %efuse_value21.i, align 4
  %22 = trunc i32 %21 to i16
  %23 = lshr i16 %22, 8
  %24 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %temp_error2.i, align 2
  br label %sanitize_temp_error.exit

sanitize_temp_error.exit:                         ; preds = %if.then20.i, %if.end.i.sanitize_temp_error.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4210_tmu_control(ptr nocapture noundef readonly %pdev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tzd = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzd, align 4
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %9, label %entry.get_con_reg.exit_crit_edge [
    i32 3, label %entry.if.then.i_crit_edge
    i32 1, label %entry.if.then.i_crit_edge37
  ]

entry.if.then.i_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.get_con_reg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_con_reg.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge37
  %or.i = or i32 %7, 6291456
  br label %get_con_reg.exit

get_con_reg.exit:                                 ; preds = %if.then.i, %entry.get_con_reg.exit_crit_edge
  %con.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %7, %entry.get_con_reg.exit_crit_edge ]
  %and.i = and i32 %con.addr.0.i, -520154881
  %reference_voltage.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %reference_voltage.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reference_voltage.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %gain.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %gain.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gain.i, align 4
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %shl6.masked.i = and i32 %shl6.i, 7936
  %or3.i = or i32 %shl.i, %and.i
  %and8.i = or i32 %or3.i, %shl6.masked.i
  br i1 %on, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %get_con_reg.exit
  %ntrip = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ntrip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp34.not = icmp eq i32 %16, 0
  br i1 %cmp34.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %interrupt_en.036 = phi i32 [ %interrupt_en.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call4 = tail call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %3, i32 noundef %i.035) #7
  %mul = shl i32 %i.035, 2
  %shl = shl nuw i32 1, %mul
  %or = select i1 %call4, i32 %shl, i32 0
  %interrupt_en.1 = or i32 %or, %interrupt_en.036
  %inc = add nuw i32 %i.035, 1
  %17 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntrip, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %interrupt_en.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %interrupt_en.1, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp6.not = icmp eq i32 %20, 2
  %shl8 = shl i32 %interrupt_en.0.lcssa, 16
  %or9 = select i1 %cmp6.not, i32 0, i32 %shl8
  %interrupt_en.2 = or i32 %or9, %interrupt_en.0.lcssa
  %or11 = or i32 %and8.i, 32769
  br label %do.body

if.else:                                          ; preds = %get_con_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = and i32 %and8.i, -57346
  %and = or i32 %or9.i, 32768
  br label %do.body

do.body:                                          ; preds = %if.else, %for.end
  %interrupt_en.3 = phi i32 [ %interrupt_en.2, %for.end ], [ 0, %if.else ]
  %con.0 = phi i32 [ %or11, %for.end ], [ %and, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %interrupt_en.3)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %21) #7, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %con.0)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %24) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4210_tmu_read(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %conv = zext i8 %2 to i32
  %3 = add i8 %2, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %3)
  %4 = icmp ult i8 %3, -101
  %cond = select i1 %4, i32 -61, i32 %conv
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4210_tmu_clear_irqs(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %soc, align 4
  %switch.tableidx = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.exynos4210_tmu_clear_irqs, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep18 = getelementptr inbounds [5 x i32], ptr @switch.table.exynos4210_tmu_clear_irqs.75, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load19 = load i32, ptr %switch.gep18, align 4
  br label %if.end10

if.end10:                                         ; preds = %switch.lookup, %entry.if.end10_crit_edge
  %tmu_intclear.0 = phi i32 [ %switch.load, %switch.lookup ], [ 120, %entry.if.end10_crit_edge ]
  %tmu_intstat.0 = phi i32 [ %switch.load19, %switch.lookup ], [ 116, %entry.if.end10_crit_edge ]
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %tmu_intstat.0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 %tmu_intclear.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4412_tmu_set_trip_temp(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %mul = shl i32 %trip, 3
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %conv.i = zext i8 %temp to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %6 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %7 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %9 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %10 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %11 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %shl4 = shl i32 %retval.0.i, %mul
  %or = or i32 %shl4, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #7, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %trip)
  %cmp = icmp eq i32 %trip, 3
  br i1 %cmp, label %if.then, label %temp_to_code.exit.if.end_crit_edge

temp_to_code.exit.if.end_crit_edge:               ; preds = %temp_to_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %temp_to_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %18 = or i32 %17, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %18) #7, !srcloc !154
  br label %if.end

if.end:                                           ; preds = %if.then, %temp_to_code.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4412_tmu_set_trip_hyst(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp, i8 noundef zeroext %hyst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %mul = shl i32 %trip, 3
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hyst)
  %tobool.not = icmp eq i8 %hyst, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %sub = sub i8 %temp, %hyst
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %4 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %conv.i = zext i8 %sub to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %6 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %7 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %9 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %10 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %11 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %shl6 = shl i32 %retval.0.i, %mul
  %or = or i32 %shl6, %and
  br label %do.body

do.body:                                          ; preds = %temp_to_code.exit, %entry.do.body_crit_edge
  %th.0 = phi i32 [ %or, %temp_to_code.exit ], [ %and, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %th.0)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %14, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %12) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4412_tmu_initialize(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %soc = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soc, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %3, label %entry.if.end26_crit_edge [
    i32 1, label %if.then8
    i32 3, label %entry.if.end_crit_edge
    i32 4, label %entry.if.end_crit_edge58
  ]

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #7, !srcloc !154
  br label %if.end

if.end:                                           ; preds = %if.then8, %entry.if.end_crit_edge, %entry.if.end_crit_edge58
  %base15 = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base15, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base15, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %14) #7, !srcloc !154
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %soc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end, %entry.if.end26_crit_edge
  %18 = phi i32 [ %3, %entry.if.end26_crit_edge ], [ %.pr, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp28 = icmp eq i32 %18, 7
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %base_second = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %base_second to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_second, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !150
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  br label %if.end43

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %base38 = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base38, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !150
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then29
  %trim_info.0 = phi i32 [ %22, %if.then29 ], [ %26, %if.else ]
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp.i = icmp eq i32 %28, 9
  %conv1.i = select i1 %cmp.i, i32 511, i32 255
  %and.i = and i32 %conv1.i, %trim_info.0
  %conv2.i = trunc i32 %and.i to i16
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv2.i, ptr %temp_error1.i, align 4
  %30 = trunc i32 %trim_info.0 to i16
  %31 = lshr i16 %30, 8
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %temp_error2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i)
  %tobool.not.i = icmp eq i16 %conv2.i, 0
  br i1 %tobool.not.i, label %if.end43.if.then.i_crit_edge, label %lor.lhs.false.i

if.end43.if.then.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end43
  %min_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 12
  %33 = ptrtoint ptr %min_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %min_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %and.i)
  %cmp8.i = icmp ugt i32 %34, %and.i
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %max_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %max_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %36)
  %cmp13.i = icmp ugt i32 %and.i, %36
  br i1 %cmp13.i, label %lor.lhs.false10.i.if.then.i_crit_edge, label %lor.lhs.false10.i.if.end.i_crit_edge

lor.lhs.false10.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false10.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false10.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end43.if.then.i_crit_edge
  %efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %efuse_value.i, align 4
  %39 = trunc i32 %38 to i16
  %conv16.i = and i16 %39, 255
  %40 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv16.i, ptr %temp_error1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false10.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %30)
  %tobool19.not.i = icmp ult i16 %30, 256
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end.i.sanitize_temp_error.exit_crit_edge

if.end.i.sanitize_temp_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sanitize_temp_error.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %efuse_value21.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %efuse_value21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %efuse_value21.i, align 4
  %43 = trunc i32 %42 to i16
  %44 = lshr i16 %43, 8
  %45 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %temp_error2.i, align 2
  br label %sanitize_temp_error.exit

sanitize_temp_error.exit:                         ; preds = %if.then20.i, %if.end.i.sanitize_temp_error.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4412_tmu_read(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4412_tmu_set_emulation(ptr nocapture noundef readonly %data, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %soc, align 4
  %switch.tableidx = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.exynos4412_tmu_set_emulation, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end10

if.end10:                                         ; preds = %switch.lookup, %entry.if.end10_crit_edge
  %emul_con.0 = phi i32 [ %switch.load, %switch.lookup ], [ 128, %entry.if.end10_crit_edge ]
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %emul_con.0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %temp)
  %tobool.not.i = icmp eq i32 %temp, 0
  br i1 %tobool.not.i, label %if.else11.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  %div.i = sdiv i32 %temp, 1000
  %and.i = and i32 %7, 65535
  %or.i = or i32 %and.i, 1475346432
  %8 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp.i = icmp eq i32 %9, 9
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  %and2.i = and i32 %or.i, 1475346558
  %cal_type.i.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %cal_type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cal_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  %conv.i.i = and i32 %div.i, 255
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %12 = ptrtoint ptr %temp_error1.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %temp_error1.i.i, align 4
  %conv1.i.i = zext i16 %13 to i32
  %add.i.i = add nsw i32 %conv.i.i, -25
  %sub.i.i = add nsw i32 %add.i.i, %conv1.i.i
  br label %temp_to_code.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i.i = add nsw i32 %conv.i.i, -25
  %temp_error2.i.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %14 = ptrtoint ptr %temp_error2.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %temp_error2.i.i, align 2
  %conv4.i.i = zext i16 %15 to i32
  %temp_error15.i.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %16 = ptrtoint ptr %temp_error15.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %temp_error15.i.i, align 4
  %conv6.i.i = zext i16 %17 to i32
  %sub7.i.i = sub nsw i32 %conv4.i.i, %conv6.i.i
  %mul.i.i = mul nsw i32 %sub7.i.i, %sub3.i.i
  %div.i.i = sdiv i32 %mul.i.i, 60
  %add10.i.i = add nsw i32 %div.i.i, %conv6.i.i
  br label %temp_to_code.exit.i

temp_to_code.exit.i:                              ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %add10.i.i, %if.end.i.i ]
  %shl.i = shl nsw i32 %retval.0.i.i, 7
  %or3.i = or i32 %and2.i, %shl.i
  %or4.i = or i32 %or3.i, 1
  br label %get_emul_con_reg.exit

if.else.i:                                        ; preds = %if.then.i
  %and5.i = and i32 %or.i, 1475346686
  %cal_type.i26.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %18 = ptrtoint ptr %cal_type.i26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cal_type.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i27.i = icmp eq i32 %19, 0
  %conv.i28.i = and i32 %div.i, 255
  br i1 %cmp.i27.i, label %if.then.i33.i, label %if.end.i43.i

if.then.i33.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i29.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %20 = ptrtoint ptr %temp_error1.i29.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %temp_error1.i29.i, align 4
  %conv1.i30.i = zext i16 %21 to i32
  %add.i31.i = add nsw i32 %conv.i28.i, -25
  %sub.i32.i = add nsw i32 %add.i31.i, %conv1.i30.i
  br label %temp_to_code.exit45.i

if.end.i43.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i34.i = add nsw i32 %conv.i28.i, -25
  %temp_error2.i35.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %22 = ptrtoint ptr %temp_error2.i35.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %temp_error2.i35.i, align 2
  %conv4.i36.i = zext i16 %23 to i32
  %temp_error15.i37.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %24 = ptrtoint ptr %temp_error15.i37.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %temp_error15.i37.i, align 4
  %conv6.i38.i = zext i16 %25 to i32
  %sub7.i39.i = sub nsw i32 %conv4.i36.i, %conv6.i38.i
  %mul.i40.i = mul nsw i32 %sub7.i39.i, %sub3.i34.i
  %div.i41.i = sdiv i32 %mul.i40.i, 60
  %add10.i42.i = add nsw i32 %div.i41.i, %conv6.i38.i
  br label %temp_to_code.exit45.i

temp_to_code.exit45.i:                            ; preds = %if.end.i43.i, %if.then.i33.i
  %retval.0.i44.i = phi i32 [ %sub.i32.i, %if.then.i33.i ], [ %add10.i42.i, %if.end.i43.i ]
  %shl8.i = shl nsw i32 %retval.0.i44.i, 8
  %or9.i = or i32 %and5.i, %shl8.i
  %or10.i = or i32 %or9.i, 1
  br label %get_emul_con_reg.exit

if.else11.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %and12.i = and i32 %7, -2
  br label %get_emul_con_reg.exit

get_emul_con_reg.exit:                            ; preds = %if.else11.i, %temp_to_code.exit45.i, %temp_to_code.exit.i
  %val.addr.0.i = phi i32 [ %or4.i, %temp_to_code.exit.i ], [ %or10.i, %temp_to_code.exit45.i ], [ %and12.i, %if.else11.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0.i)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %28, i32 %emul_con.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %26) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5433_tmu_set_trip_temp(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %trip)
  %cmp = icmp sgt i32 %trip, 3
  %reg_off.0 = select i1 %cmp, i32 84, i32 80
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg_off.0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %conv.i = zext i8 %temp to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %5 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %6 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %7 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %8 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %9 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %10 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %2)
  %12 = shl i32 %trip, 3
  %13 = add i32 %12, -32
  %mul = select i1 %cmp, i32 %13, i32 %12
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %shl4 = shl i32 %retval.0.i, %mul
  %or = or i32 %shl4, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %16, i32 %reg_off.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %14) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5433_tmu_set_trip_hyst(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp, i8 noundef zeroext %hyst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %trip)
  %cmp = icmp sgt i32 %trip, 3
  %reg_off.0 = select i1 %cmp, i32 100, i32 96
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg_off.0
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %sub3 = sub i8 %temp, %hyst
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %conv.i = zext i8 %sub3 to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %5 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %6 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %7 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %8 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %9 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %10 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %2)
  %12 = shl i32 %trip, 3
  %13 = add i32 %12, -32
  %mul = select i1 %cmp, i32 %13, i32 %12
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %shl7 = shl i32 %retval.0.i, %mul
  %or = or i32 %shl7, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 %reg_off.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %14) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5433_tmu_initialize(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i = icmp eq i32 %7, 9
  %conv1.i = select i1 %cmp.i, i32 511, i32 255
  %and.i = and i32 %conv1.i, %5
  %conv2.i = trunc i32 %and.i to i16
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %temp_error1.i, align 4
  %9 = trunc i32 %5 to i16
  %10 = lshr i16 %9, 8
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %temp_error2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i)
  %tobool.not.i = icmp eq i16 %conv2.i, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %min_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %min_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and.i)
  %cmp8.i = icmp ugt i32 %13, %and.i
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %max_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %max_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %15)
  %cmp13.i = icmp ugt i32 %and.i, %15
  br i1 %cmp13.i, label %lor.lhs.false10.i.if.then.i_crit_edge, label %lor.lhs.false10.i.if.end.i_crit_edge

lor.lhs.false10.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false10.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false10.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %efuse_value.i, align 4
  %18 = trunc i32 %17 to i16
  %conv16.i = and i16 %18, 255
  %19 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv16.i, ptr %temp_error1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false10.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %tobool19.not.i = icmp ult i16 %9, 256
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end.i.sanitize_temp_error.exit_crit_edge

if.end.i.sanitize_temp_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sanitize_temp_error.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %efuse_value21.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %efuse_value21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %efuse_value21.i, align 4
  %22 = trunc i32 %21 to i16
  %23 = lshr i16 %22, 8
  %24 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %temp_error2.i, align 2
  br label %sanitize_temp_error.exit

sanitize_temp_error.exit:                         ; preds = %if.then20.i, %if.end.i.sanitize_temp_error.exit_crit_edge
  %and = lshr i32 %5, 16
  %shr = and i32 %and, 15
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %shr) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %4) #7, !srcloc !154
  %27 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cond17.not = icmp eq i32 %27, 0
  %spec.select = select i1 %cond17.not, i32 0, i32 3
  %spec.select28 = select i1 %cond17.not, i32 1, i32 2
  %28 = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %spec.select28) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos5433_tmu_control(ptr nocapture noundef readonly %pdev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tzd = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzd, align 4
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %9, label %entry.get_con_reg.exit_crit_edge [
    i32 3, label %entry.if.then.i_crit_edge
    i32 1, label %entry.if.then.i_crit_edge41
  ]

entry.if.then.i_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.get_con_reg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_con_reg.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge41
  %or.i = or i32 %7, 6291456
  br label %get_con_reg.exit

get_con_reg.exit:                                 ; preds = %if.then.i, %entry.get_con_reg.exit_crit_edge
  %con.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %7, %entry.get_con_reg.exit_crit_edge ]
  %and.i = and i32 %con.addr.0.i, -520154881
  %reference_voltage.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %reference_voltage.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reference_voltage.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %gain.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %gain.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gain.i, align 4
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %shl6.masked.i = and i32 %shl6.i, 7936
  %or3.i = or i32 %shl.i, %and.i
  %and8.i = or i32 %or3.i, %shl6.masked.i
  br i1 %on, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %get_con_reg.exit
  %ntrip = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ntrip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp38.not = icmp eq i32 %16, 0
  br i1 %cmp38.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %interrupt_en.040 = phi i32 [ %interrupt_en.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call4 = tail call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %3, i32 noundef %i.039) #7
  %shl = shl nuw i32 1, %i.039
  %or = select i1 %call4, i32 %shl, i32 0
  %interrupt_en.1 = or i32 %or, %interrupt_en.040
  %inc = add nuw i32 %i.039, 1
  %17 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntrip, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %interrupt_en.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %interrupt_en.1, %for.body.for.end_crit_edge ]
  %shl6 = shl i32 %interrupt_en.0.lcssa, 16
  %or7 = or i32 %shl6, %interrupt_en.0.lcssa
  %or8 = or i32 %and8.i, 32769
  br label %if.end9

if.else:                                          ; preds = %get_con_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = and i32 %and8.i, -57346
  %and = or i32 %or9.i, 32768
  br label %if.end9

if.end9:                                          ; preds = %if.else, %for.end
  %19 = phi i32 [ 0, %if.else ], [ 16777216, %for.end ]
  %interrupt_en.2 = phi i32 [ 0, %if.else ], [ %or7, %for.end ]
  %con.0 = phi i32 [ %and, %if.else ], [ %or8, %for.end ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %21, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %19) #7, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %interrupt_en.2)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %24, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %22) #7, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %con.0)
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %25) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos7_tmu_set_trip_temp(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 7, %trip
  %div = sdiv i32 %sub, 2
  %mul = shl i32 %div, 2
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %conv.i = zext i8 %temp to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %5 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %6 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %7 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %8 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %9 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %10 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %2)
  %sub1 = sub i32 8, %trip
  %rem = srem i32 %sub1, 2
  %mul4 = shl nsw i32 %rem, 4
  %shl = shl i32 511, %mul4
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %shl7 = shl i32 %retval.0.i, %mul4
  %or = or i32 %shl7, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %14, i32 80
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %12) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos7_tmu_set_trip_hyst(ptr nocapture noundef readonly %data, i32 noundef %trip, i8 noundef zeroext %temp, i8 noundef zeroext %hyst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 7, %trip
  %div = sdiv i32 %sub, 2
  %mul = shl i32 %div, 2
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  %sub6 = sub i8 %temp, %hyst
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  %conv.i = zext i8 %sub6 to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %5 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %6 to i32
  %add.i = add nsw i32 %conv.i, -25
  %sub.i = add nsw i32 %add.i, %conv1.i
  br label %temp_to_code.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub3.i = add nsw i32 %conv.i, -25
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 15
  %7 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %temp_error2.i, align 2
  %conv4.i = zext i16 %8 to i32
  %temp_error15.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 14
  %9 = ptrtoint ptr %temp_error15.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %temp_error15.i, align 4
  %conv6.i = zext i16 %10 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %mul.i = mul nsw i32 %sub7.i, %sub3.i
  %div.i = sdiv i32 %mul.i, 60
  %add10.i = add nsw i32 %div.i, %conv6.i
  br label %temp_to_code.exit

temp_to_code.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %2)
  %sub1 = sub i32 8, %trip
  %rem = srem i32 %sub1, 2
  %mul4 = shl nsw i32 %rem, 4
  %shl = shl i32 511, %mul4
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %shl10 = shl i32 %retval.0.i, %mul4
  %or = or i32 %shl10, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 96
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos7_tmu_initialize(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i = icmp eq i32 %7, 9
  %conv1.i = select i1 %cmp.i, i32 511, i32 255
  %and.i = and i32 %conv1.i, %5
  %conv2.i = trunc i32 %and.i to i16
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %temp_error1.i, align 4
  %9 = trunc i32 %5 to i16
  %10 = lshr i16 %9, 8
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %temp_error2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2.i)
  %tobool.not.i = icmp eq i16 %conv2.i, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %min_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %min_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %and.i)
  %cmp8.i = icmp ugt i32 %13, %and.i
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %max_efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %max_efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_efuse_value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %15)
  %cmp13.i = icmp ugt i32 %and.i, %15
  br i1 %cmp13.i, label %lor.lhs.false10.i.if.then.i_crit_edge, label %lor.lhs.false10.i.if.end.i_crit_edge

lor.lhs.false10.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false10.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false10.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %efuse_value.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %efuse_value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %efuse_value.i, align 4
  %18 = trunc i32 %17 to i16
  %conv16.i = and i16 %18, 255
  %19 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv16.i, ptr %temp_error1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false10.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %tobool19.not.i = icmp ult i16 %9, 256
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end.i.sanitize_temp_error.exit_crit_edge

if.end.i.sanitize_temp_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sanitize_temp_error.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %efuse_value21.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %efuse_value21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %efuse_value21.i, align 4
  %22 = trunc i32 %21 to i16
  %23 = lshr i16 %22, 8
  %24 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %temp_error2.i, align 2
  br label %sanitize_temp_error.exit

sanitize_temp_error.exit:                         ; preds = %if.then20.i, %if.end.i.sanitize_temp_error.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos7_tmu_control(ptr nocapture noundef readonly %pdev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tzd = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %tzd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzd, align 4
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %soc.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %soc.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %9, label %entry.get_con_reg.exit_crit_edge [
    i32 3, label %entry.if.then.i_crit_edge
    i32 1, label %entry.if.then.i_crit_edge37
  ]

entry.if.then.i_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.get_con_reg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_con_reg.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge37
  %or.i = or i32 %7, 6291456
  br label %get_con_reg.exit

get_con_reg.exit:                                 ; preds = %if.then.i, %entry.get_con_reg.exit_crit_edge
  %con.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %7, %entry.get_con_reg.exit_crit_edge ]
  %and.i = and i32 %con.addr.0.i, -520154881
  %reference_voltage.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %reference_voltage.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reference_voltage.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %gain.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %gain.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gain.i, align 4
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %shl6.masked.i = and i32 %shl6.i, 7936
  %or3.i = or i32 %shl.i, %and.i
  %and8.i = or i32 %or3.i, %shl6.masked.i
  br i1 %on, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %get_con_reg.exit
  %ntrip = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ntrip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp34.not = icmp eq i32 %16, 0
  br i1 %cmp34.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %interrupt_en.036 = phi i32 [ %interrupt_en.1, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call4 = tail call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %3, i32 noundef %i.035) #7
  %shl = shl nuw i32 1, %i.035
  %or = select i1 %call4, i32 %shl, i32 0
  %interrupt_en.1 = or i32 %or, %interrupt_en.036
  %inc = add nuw i32 %i.035, 1
  %17 = ptrtoint ptr %ntrip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntrip, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %interrupt_en.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %interrupt_en.1, %for.body.for.end_crit_edge ]
  %shl6 = shl i32 %interrupt_en.0.lcssa, 16
  %or7 = or i32 %shl6, %interrupt_en.0.lcssa
  %or9 = or i32 %and8.i, 8421377
  br label %do.body

if.else:                                          ; preds = %get_con_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = and i32 %and8.i, -8445954
  %and10 = or i32 %or9.i, 32768
  br label %do.body

do.body:                                          ; preds = %if.else, %for.end
  %interrupt_en.2 = phi i32 [ %or7, %for.end ], [ 0, %if.else ]
  %con.0 = phi i32 [ %or9, %for.end ], [ %and10, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %interrupt_en.2)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %19) #7, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %con.0)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %22) #7, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7_tmu_read(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.exynos_tmu_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %3 = and i16 %2, -255
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %and = zext i16 %4 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_thermal_is_trip_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_get_temp(ptr noundef %p, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tmu_read = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 26
  %0 = ptrtoint ptr %tmu_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmu_read, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.else

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %enabled = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 21
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %lock = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %5) #7
  %6 = ptrtoint ptr %tmu_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmu_read, align 4
  %call6 = tail call i32 %7(ptr noundef nonnull %p) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end4.if.end10_crit_edge, label %if.else8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else8:                                         ; preds = %if.end4
  %cal_type.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 10
  %8 = ptrtoint ptr %cal_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %conv.i = and i32 %call6, 65535
  %temp_error1.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 14
  %10 = ptrtoint ptr %temp_error1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %temp_error1.i, align 4
  %conv1.i = zext i16 %11 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  br i1 %cmp.i, label %if.else8.code_to_temp.exit_crit_edge, label %if.end.i

if.else8.code_to_temp.exit_crit_edge:             ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %code_to_temp.exit

if.end.i:                                         ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nsw i32 %sub.i, 60
  %temp_error2.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %p, i32 0, i32 15
  %12 = ptrtoint ptr %temp_error2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %temp_error2.i, align 2
  %conv6.i = zext i16 %13 to i32
  %sub9.i = sub nsw i32 %conv6.i, %conv1.i
  %div.i = sdiv i32 %mul.i, %sub9.i
  br label %code_to_temp.exit

code_to_temp.exit:                                ; preds = %if.end.i, %if.else8.code_to_temp.exit_crit_edge
  %retval.0.in.i = phi i32 [ %div.i, %if.end.i ], [ %sub.i, %if.else8.code_to_temp.exit_crit_edge ]
  %14 = mul i32 %retval.0.in.i, 1000
  %mul = add i32 %14, 25000
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %temp, align 4
  br label %if.end10

if.end10:                                         ; preds = %code_to_temp.exit, %if.end4.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %code_to_temp.exit ], [ %call6, %if.end4.if.end10_crit_edge ]
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_set_emulation(ptr noundef %drv_data, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.exynos_tmu_data, ptr %drv_data, i32 0, i32 4
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %soc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %temp)
  %tobool.not = icmp ne i32 %temp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %temp)
  %cmp1 = icmp slt i32 %temp, 1000
  %or.cond = and i1 %tobool.not, %cmp1
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.exynos_tmu_data, ptr %drv_data, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.exynos_tmu_data, ptr %drv_data, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %3) #7
  %tmu_set_emulation = getelementptr inbounds %struct.exynos_tmu_data, ptr %drv_data, i32 0, i32 27
  %4 = ptrtoint ptr %tmu_set_emulation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmu_set_emulation, align 4
  tail call void %5(ptr noundef %drv_data, i32 noundef %temp) #7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %clk.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  %tmu_control.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %tmu_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmu_control.i, align 4
  tail call void %5(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  %enabled.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled.i, align 4
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_tmu_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call fastcc i32 @exynos_tmu_initialize(ptr noundef %add.ptr)
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %clk.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  %tmu_control.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %tmu_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmu_control.i, align 4
  tail call void %5(ptr noundef %add.ptr, i1 noundef zeroext true) #7
  %enabled.i = getelementptr inbounds %struct.exynos_tmu_data, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enabled.i, align 4
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_exynos_thermal__290_1190_exynos_tmu_driver_init6, !1, !"__initcall__kmod_exynos_thermal__290_1190_exynos_tmu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1190, i32 1}
!2 = !{ptr @__exitcall_exynos_tmu_driver_exit, !1, !"__exitcall_exynos_tmu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1192, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1193, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1194, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias295, !11, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!11 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1195, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1182, i32 13}
!14 = !{ptr @exynos_tmu_driver, !15, !"exynos_tmu_driver", i1 false, i1 false}
!15 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1180, i32 31}
!16 = !{ptr @exynos_tmu_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1016, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1023, i32 60}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1027, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @exynos_tmu_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @exynos_tmu_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1033, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @exynos_tmu_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @exynos_tmu_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @exynos_tmu_probe.__key.12, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1040, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1042, i32 39}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1044, i32 3}
!41 = !{ptr @exynos_tmu_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @exynos_tmu_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1049, i32 43}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1052, i32 4}
!47 = !{ptr @exynos_tmu_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @exynos_tmu_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @exynos_tmu_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1059, i32 4}
!51 = !{ptr @exynos_tmu_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @exynos_tmu_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1066, i32 3}
!54 = !{ptr @exynos_tmu_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1073, i32 41}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1075, i32 4}
!59 = !{ptr @exynos_tmu_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @exynos_tmu_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1081, i32 5}
!63 = !{ptr @exynos_tmu_probe._entry.30, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @exynos_tmu_probe._entry_ptr.32, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1099, i32 4}
!67 = !{ptr @exynos_tmu_probe._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @exynos_tmu_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1106, i32 3}
!71 = !{ptr @exynos_tmu_probe._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @exynos_tmu_probe._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1113, i32 3}
!75 = !{ptr @exynos_tmu_probe._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @exynos_tmu_probe._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 876, i32 48}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 882, i32 3}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @exynos_map_dt_data._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @exynos_map_dt_data._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 887, i32 3}
!86 = !{ptr @exynos_map_dt_data._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @exynos_map_dt_data._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 893, i32 3}
!90 = !{ptr @exynos_map_dt_data._entry.48, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @exynos_map_dt_data._entry_ptr.50, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 972, i32 3}
!94 = !{ptr @exynos_map_dt_data._entry.51, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @exynos_map_dt_data._entry_ptr.53, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 986, i32 3}
!98 = !{ptr @exynos_map_dt_data._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @exynos_map_dt_data._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @exynos_map_dt_data._entry.57, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 993, i32 3}
!102 = !{ptr @exynos_map_dt_data._entry_ptr.58, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 501, i32 2}
!105 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @exynos5433_tmu_initialize._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @exynos5433_tmu_initialize._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 518, i32 2}
!110 = !{ptr @exynos5433_tmu_initialize._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @exynos5433_tmu_initialize._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @exynos_sensor_ops, !113, !"exynos_sensor_ops", i1 false, i1 false}
!113 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1000, i32 48}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 269, i32 3}
!116 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @exynos_tmu_initialize._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @exynos_tmu_initialize._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 277, i32 3}
!121 = !{ptr @exynos_tmu_initialize._entry.66, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @exynos_tmu_initialize._entry_ptr.68, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 283, i32 3}
!125 = !{ptr @exynos_tmu_initialize._entry.69, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @exynos_tmu_initialize._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 285, i32 3}
!129 = !{ptr @exynos_tmu_initialize._entry.72, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @exynos_tmu_initialize._entry_ptr.74, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @exynos_tmu_match, !132, !"exynos_tmu_match", i1 false, i1 false}
!132 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 835, i32 34}
!133 = !{ptr @exynos_tmu_pm, !134, !"exynos_tmu_pm", i1 false, i1 false}
!134 = !{!"../drivers/thermal/samsung/exynos_tmu.c", i32 1173, i32 8}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{i64 2060528}
!146 = !{i64 2155134637}
!147 = !{i64 2155136898}
!148 = !{i64 2060133}
!149 = !{i64 2155137186}
!150 = !{i64 2060748}
!151 = !{i64 2155137737}
!152 = !{i64 2155152366}
!153 = !{i64 2155152603}
!154 = !{i64 2060330}
!155 = !{i64 2155153024}
!156 = !{i64 2155157594}
!157 = !{i64 2155160162}
!158 = !{i64 2155160388}
!159 = !{i64 2155138228}
!160 = !{i64 2155138446}
!161 = !{i64 2155139109}
!162 = !{i64 2155139331}
!163 = !{i64 2155139997}
!164 = !{i64 2155140215}
!165 = !{i64 2155140878}
!166 = !{i64 2155141100}
!167 = !{i64 2155141769}
!168 = !{i64 2155141991}
!169 = !{i64 2155142683}
!170 = !{i64 2155143169}
!171 = !{i64 2155157834}
!172 = !{i64 2155156913}
!173 = !{i64 2155157131}
!174 = !{i64 2155143679}
!175 = !{i64 2155143895}
!176 = !{i64 2155144580}
!177 = !{i64 2155144796}
!178 = !{i64 2155145457}
!179 = !{i64 2155147403}
!180 = !{i64 2155153690}
!181 = !{i64 2155153928}
!182 = !{i64 2155154352}
!183 = !{i64 2155154774}
!184 = !{i64 2155150026}
!185 = !{i64 2155150260}
!186 = !{i64 2155150973}
!187 = !{i64 2155151207}
!188 = !{i64 2155151875}
!189 = !{i64 2155155440}
!190 = !{i64 2155155685}
!191 = !{i64 2155156107}
!192 = !{i64 2059910}
!193 = !{i64 2155158325}
!194 = !{i8 0, i8 2}
