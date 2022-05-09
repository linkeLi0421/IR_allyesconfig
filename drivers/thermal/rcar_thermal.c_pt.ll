; ModuleID = '/llk/IR_all_yes/drivers/thermal/rcar_thermal.c_pt.bc'
source_filename = "../drivers/thermal/rcar_thermal.c"
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
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rcar_thermal_chip = type { i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.rcar_thermal_common = type { ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rcar_thermal_priv = type { ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, %struct.list_head, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rcar_thermal__189_633_rcar_thermal_driver_init6 = internal global ptr @rcar_thermal_driver_init, section ".initcall6.init", align 4
@rcar_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_thermal_probe, ptr @rcar_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_thermal_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_thermal_driver_exit = internal global ptr @rcar_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file190 = internal constant [47 x i8] c"rcar_thermal.file=drivers/thermal/rcar_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [28 x i8] c"rcar_thermal.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [61 x i8] c"rcar_thermal.description=R-Car THS/TSC thermal sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [73 x i8] c"rcar_thermal.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcar_thermal\00", [19 x i8] zeroinitializer }, align 32
@rcar_thermal_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen2_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,thermal-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen3_thermal }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rcar_thermal_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_thermal_suspend, ptr @rcar_thermal_resume, ptr @rcar_thermal_suspend, ptr @rcar_thermal_resume, ptr @rcar_thermal_suspend, ptr @rcar_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_thermal_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&common->lock\00", [18 x i8] zeroinitializer }, align 32
@rcar_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irq request failed\0A \00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_thermal_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/thermal/rcar_thermal.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_thermal_probe._entry_ptr = internal global ptr @rcar_thermal_probe._entry, section ".printk_index", align 4
@rcar_thermal_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@rcar_thermal_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&priv->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@rcar_thermal_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&priv->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@rcar_thermal_zone_of_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @rcar_thermal_of_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_thermal_zone_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @rcar_thermal_get_temp, ptr null, ptr null, ptr @rcar_thermal_get_trip_type, ptr @rcar_thermal_get_trip_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_thermal_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't register thermal zone\0A\00", [35 x i8] zeroinitializer }, align 32
@rcar_thermal_probe._entry_ptr.15 = internal global ptr @rcar_thermal_probe._entry.13, section ".printk_index", align 4
@rcar_thermal_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 576, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d sensor probed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcar_thermal_probe._entry_ptr.19 = internal global ptr @rcar_thermal_probe._entry.16, section ".printk_index", align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcar_thermal_had_changed.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_thermal_had_changed\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal%d %s%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rising \00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Falling\00", [24 x i8] zeroinitializer }, align 32
@rcar_thermal_update_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"thermal sensor was broken\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_thermal_update_temp\00", [39 x i8] zeroinitializer }, align 32
@rcar_thermal_update_temp._entry_ptr = internal global ptr @rcar_thermal_update_temp._entry, section ".printk_index", align 4
@rcar_thermal_get_trip_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar driver trip error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rcar_thermal_get_trip_type\00", [37 x i8] zeroinitializer }, align 32
@rcar_thermal_get_trip_type._entry_ptr = internal global ptr @rcar_thermal_get_trip_type._entry, section ".printk_index", align 4
@rcar_thermal_get_trip_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rcar_thermal_get_trip_temp\00", [37 x i8] zeroinitializer }, align 32
@rcar_thermal_get_trip_temp._entry_ptr = internal global ptr @rcar_thermal_get_trip_temp._entry, section ".printk_index", align 4
@rcar_thermal = internal constant { %struct.rcar_thermal_chip, [20 x i8] } { %struct.rcar_thermal_chip { i8 64, i32 1, i32 1 }, [20 x i8] zeroinitializer }, align 32
@rcar_gen2_thermal = internal constant { %struct.rcar_thermal_chip, [20 x i8] } { %struct.rcar_thermal_chip { i8 -64, i32 1, i32 1 }, [20 x i8] zeroinitializer }, align 32
@rcar_gen3_thermal = internal constant { %struct.rcar_thermal_chip, [20 x i8] } { %struct.rcar_thermal_chip { i8 -80, i32 2, i32 2 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"rcar_thermal_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 624, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 626, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"rcar_thermal_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 109, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"rcar_thermal_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 621, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 463, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 493, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 522, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 524, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [25 x i8] c"rcar_thermal_zone_of_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 326, i32 48 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"rcar_thermal_zone_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 330, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 547, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 576, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 380, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 230, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 300, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 319, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"rcar_thermal\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 58, i32 39 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"rcar_gen2_thermal\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 67, i32 39 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"rcar_gen3_thermal\00", align 1
@___asan_gen_.151 = private constant [34 x i8] c"../drivers/thermal/rcar_thermal.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 76, i32 39 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_rcar_thermal_driver_exit, ptr @__initcall__kmod_rcar_thermal__189_633_rcar_thermal_driver_init6, ptr @rcar_thermal_driver_exit, ptr @rcar_thermal_get_trip_temp._entry, ptr @rcar_thermal_get_trip_temp._entry_ptr, ptr @rcar_thermal_get_trip_type._entry, ptr @rcar_thermal_get_trip_type._entry_ptr, ptr @rcar_thermal_probe._entry, ptr @rcar_thermal_probe._entry.13, ptr @rcar_thermal_probe._entry.16, ptr @rcar_thermal_probe._entry_ptr, ptr @rcar_thermal_probe._entry_ptr.15, ptr @rcar_thermal_probe._entry_ptr.19, ptr @rcar_thermal_update_temp._entry, ptr @rcar_thermal_update_temp._entry_ptr, ptr @rcar_thermal_driver, ptr @.str, ptr @rcar_thermal_dt_ids, ptr @rcar_thermal_pm_ops, ptr @rcar_thermal_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rcar_thermal_probe.__key.7, ptr @.str.8, ptr @rcar_thermal_probe.__key.9, ptr @.str.10, ptr @rcar_thermal_probe.__key.11, ptr @.str.12, ptr @rcar_thermal_zone_of_ops, ptr @rcar_thermal_zone_ops, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rcar_thermal, ptr @rcar_gen2_thermal, ptr @rcar_gen3_thermal], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_zone_of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_zone_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_update_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_get_trip_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal_get_trip_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_thermal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_thermal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_thermal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %head = getelementptr inbounds %struct.rcar_thermal_common, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.rcar_thermal_common, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rcar_thermal_probe.__key, i16 noundef signext 3) #5
  %dev4 = getelementptr inbounds %struct.rcar_thermal_common, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev4, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i239 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  %nirqs = getelementptr inbounds %struct.rcar_thermal_chip, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nirqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp260.not = icmp eq i32 %5, 0
  br i1 %cmp260.not, label %if.end.for.cond34.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond34.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.cond34.preheader:                             ; preds = %for.inc.for.cond34.preheader_crit_edge, %if.end.for.cond34.preheader_crit_edge
  %mres.0.lcssa = phi i32 [ 0, %if.end.for.cond34.preheader_crit_edge ], [ %mres.2, %for.inc.for.cond34.preheader_crit_edge ]
  %idle.0.lcssa = phi i32 [ 5000, %if.end.for.cond34.preheader_crit_edge ], [ %idle.2, %for.inc.for.cond34.preheader_crit_edge ]
  %enr_bits.0.lcssa = phi i32 [ 0, %if.end.for.cond34.preheader_crit_edge ], [ %enr_bits.1, %for.inc.for.cond34.preheader_crit_edge ]
  %call36269 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %mres.0.lcssa) #5
  %tobool37.not270 = icmp eq ptr %call36269, null
  br i1 %tobool37.not270, label %for.cond34.preheader.for.end134_crit_edge, label %for.cond34.preheader.if.end39_crit_edge

for.cond34.preheader.if.end39_crit_edge:          ; preds = %for.cond34.preheader
  br label %if.end39

for.cond34.preheader.for.end134_crit_edge:        ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end134

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %enr_bits.0265 = phi i32 [ 0, %for.body.lr.ph ], [ %enr_bits.1, %for.inc.for.body_crit_edge ]
  %idle.0264 = phi i32 [ 5000, %for.body.lr.ph ], [ %idle.2, %for.inc.for.body_crit_edge ]
  %i.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %inc33, %for.inc.for.body_crit_edge ]
  %mres.0261 = phi i32 [ 0, %for.body.lr.ph ], [ %mres.2, %for.inc.for.body_crit_edge ]
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %i.0262) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %mres.0261) #5
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call13 to i32
  br label %error_unregister

if.end20:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %mres.0261, 1
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end9.if.end21_crit_edge
  %mres.1 = phi i32 [ %mres.0261, %if.end9.if.end21_crit_edge ], [ %inc, %if.end20 ]
  %idle.1 = phi i32 [ %idle.0264, %if.end9.if.end21_crit_edge ], [ 0, %if.end20 ]
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call6, align 4
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.dev_name.exit_crit_edge

if.end21.dev_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end21.dev_name.exit_crit_edge ]
  %call.i240 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %11, ptr noundef nonnull @rcar_thermal_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool24.not = icmp eq i32 %call.i240, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %error_unregister

if.end29:                                         ; preds = %dev_name.exit
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %call, align 4
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %if.end29.for.inc_crit_edge, label %if.then31

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %i.0262
  %or = or i32 %enr_bits.0265, %shl
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %if.end29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %mres.2 = phi i32 [ %mres.1, %if.then31 ], [ %mres.1, %if.end29.for.inc_crit_edge ], [ %mres.0261, %for.body.for.inc_crit_edge ]
  %idle.2 = phi i32 [ %idle.1, %if.then31 ], [ %idle.1, %if.end29.for.inc_crit_edge ], [ %idle.0264, %for.body.for.inc_crit_edge ]
  %enr_bits.1 = phi i32 [ %or, %if.then31 ], [ %enr_bits.0265, %if.end29.for.inc_crit_edge ], [ %enr_bits.0265, %for.body.for.inc_crit_edge ]
  %inc33 = add nuw i32 %i.0262, 1
  %18 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nirqs, align 4
  %cmp = icmp ult i32 %inc33, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond34.preheader_crit_edge

for.inc.for.cond34.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond34.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end39:                                         ; preds = %list_move_tail.exit.if.end39_crit_edge, %for.cond34.preheader.if.end39_crit_edge
  %call36274 = phi ptr [ %call36, %list_move_tail.exit.if.end39_crit_edge ], [ %call36269, %for.cond34.preheader.if.end39_crit_edge ]
  %inc35273.in = phi i32 [ %inc35273, %list_move_tail.exit.if.end39_crit_edge ], [ %mres.0.lcssa, %for.cond34.preheader.if.end39_crit_edge ]
  %enr_bits.2272 = phi i32 [ %enr_bits.3, %list_move_tail.exit.if.end39_crit_edge ], [ %enr_bits.0.lcssa, %for.cond34.preheader.if.end39_crit_edge ]
  %i.1271 = phi i32 [ %inc133, %list_move_tail.exit.if.end39_crit_edge ], [ 0, %for.cond34.preheader.if.end39_crit_edge ]
  %inc35273 = add i32 %inc35273.in, 1
  %call.i241 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 220, i32 noundef 3520) #5
  %tobool41.not = icmp eq ptr %call.i241, null
  br i1 %tobool41.not, label %if.end39.error_unregister_crit_edge, label %if.end43

if.end39.error_unregister_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end43:                                         ; preds = %if.end39
  %call44 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call36274) #5
  %20 = ptrtoint ptr %call.i241 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call44, ptr %call.i241, align 4
  %cmp.i242 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call44 to i32
  br label %error_unregister

if.end51:                                         ; preds = %if.end43
  %common52 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 1
  %22 = ptrtoint ptr %common52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %common52, align 4
  %id = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 7
  %23 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.1271, ptr %id, align 4
  %chip53 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 3
  %24 = ptrtoint ptr %chip53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %chip53, align 4
  %lock55 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock55, ptr noundef nonnull @.str.8, ptr noundef nonnull @rcar_thermal_probe.__key.7) #5
  %list = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 6
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list, ptr %list, align 4
  %prev.i243 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev.i243, align 4
  %work = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %27 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @rcar_thermal_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry67 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %entry67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry67, ptr %entry67, align 4
  %prev.i244 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 4, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i244 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry67, ptr %prev.i244, align 4
  %func = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 4, i32 0, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @rcar_thermal_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @rcar_thermal_probe.__key.11) #5
  %call78 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef nonnull %call.i241)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end51.error_unregister_crit_edge, label %if.end81

if.end51.error_unregister_crit_edge:              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.end81:                                         ; preds = %if.end51
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load82 = load i8, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load82)
  %tobool85.not = icmp sgt i8 %bf.load82, -1
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %call87 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef %i.1271, ptr noundef nonnull %call.i241, ptr noundef nonnull @rcar_thermal_zone_of_ops) #5
  %zone = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 2
  %32 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call87, ptr %zone, align 4
  br label %if.end98

if.else:                                          ; preds = %if.end81
  %call88 = tail call ptr @thermal_zone_device_register(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %call.i241, ptr noundef nonnull @rcar_thermal_zone_ops, ptr noundef null, i32 noundef 0, i32 noundef %idle.0.lcssa) #5
  %zone89 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 2
  %33 = ptrtoint ptr %zone89 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call88, ptr %zone89, align 4
  %call91 = tail call i32 @thermal_zone_device_enable(ptr noundef %call88) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.else.if.end98_crit_edge, label %if.then93

if.else.if.end98_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %zone89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %zone89, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %35) #5
  %36 = inttoptr i32 %call91 to ptr
  %37 = ptrtoint ptr %zone89 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %zone89, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.else.if.end98_crit_edge, %if.then86
  %zone99 = getelementptr inbounds %struct.rcar_thermal_priv, ptr %call.i241, i32 0, i32 2
  %38 = ptrtoint ptr %zone99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %zone99, align 4
  %cmp.i245 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %do.end104, label %if.end108

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %40 = ptrtoint ptr %zone99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %zone99, align 4
  %42 = ptrtoint ptr %41 to i32
  store ptr null, ptr %zone99, align 4
  br label %error_unregister

if.end108:                                        ; preds = %if.end98
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load109 = load i8, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load109)
  %tobool112.not = icmp sgt i8 %bf.load109, -1
  br i1 %tobool112.not, label %if.end108.if.end120_crit_edge, label %if.then113

if.end108.if.end120_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then113:                                       ; preds = %if.end108
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %39, i32 0, i32 21
  %44 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tzp, align 8
  %no_hwmon = getelementptr inbounds %struct.thermal_zone_params, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %no_hwmon to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %no_hwmon, align 4
  %47 = ptrtoint ptr %zone99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %zone99, align 4
  %call116 = tail call i32 @thermal_add_hwmon_sysfs(ptr noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then113.if.end120_crit_edge, label %if.then113.error_unregister_crit_edge

if.then113.error_unregister_crit_edge:            ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_unregister

if.then113.if.end120_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.end120:                                        ; preds = %if.then113.if.end120_crit_edge, %if.end108.if.end120_crit_edge
  %49 = ptrtoint ptr %common52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %common52, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not.i246 = icmp eq ptr %52, null
  br i1 %tobool.not.i246, label %if.end120._rcar_thermal_irq_ctrl.exit_crit_edge, label %do.body3.i

if.end120._rcar_thermal_irq_ctrl.exit_crit_edge:  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rcar_thermal_irq_ctrl.exit

do.body3.i:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id, align 4
  %mul.i = shl i32 %54, 3
  %shl.i = shl i32 3, %mul.i
  %lock.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %50, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !86
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %58, %neg.i.i
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %50, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %61 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %61) #5, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %_rcar_thermal_irq_ctrl.exit

_rcar_thermal_irq_ctrl.exit:                      ; preds = %do.body3.i, %if.end120._rcar_thermal_irq_ctrl.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %_rcar_thermal_irq_ctrl.exit.__list_del_entry.exit.i_crit_edge

_rcar_thermal_irq_ctrl.exit.__list_del_entry.exit.i_crit_edge: ; preds = %_rcar_thermal_irq_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %_rcar_thermal_irq_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i243, align 4
  %64 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %_rcar_thermal_irq_ctrl.exit.__list_del_entry.exit.i_crit_edge
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %69, ptr noundef %head) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %list, ptr %prev.i, align 4
  %71 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %head, ptr %list, align 4
  %72 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev.i243, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %list, ptr %69, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %74 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load123 = load i8, ptr %call, align 4
  %75 = and i8 %bf.load123, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool127.not = icmp eq i8 %75, 0
  %mul = shl i32 %i.1271, 3
  %shl129 = shl i32 3, %mul
  %or130 = select i1 %tobool127.not, i32 %shl129, i32 0
  %enr_bits.3 = or i32 %or130, %enr_bits.2272
  %inc133 = add i32 %i.1271, 1
  %call36 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %inc35273) #5
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %list_move_tail.exit.for.end134_crit_edge, label %list_move_tail.exit.if.end39_crit_edge

list_move_tail.exit.if.end39_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

list_move_tail.exit.for.end134_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end134

for.end134:                                       ; preds = %list_move_tail.exit.for.end134_crit_edge, %for.cond34.preheader.for.end134_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond34.preheader.for.end134_crit_edge ], [ %inc133, %list_move_tail.exit.for.end134_crit_edge ]
  %enr_bits.2.lcssa = phi i32 [ %enr_bits.0.lcssa, %for.cond34.preheader.for.end134_crit_edge ], [ %enr_bits.3, %list_move_tail.exit.for.end134_crit_edge ]
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %tobool136.not = icmp eq ptr %77, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enr_bits.2.lcssa)
  %tobool137.not = icmp eq i32 %enr_bits.2.lcssa, 0
  %or.cond = select i1 %tobool136.not, i1 true, i1 %tobool137.not
  br i1 %or.cond, label %for.end134.do.end142_crit_edge, label %if.then138

for.end134.do.end142_crit_edge:                   ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end142

if.then138:                                       ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %enr_bits.2.lcssa) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %78) #5, !srcloc !89
  br label %do.end142

do.end142:                                        ; preds = %if.then138, %for.end134.do.end142_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %i.1.lcssa) #8
  br label %cleanup

error_unregister:                                 ; preds = %if.then113.error_unregister_crit_edge, %do.end104, %if.end51.error_unregister_crit_edge, %if.then48, %if.end39.error_unregister_crit_edge, %do.end28, %if.then17
  %ret.0 = phi i32 [ %call.i240, %do.end28 ], [ %9, %if.then17 ], [ %21, %if.then48 ], [ %42, %do.end104 ], [ -12, %if.end39.error_unregister_crit_edge ], [ %call116, %if.then113.error_unregister_crit_edge ], [ %call78, %if.end51.error_unregister_crit_edge ]
  %call143 = tail call i32 @rcar_thermal_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %error_unregister, %do.end142, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_unregister ], [ 0, %do.end142 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %head = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20 = load ptr, ptr %head, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %head
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %common1.i = getelementptr i8, ptr %.pn22, i32 -204
  %3 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common1.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body._rcar_thermal_irq_ctrl.exit_crit_edge, label %do.body3.i

for.body._rcar_thermal_irq_ctrl.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rcar_thermal_irq_ctrl.exit

do.body3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr i8, ptr %.pn22, i32 8
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %8, 3
  %shl.i = shl i32 3, %mul.i
  %lock.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !86
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %or.i.i = or i32 %12, %shl.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %15) #5, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %_rcar_thermal_irq_ctrl.exit

_rcar_thermal_irq_ctrl.exit:                      ; preds = %do.body3.i, %for.body._rcar_thermal_irq_ctrl.exit_crit_edge
  %work = getelementptr i8, ptr %.pn22, i32 -192
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #5
  %chip = getelementptr i8, ptr %.pn22, i32 -196
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %zone4 = getelementptr i8, ptr %.pn22, i32 -200
  %19 = ptrtoint ptr %zone4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zone4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %_rcar_thermal_irq_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef %20) #5
  br label %for.inc

if.else:                                          ; preds = %_rcar_thermal_irq_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @thermal_zone_device_unregister(ptr noundef %20) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %21 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_thermal_common, ptr %data, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !86
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %and = and i32 %3, 986895
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #5, !srcloc !89
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %neg = xor i32 %3, -1
  %and3 = and i32 %7, %neg
  %head = getelementptr inbounds %struct.rcar_thermal_common, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn28 = load ptr, ptr %head, align 4
  %cmp.not29 = icmp eq ptr %.pn28, %head
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn28, %entry.for.body_crit_edge ]
  %common.i = getelementptr i8, ptr %.pn30, i32 -204
  %12 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common.i, align 4
  %dev1.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %id.i = getelementptr i8, ptr %.pn30, i32 8
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %17, 3
  %shr.i = lshr i32 %and3, %mul.i
  %and.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %do.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_thermal_had_changed.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_thermal_irq, %if.then5.i)) #5
          to label %if.then [label %if.then5.i], !srcloc !90

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %and7.i = and i32 %shr.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond.i = select i1 %tobool8.not.i, ptr @.str.23, ptr @.str.22
  %and9.i = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %cond11.i = select i1 %tobool10.not.i, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_thermal_had_changed.__UNIQUE_ID_ddebug188, ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %19, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond11.i) #5
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %do.body.i
  %20 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not.i25 = icmp eq ptr %23, null
  br i1 %tobool.not.i25, label %if.then._rcar_thermal_irq_ctrl.exit_crit_edge, label %do.body3.i

if.then._rcar_thermal_irq_ctrl.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rcar_thermal_irq_ctrl.exit

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i, align 4
  %mul.i27 = shl i32 %25, 3
  %shl.i = shl i32 3, %mul.i27
  %lock.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %21, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !86
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %or.i.i = or i32 %29, %shl.i
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %21, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %32) #5, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %_rcar_thermal_irq_ctrl.exit

_rcar_thermal_irq_ctrl.exit:                      ; preds = %do.body3.i, %if.then._rcar_thermal_irq_ctrl.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %33 = load ptr, ptr @system_freezable_wq, align 4
  %work = getelementptr i8, ptr %.pn30, i32 -192
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work, i32 noundef 30) #5
  br label %for.inc

for.inc:                                          ; preds = %_rcar_thermal_irq_ctrl.exit, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_thermal_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %call = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %common1.i = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end._rcar_thermal_irq_ctrl.exit_crit_edge, label %do.body3.i

if.end._rcar_thermal_irq_ctrl.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rcar_thermal_irq_ctrl.exit

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr i8, ptr %work, i32 200
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 3
  %shl.i = shl i32 3, %mul.i
  %lock.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !86
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %9, %neg.i.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %12) #5, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %_rcar_thermal_irq_ctrl.exit

_rcar_thermal_irq_ctrl.exit:                      ; preds = %do.body3.i, %if.end._rcar_thermal_irq_ctrl.exit_crit_edge
  %zone = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %zone, align 4
  tail call void @thermal_zone_device_update(ptr noundef %14, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %_rcar_thermal_irq_ctrl.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_thermal_update_temp(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr inbounds %struct.rcar_thermal_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %dev1 = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.rcar_thermal_priv, ptr %priv, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %7 = or i32 %6, 1048576
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #5, !srcloc !89
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %old.038 = phi i32 [ -1, %entry ], [ %and, %for.cond.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 400, i32 noundef 2) #5
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #5, !srcloc !86
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %and = and i32 %13, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %old.038)
  %cmp2 = icmp eq i32 %and, %old.038
  br i1 %cmp2, label %if.end5, label %for.cond

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #8
  br label %err_out_unlock

if.end5:                                          ; preds = %for.body
  %14 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end5.err_out_unlock_crit_edge, label %if.then7

if.end5.err_out_unlock_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out_unlock

if.then7:                                         ; preds = %if.end5
  %chip = getelementptr inbounds %struct.rcar_thermal_priv, ptr %priv, i32 0, i32 3
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %19, align 4
  %21 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %if.then7.if.end10_crit_edge, label %if.then9

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %add.ptr.i31 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #5, !srcloc !89
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7.if.end10_crit_edge
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %add.ptr.i32 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 16777216) #5, !srcloc !89
  %shl = shl nuw nsw i32 %old.038, 8
  %sub11 = add nsw i32 %old.038, -1
  %or = or i32 %shl, %sub11
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %add.ptr.i33 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %28) #5, !srcloc !89
  br label %err_out_unlock

err_out_unlock:                                   ; preds = %if.end10, %if.end5.err_out_unlock_crit_edge, %do.end
  %ctemp.036 = phi i32 [ %old.038, %if.end5.err_out_unlock_crit_edge ], [ %old.038, %if.end10 ], [ -22, %do.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ctemp.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_of_get_temp(ptr noundef %data, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.rcar_thermal_get_current_temp.exit_crit_edge, label %if.end.i

entry.rcar_thermal_get_current_temp.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcar_thermal_get_current_temp.exit

if.end.i:                                         ; preds = %entry
  %chip.i = getelementptr inbounds %struct.rcar_thermal_priv, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %ctemp_bands.i = getelementptr inbounds %struct.rcar_thermal_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctemp_bands.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctemp_bands.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.i = icmp eq i32 %3, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = mul i32 %call.i, 5000
  %mul3.i = add i32 %4, -65000
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i)
  %cmp4.i = icmp ult i32 %call.i, 24
  br i1 %cmp4.i, label %if.then5.i, label %if.else9.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = trunc i32 %call.i to i16
  %6 = mul nuw nsw i16 %5, 55
  %div.lhs.trunc.i = add nsw i16 %6, -720
  %div23.i = sdiv i16 %div.lhs.trunc.i, 10
  %div.sext.i = sext i16 %div23.i to i32
  %mul8.i = mul nsw i32 %div.sext.i, 1000
  br label %cleanup.sink.split.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = mul i32 %call.i, 5000
  %mul12.i = add i32 %7, -60000
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else9.i, %if.then5.i, %if.then2.i
  %mul3.sink.i = phi i32 [ %mul3.i, %if.then2.i ], [ %mul12.i, %if.else9.i ], [ %mul8.i, %if.then5.i ]
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul3.sink.i, ptr %temp, align 4
  br label %rcar_thermal_get_current_temp.exit

rcar_thermal_get_current_temp.exit:               ; preds = %cleanup.sink.split.i, %entry.rcar_thermal_get_current_temp.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.rcar_thermal_get_current_temp.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_get_temp(ptr nocapture noundef readonly %zone, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %zone, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %call.i = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.rcar_thermal_get_current_temp.exit_crit_edge, label %if.end.i

entry.rcar_thermal_get_current_temp.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcar_thermal_get_current_temp.exit

if.end.i:                                         ; preds = %entry
  %chip.i = getelementptr inbounds %struct.rcar_thermal_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %ctemp_bands.i = getelementptr inbounds %struct.rcar_thermal_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ctemp_bands.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctemp_bands.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.i = icmp eq i32 %5, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = mul i32 %call.i, 5000
  %mul3.i = add i32 %6, -65000
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i)
  %cmp4.i = icmp ult i32 %call.i, 24
  br i1 %cmp4.i, label %if.then5.i, label %if.else9.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = trunc i32 %call.i to i16
  %8 = mul nuw nsw i16 %7, 55
  %div.lhs.trunc.i = add nsw i16 %8, -720
  %div23.i = sdiv i16 %div.lhs.trunc.i, 10
  %div.sext.i = sext i16 %div23.i to i32
  %mul8.i = mul nsw i32 %div.sext.i, 1000
  br label %cleanup.sink.split.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = mul i32 %call.i, 5000
  %mul12.i = add i32 %9, -60000
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else9.i, %if.then5.i, %if.then2.i
  %mul3.sink.i = phi i32 [ %mul3.i, %if.then2.i ], [ %mul12.i, %if.else9.i ], [ %mul8.i, %if.then5.i ]
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul3.sink.i, ptr %temp, align 4
  br label %rcar_thermal_get_current_temp.exit

rcar_thermal_get_current_temp.exit:               ; preds = %cleanup.sink.split.i, %entry.rcar_thermal_get_current_temp.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.rcar_thermal_get_current_temp.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_get_trip_type(ptr nocapture noundef readonly %zone, i32 noundef %trip, ptr nocapture noundef writeonly %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cond = icmp eq i32 %trip, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %type, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %zone, i32 0, i32 8
  %1 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata, align 4
  %common = getelementptr inbounds %struct.rcar_thermal_priv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common, align 4
  %dev1 = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_get_trip_temp(ptr nocapture noundef readonly %zone, i32 noundef %trip, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cond = icmp eq i32 %trip, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 90000, ptr %temp, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %zone, i32 0, i32 8
  %1 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata, align 4
  %common = getelementptr inbounds %struct.rcar_thermal_priv, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common, align 4
  %dev1 = getelementptr inbounds %struct.rcar_thermal_common, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %head = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %chip = getelementptr i8, ptr %3, i32 -196
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 4
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -208
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !89
  %common1.i = getelementptr i8, ptr %3, i32 -204
  %10 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then._rcar_thermal_irq_ctrl.exit_crit_edge, label %do.body3.i

if.then._rcar_thermal_irq_ctrl.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rcar_thermal_irq_ctrl.exit

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr i8, ptr %3, i32 8
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %15, 3
  %shl.i = shl i32 3, %mul.i
  %lock.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %11, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !86
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %or.i.i = or i32 %19, %shl.i
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %11, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %22) #5, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %_rcar_thermal_irq_ctrl.exit

_rcar_thermal_irq_ctrl.exit:                      ; preds = %do.body3.i, %if.then._rcar_thermal_irq_ctrl.exit_crit_edge
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i4 = getelementptr i8, ptr %24, i32 44
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #5, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %26 = and i32 %25, -1048577
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %add.ptr3.i = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %26) #5, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %_rcar_thermal_irq_ctrl.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_thermal_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %head = getelementptr inbounds %struct.rcar_thermal_common, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %chip = getelementptr i8, ptr %3, i32 -196
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %5, align 4
  %7 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 -208
  %call1 = tail call fastcc i32 @rcar_thermal_update_temp(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %common1.i = getelementptr i8, ptr %3, i32 -204
  %8 = ptrtoint ptr %common1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end._rcar_thermal_irq_ctrl.exit_crit_edge, label %do.body3.i

if.end._rcar_thermal_irq_ctrl.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rcar_thermal_irq_ctrl.exit

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %id.i = getelementptr i8, ptr %3, i32 8
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %13, 3
  %shl.i = shl i32 3, %mul.i
  %lock.i = getelementptr inbounds %struct.rcar_thermal_common, ptr %9, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !86
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %17, %neg.i.i
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %20) #5, !srcloc !89
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #5
  br label %_rcar_thermal_irq_ctrl.exit

_rcar_thermal_irq_ctrl.exit:                      ; preds = %do.body3.i, %if.end._rcar_thermal_irq_ctrl.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #5, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %_rcar_thermal_irq_ctrl.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ 0, %_rcar_thermal_irq_ctrl.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_rcar_thermal__189_633_rcar_thermal_driver_init6, !1, !"__initcall__kmod_rcar_thermal__189_633_rcar_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/rcar_thermal.c", i32 633, i32 1}
!2 = !{ptr @__exitcall_rcar_thermal_driver_exit, !1, !"__exitcall_rcar_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file190, !4, !"__UNIQUE_ID_file190", i1 false, i1 false}
!4 = !{!"../drivers/thermal/rcar_thermal.c", i32 635, i32 1}
!5 = !{ptr @__UNIQUE_ID_license191, !4, !"__UNIQUE_ID_license191", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description192, !7, !"__UNIQUE_ID_description192", i1 false, i1 false}
!7 = !{!"../drivers/thermal/rcar_thermal.c", i32 636, i32 1}
!8 = !{ptr @__UNIQUE_ID_author193, !9, !"__UNIQUE_ID_author193", i1 false, i1 false}
!9 = !{!"../drivers/thermal/rcar_thermal.c", i32 637, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/rcar_thermal.c", i32 626, i32 11}
!12 = !{ptr @rcar_thermal_driver, !13, !"rcar_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/rcar_thermal.c", i32 624, i32 31}
!14 = !{ptr @rcar_thermal_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/thermal/rcar_thermal.c", i32 463, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/rcar_thermal.c", i32 493, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rcar_thermal_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rcar_thermal_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @rcar_thermal_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/thermal/rcar_thermal.c", i32 522, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rcar_thermal_probe.__key.9, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/thermal/rcar_thermal.c", i32 524, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rcar_thermal_probe.__key.11, !29, !"__key", i1 false, i1 false}
!32 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/rcar_thermal.c", i32 547, i32 4}
!35 = !{ptr @rcar_thermal_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rcar_thermal_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/rcar_thermal.c", i32 576, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rcar_thermal_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rcar_thermal_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thermal/rcar_thermal.c", i32 380, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rcar_thermal_had_changed.__UNIQUE_ID_ddebug188, !43, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!46 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/rcar_thermal.c", i32 230, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rcar_thermal_update_temp._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @rcar_thermal_update_temp._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @rcar_thermal_zone_of_ops, !55, !"rcar_thermal_zone_of_ops", i1 false, i1 false}
!55 = !{!"../drivers/thermal/rcar_thermal.c", i32 326, i32 48}
!56 = !{ptr @rcar_thermal_zone_ops, !57, !"rcar_thermal_zone_ops", i1 false, i1 false}
!57 = !{!"../drivers/thermal/rcar_thermal.c", i32 330, i32 39}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thermal/rcar_thermal.c", i32 300, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rcar_thermal_get_trip_type._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rcar_thermal_get_trip_type._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thermal/rcar_thermal.c", i32 319, i32 3}
!65 = !{ptr @rcar_thermal_get_trip_temp._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rcar_thermal_get_trip_temp._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @rcar_thermal_dt_ids, !68, !"rcar_thermal_dt_ids", i1 false, i1 false}
!68 = !{!"../drivers/thermal/rcar_thermal.c", i32 109, i32 34}
!69 = !{ptr @rcar_thermal, !70, !"rcar_thermal", i1 false, i1 false}
!70 = !{!"../drivers/thermal/rcar_thermal.c", i32 58, i32 39}
!71 = !{ptr @rcar_gen2_thermal, !72, !"rcar_gen2_thermal", i1 false, i1 false}
!72 = !{!"../drivers/thermal/rcar_thermal.c", i32 67, i32 39}
!73 = !{ptr @rcar_gen3_thermal, !74, !"rcar_gen3_thermal", i1 false, i1 false}
!74 = !{!"../drivers/thermal/rcar_thermal.c", i32 76, i32 39}
!75 = !{ptr @rcar_thermal_pm_ops, !76, !"rcar_thermal_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/thermal/rcar_thermal.c", i32 621, i32 8}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4175672}
!87 = !{i64 2151716021}
!88 = !{i64 2151717376}
!89 = !{i64 4175254}
!90 = !{i64 2148769584, i64 2148769589, i64 2148769602, i64 2148769646, i64 2148769680, i64 2148769701}
