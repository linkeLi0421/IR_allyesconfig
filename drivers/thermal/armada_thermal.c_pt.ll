; ModuleID = '/llk/IR_all_yes/drivers/thermal/armada_thermal.c_pt.bc'
source_filename = "../drivers/thermal/armada_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.armada_thermal_data = type { ptr, i64, i64, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.armada_thermal_priv = type { ptr, ptr, [20 x i8], %struct.mutex, ptr, ptr, i32, i32, i32, i32 }
%struct.armada_drvdata = type { i32, %union.anon.43 }
%union.anon.43 = type { ptr }
%struct.armada_thermal_sensor = type { ptr, i32 }
%struct.thermal_trip = type { ptr, i32, i32, i32 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_armada_thermal__187_976_armada_thermal_driver_init6 = internal global ptr @armada_thermal_driver_init, section ".initcall6.init", align 4
@armada_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armada_thermal_probe, ptr @armada_thermal_exit, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_thermal_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_armada_thermal_driver_exit = internal global ptr @armada_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [75 x i8] c"armada_thermal.author=Ezequiel Garcia <ezequiel.garcia@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [66 x i8] c"armada_thermal.description=Marvell EBU Armada SoCs thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [51 x i8] c"armada_thermal.file=drivers/thermal/armada_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [30 x i8] c"armada_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"armada_thermal\00", [17 x i8] zeroinitializer }, align 32
@armada_thermal_id_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armadaxp-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armadaxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada370_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada375-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada375_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada380-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada380_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-ap806-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_ap806_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-cp110-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_cp110_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@armada_thermal_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->update_lock\00", [45 x i8] zeroinitializer }, align 32
@legacy_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @armada_get_temp_legacy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@armada_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to register thermal zone device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"armada_thermal_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/thermal/armada_thermal.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada_thermal_probe._entry_ptr = internal global ptr @armada_thermal_probe._entry, section ".printk_index", align 4
@armada_thermal_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 912, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot request threaded IRQ %d\0A\00", [32 x i8] zeroinitializer }, align 32
@armada_thermal_probe._entry_ptr.9 = internal global ptr @armada_thermal_probe._entry.7, section ".printk_index", align 4
@of_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @armada_get_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@armada_thermal_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 936, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Thermal sensor %d unavailable\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@armada_thermal_probe._entry_ptr.13 = internal global ptr @armada_thermal_probe._entry.10, section ".printk_index", align 4
@armada_thermal_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 952, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Overheat interrupt not available\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@armada_thermal_probe._entry_ptr.17 = internal global ptr @armada_thermal_probe._entry.14, section ".printk_index", align 4
@armada_thermal_probe_legacy._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@armada_thermal_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"armada_thermal:733:(&armada_thermal_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@armada_get_temp_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Temperature sensor reading not valid\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"armada_get_temp_legacy\00", [41 x i8] zeroinitializer }, align 32
@armada_get_temp_legacy._entry_ptr = internal global ptr @armada_get_temp_legacy._entry, section ".printk_index", align 4
@armada_select_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armada_select_channel\00", [42 x i8] zeroinitializer }, align 32
@armada_select_channel._entry_ptr = internal global ptr @armada_select_channel._entry, section ".printk_index", align 4
@armadaxp_data = internal constant { %struct.armada_thermal_data, [32 x i8] } { %struct.armada_thermal_data { ptr @armadaxp_init, i64 3153000000, i64 10000000, i32 13825, i8 0, i8 0, i32 10, i32 511, i32 0, i32 0, i32 0, i32 0, i32 0, i32 720, i32 176, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@armada370_data = internal constant { %struct.armada_thermal_data, [32 x i8] } { %struct.armada_thermal_data { ptr @armada370_init, i64 3153000000, i64 10000000, i32 13825, i8 0, i8 0, i32 10, i32 511, i32 0, i32 0, i32 0, i32 512, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@armada375_data = internal constant { %struct.armada_thermal_data, [32 x i8] } { %struct.armada_thermal_data { ptr @armada375_init, i64 3171900000, i64 10000000, i32 13616, i8 0, i8 0, i32 0, i32 511, i32 0, i32 0, i32 0, i32 1024, i32 124, i32 128, i32 120, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@armada380_data = internal constant { %struct.armada_thermal_data, [32 x i8] } { %struct.armada_thermal_data { ptr @armada380_init, i64 1172499100, i64 2000096, i32 4201, i8 1, i8 0, i32 0, i32 1023, i32 0, i32 0, i32 0, i32 1024, i32 112, i32 116, i32 120, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@armada_ap806_data = internal constant { %struct.armada_thermal_data, [32 x i8] } { %struct.armada_thermal_data { ptr @armada_ap806_init, i64 -150000, i64 423, i32 1, i8 1, i8 1, i32 0, i32 1023, i32 3, i32 19, i32 3, i32 65536, i32 132, i32 136, i32 140, i32 264, i32 268, i32 4194304, i32 260, i32 2, i32 4 }, [32 x i8] zeroinitializer }, align 32
@armada_cp110_data = internal constant { %struct.armada_thermal_data, [32 x i8] } { %struct.armada_thermal_data { ptr @armada_cp110_init, i64 1172499100, i64 2000096, i32 4201, i8 1, i8 0, i32 0, i32 1023, i32 16, i32 26, i32 3, i32 1024, i32 112, i32 116, i32 120, i32 264, i32 268, i32 1048576, i32 260, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"armada_thermal_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 967, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 971, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"armada_thermal_id_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 670, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 842, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"legacy_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 419, i32 39 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 872, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 911, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"of_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 453, i32 48 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 935, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 952, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [29 x i8] c"armada_thermal_regmap_config\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 701, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 732, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 408, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 366, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"armadaxp_data\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 574, i32 41 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"armada370_data\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 585, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"armada375_data\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 597, i32 41 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"armada380_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 610, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"armada_ap806_data\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 624, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"armada_cp110_data\00", align 1
@___asan_gen_.126 = private constant [36 x i8] c"../drivers/thermal/armada_thermal.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 648, i32 41 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_armada_thermal_driver_exit, ptr @__initcall__kmod_armada_thermal__187_976_armada_thermal_driver_init6, ptr @armada_get_temp_legacy._entry, ptr @armada_get_temp_legacy._entry_ptr, ptr @armada_select_channel._entry, ptr @armada_select_channel._entry_ptr, ptr @armada_thermal_driver_exit, ptr @armada_thermal_probe._entry, ptr @armada_thermal_probe._entry.10, ptr @armada_thermal_probe._entry.14, ptr @armada_thermal_probe._entry.7, ptr @armada_thermal_probe._entry_ptr, ptr @armada_thermal_probe._entry_ptr.13, ptr @armada_thermal_probe._entry_ptr.17, ptr @armada_thermal_probe._entry_ptr.9, ptr @armada_thermal_driver, ptr @.str, ptr @armada_thermal_id_table, ptr @armada_thermal_probe.__key, ptr @.str.1, ptr @legacy_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @of_ops, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @armada_thermal_probe_legacy._key, ptr @armada_thermal_regmap_config, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @armadaxp_data, ptr @armada370_data, ptr @armada375_data, ptr @armada380_data, ptr @armada_ap806_data, ptr @armada_cp110_data], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_id_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_probe_legacy._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_thermal_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_get_temp_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_select_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armadaxp_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada370_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada375_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada380_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_ap806_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_cp110_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @armada_thermal_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @armada_thermal_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  %remainder.i17.i.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  %ctrl1.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @armada_thermal_id_table, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i177 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #9
  %tobool8.not = icmp eq ptr %call.i177, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %data13 = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %data13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %data13, align 4
  %update_lock = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @armada_thermal_probe.__key) #9
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call15 = tail call ptr @syscon_node_to_regmap(ptr noundef %7) #9
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end38

if.then17:                                        ; preds = %if.end10
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then17.dev_name.exit.i_crit_edge

if.then17.dev_name.exit.i_crit_edge:              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then17.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.then17.dev_name.exit.i_crit_edge ]
  %call1.i = tail call i32 @strlen(ptr noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call1.i)
  %cmp.i178 = icmp ugt i32 %call1.i, 20
  br i1 %cmp.i178, label %if.then.i, label %dev_name.exit.i.if.end4.i_crit_edge

dev_name.exit.i.if.end4.i_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call ptr @strrchr(ptr noundef %retval.0.i.i, i32 noundef 58) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  %incdec.ptr.i = getelementptr i8, ptr %call2.i, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr @.str, ptr %incdec.ptr.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %dev_name.exit.i.if.end4.i_crit_edge
  %name.0.i = phi ptr [ %retval.0.i.i, %dev_name.exit.i.if.end4.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %zone_name.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 2
  %call5.i = tail call ptr @strncpy(ptr noundef %zone_name.i, ptr noundef %name.0.i, i32 noundef 19) #9
  %arrayidx.i = getelementptr %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 2, i32 19
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i, align 1
  %strchr22.i = tail call ptr @strchr(ptr noundef %zone_name.i, i32 45) #9
  %tobool10.not23.i = icmp eq ptr %strchr22.i, null
  br i1 %tobool10.not23.i, label %if.end4.i.armada_set_sane_name.exit_crit_edge, label %if.end4.i.if.then11.i_crit_edge

if.end4.i.if.then11.i_crit_edge:                  ; preds = %if.end4.i
  br label %if.then11.i

if.end4.i.armada_set_sane_name.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_set_sane_name.exit

if.then11.i:                                      ; preds = %if.then11.i.if.then11.i_crit_edge, %if.end4.i.if.then11.i_crit_edge
  %strchr24.i = phi ptr [ %strchr.i, %if.then11.i.if.then11.i_crit_edge ], [ %strchr22.i, %if.end4.i.if.then11.i_crit_edge ]
  %13 = ptrtoint ptr %strchr24.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 95, ptr %strchr24.i, align 1
  %strchr.i = tail call ptr @strchr(ptr noundef %zone_name.i, i32 45) #9
  %tobool10.not.i = icmp eq ptr %strchr.i, null
  br i1 %tobool10.not.i, label %if.then11.i.armada_set_sane_name.exit_crit_edge, label %if.then11.i.if.then11.i_crit_edge

if.then11.i.if.then11.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i.armada_set_sane_name.exit_crit_edge:  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_set_sane_name.exit

armada_set_sane_name.exit:                        ; preds = %if.then11.i.armada_set_sane_name.exit_crit_edge, %if.end4.i.armada_set_sane_name.exit_crit_edge
  %14 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data13, align 4
  %call.i179 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call2.i181 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call.i179) #9
  %cmp.i.i = icmp ugt ptr %call2.i181, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call2.i181 to i32
  br i1 %cmp.i.i, label %armada_set_sane_name.exit.armada_thermal_probe_legacy.exit_crit_edge, label %if.end.i

armada_set_sane_name.exit.armada_thermal_probe_legacy.exit_crit_edge: ; preds = %armada_set_sane_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_thermal_probe_legacy.exit

if.end.i:                                         ; preds = %armada_set_sane_name.exit
  %and.i = and i32 %16, 4095
  %syscon_status_off.i = getelementptr inbounds %struct.armada_thermal_data, ptr %15, i32 0, i32 14
  %17 = ptrtoint ptr %syscon_status_off.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %syscon_status_off.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %18)
  %cmp.i182 = icmp ult i32 %and.i, %18
  br i1 %cmp.i182, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %idx.neg.i = sub i32 0, %18
  %add.ptr.i = getelementptr i8, ptr %call2.i181, i32 %idx.neg.i
  %call9.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %add.ptr.i, ptr noundef nonnull @armada_thermal_regmap_config, ptr noundef nonnull @armada_thermal_probe_legacy._key, ptr noundef nonnull @.str.19) #9
  %syscon.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %syscon.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %syscon.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call9.i to i32
  br i1 %cmp.i.i.i, label %if.end6.i.armada_thermal_probe_legacy.exit_crit_edge, label %if.end6.i.if.end21_crit_edge

if.end6.i.if.end21_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end6.i.armada_thermal_probe_legacy.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_thermal_probe_legacy.exit

armada_thermal_probe_legacy.exit:                 ; preds = %if.end6.i.armada_thermal_probe_legacy.exit_crit_edge, %armada_set_sane_name.exit.armada_thermal_probe_legacy.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %armada_set_sane_name.exit.armada_thermal_probe_legacy.exit_crit_edge ], [ %20, %if.end6.i.armada_thermal_probe_legacy.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool19.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool19.not, label %armada_thermal_probe_legacy.exit.if.end21_crit_edge, label %armada_thermal_probe_legacy.exit.cleanup_crit_edge

armada_thermal_probe_legacy.exit.cleanup_crit_edge: ; preds = %armada_thermal_probe_legacy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

armada_thermal_probe_legacy.exit.if.end21_crit_edge: ; preds = %armada_thermal_probe_legacy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end21:                                         ; preds = %armada_thermal_probe_legacy.exit.if.end21_crit_edge, %if.end6.i.if.end21_crit_edge
  %21 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data13, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void %24(ptr noundef %pdev, ptr noundef nonnull %call.i) #9
  %call23 = tail call fastcc i32 @armada_wait_sensor_validity(ptr noundef nonnull %call.i)
  %call24 = tail call ptr @thermal_zone_device_register(ptr noundef %zone_name.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @legacy_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %cmp.i183 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  %25 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %call33 = tail call i32 @thermal_zone_device_enable(ptr noundef %call24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @thermal_zone_device_unregister(ptr noundef %call24) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call.i177 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %call.i177, align 4
  %data37 = getelementptr inbounds %struct.armada_drvdata, ptr %call.i177, i32 0, i32 1
  %27 = ptrtoint ptr %data37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call24, ptr %data37, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i177, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end10
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node.i, align 8
  %call.i184 = tail call ptr @syscon_node_to_regmap(ptr noundef %32) #9
  %syscon.i185 = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i184, ptr %syscon.i185, align 4
  %cmp.i.i.i186.not = icmp ugt ptr %call.i184, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %call.i184 to i32
  br i1 %cmp.i.i.i186.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %current_channel = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %current_channel to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %current_channel, align 4
  %36 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data13, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  tail call void %39(ptr noundef %pdev, ptr noundef nonnull %call.i) #9
  %40 = ptrtoint ptr %call.i177 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %call.i177, align 4
  %data46 = getelementptr inbounds %struct.armada_drvdata, ptr %call.i177, i32 0, i32 1
  %41 = ptrtoint ptr %data46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %data46, align 4
  %driver_data.i.i188 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i188 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i177, ptr %driver_data.i.i188, align 4
  %call47 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call47)
  %cmp = icmp eq i32 %call47, -517
  br i1 %cmp, label %if.end42.cleanup_crit_edge, label %if.end49

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp50 = icmp sgt i32 %call47, 0
  br i1 %cmp50, label %if.then51, label %if.end49.if.end61_crit_edge

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then51:                                        ; preds = %if.end49
  %call53 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call47, ptr noundef nonnull @armada_overheat_isr, ptr noundef nonnull @armada_overheat_isr_thread, i32 noundef 0, ptr noundef null, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then51.if.end61_crit_edge, label %do.end58

if.then51.if.end61_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end58:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call47) #13
  br label %cleanup

if.end61:                                         ; preds = %if.then51.if.end61_crit_edge, %if.end49.if.end61_crit_edge
  %overheat_sensor = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 5
  %current_threshold.i.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 8
  %current_hysteresis.i.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 9
  %interrupt_source.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %call.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end61
  %sensor_id.0207 = phi i32 [ 0, %if.end61 ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i189 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #9
  %tobool66.not = icmp eq ptr %call.i189, null
  br i1 %tobool66.not, label %for.body.cleanup_crit_edge, label %if.end68

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %for.body
  %43 = ptrtoint ptr %call.i189 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %call.i189, align 4
  %id = getelementptr inbounds %struct.armada_thermal_sensor, ptr %call.i189, i32 0, i32 1
  %44 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sensor_id.0207, ptr %id, align 4
  %call72 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef %sensor_id.0207, ptr noundef nonnull %call.i189, ptr noundef nonnull @of_ops) #9
  %cmp.i190 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %sensor_id.0207) #13
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i189) #9
  br label %for.inc

if.end80:                                         ; preds = %if.end68
  br i1 %cmp50, label %land.lhs.true, label %if.end80.for.inc_crit_edge

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end80
  %45 = ptrtoint ptr %overheat_sensor to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %overheat_sensor, align 4
  %tobool82.not = icmp eq ptr %46, null
  br i1 %tobool82.not, label %if.then83, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then83:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %call.i191 = call ptr @of_thermal_get_trip_points(ptr noundef %call72) #9
  %tobool.not.i192 = icmp eq ptr %call.i191, null
  br i1 %tobool.not.i192, label %if.then83.for.inc_crit_edge, label %for.cond.preheader.i

if.then83.for.inc_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.then83
  %call16.i = call i32 @of_thermal_get_ntrips(ptr noundef %call72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp7.i = icmp sgt i32 %call16.i, 0
  br i1 %cmp7.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %type.i = getelementptr %struct.thermal_trip, ptr %call.i191, i32 %i.08.i, i32 3
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp2.i = icmp eq i32 %50, 3
  br i1 %cmp2.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %call1.i193 = call i32 @of_thermal_get_ntrips(ptr noundef %call72) #9
  %cmp.i194 = icmp slt i32 %inc.i, %call1.i193
  br i1 %cmp.i194, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ], [ %i.08.i, %for.body.i.for.end.i_crit_edge ]
  %call5.i195 = call i32 @of_thermal_get_ntrips(ptr noundef %call72) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %call5.i195)
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, %call5.i195
  br i1 %cmp6.i, label %for.end.i.for.inc_crit_edge, label %if.end8.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8.i:                                        ; preds = %for.end.i
  %call9.i196 = call fastcc i32 @armada_select_channel(ptr noundef %call.i, i32 noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i196)
  %tobool10.not.i197 = icmp eq i32 %call9.i196, 0
  br i1 %tobool10.not.i197, label %if.end12.i, label %if.end8.i.for.inc_crit_edge

if.end8.i.for.inc_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12.i:                                       ; preds = %if.end8.i
  %temperature.i = getelementptr %struct.thermal_trip, ptr %call.i191, i32 %i.0.lcssa.i, i32 1
  %51 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %temperature.i, align 4
  %hysteresis.i = getelementptr %struct.thermal_trip, ptr %call.i191, i32 %i.0.lcssa.i, i32 2
  %53 = ptrtoint ptr %hysteresis.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hysteresis.i, align 4
  %55 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data13, align 4
  %coef_b.i.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %coef_b.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %coef_b.i.i.i, align 8
  %coef_m.i.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %coef_m.i.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %coef_m.i.i.i, align 8
  %coef_div.i.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %coef_div.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %coef_div.i.i.i, align 8
  %conv.i.i.i = zext i32 %62 to i64
  %inverted.i.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 4
  %63 = ptrtoint ptr %inverted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %inverted.i.i.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i.i = icmp eq i8 %64, 0
  %conv4.i.i.i = zext i32 %52 to i64
  %mul5.i.i.i = mul nuw i64 %conv.i.i.i, %conv4.i.i.i
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = add i64 %mul5.i.i.i, %58
  %conv2.i.i.i = trunc i64 %60 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %65 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !85
  %call.i.i.i.i = call i64 @div_s64_rem(i64 noundef %add.i.i.i, i32 noundef %conv2.i.i.i, ptr noundef nonnull %remainder.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #9
  %extract.t211 = trunc i64 %call.i.i.i.i to i32
  br label %armada_mc_to_reg_temp.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i64 %58, %mul5.i.i.i
  %conv6.i.i.i = trunc i64 %60 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i.i.i) #9
  %66 = ptrtoint ptr %remainder.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %remainder.i17.i.i.i, align 4, !annotation !85
  %call.i18.i.i.i = call i64 @div_s64_rem(i64 noundef %sub.i.i.i, i32 noundef %conv6.i.i.i, ptr noundef nonnull %remainder.i17.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i.i.i) #9
  %extract.t210 = trunc i64 %call.i18.i.i.i to i32
  br label %armada_mc_to_reg_temp.exit.i.i

armada_mc_to_reg_temp.exit.i.i:                   ; preds = %if.else.i.i.i, %if.then.i.i.i
  %call.i18.i.i.i.sink.off0 = phi i32 [ %extract.t210, %if.else.i.i.i ], [ %extract.t211, %if.then.i.i.i ]
  %temp_mask.i.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 7
  %67 = ptrtoint ptr %temp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %temp_mask.i.i.i, align 4
  %and.i.i.i = and i32 %68, %call.i18.i.i.i.sink.off0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15200, i32 %54)
  %cmp1.not.i.i.i = icmp ult i32 %54, 15200
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %armada_mc_to_reg_temp.exit.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge

armada_mc_to_reg_temp.exit.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge: ; preds = %armada_mc_to_reg_temp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_mc_to_reg_hyst.exit.i.i

for.inc.i.i.i:                                    ; preds = %armada_mc_to_reg_temp.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7600, i32 %54)
  %cmp1.not.1.i.i.i = icmp ult i32 %54, 7600
  br i1 %cmp1.not.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge

for.inc.i.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_mc_to_reg_hyst.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3799, i32 %54)
  %cmp1.not.2.i.i.i = icmp ugt i32 %54, 3799
  %spec.select.i.i.i = zext i1 %cmp1.not.2.i.i.i to i32
  br label %armada_mc_to_reg_hyst.exit.i.i

armada_mc_to_reg_hyst.exit.i.i:                   ; preds = %for.inc.1.i.i.i, %for.inc.i.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge, %armada_mc_to_reg_temp.exit.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i = phi i32 [ 3, %armada_mc_to_reg_temp.exit.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge ], [ 2, %for.inc.i.i.i.armada_mc_to_reg_hyst.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.1.i.i.i ]
  %hyst_mask.i.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 10
  %69 = ptrtoint ptr %hyst_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hyst_mask.i.i.i, align 8
  %and.i35.i.i = and i32 %70, %i.0.lcssa.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1.i.i) #9
  %71 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %ctrl1.i.i, align 4, !annotation !85
  %72 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %syscon.i185, align 4
  %syscon_control1_off.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 13
  %74 = ptrtoint ptr %syscon_control1_off.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %syscon_control1_off.i.i, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %73, i32 noundef %75, ptr noundef nonnull %ctrl1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.i198 = icmp sgt i32 %52, -1
  br i1 %cmp.i.i198, label %if.then.i.i, label %armada_mc_to_reg_hyst.exit.i.i.if.end.i.i199_crit_edge

armada_mc_to_reg_hyst.exit.i.i.if.end.i.i199_crit_edge: ; preds = %armada_mc_to_reg_hyst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i199

if.then.i.i:                                      ; preds = %armada_mc_to_reg_hyst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %temp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %temp_mask.i.i.i, align 4
  %thresh_shift.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 8
  %78 = ptrtoint ptr %thresh_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %thresh_shift.i.i, align 8
  %shl.i.i = shl i32 %77, %79
  %neg.i.i = xor i32 %shl.i.i, -1
  %80 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ctrl1.i.i, align 4
  %and.i.i = and i32 %81, %neg.i.i
  %shl5.i.i = shl i32 %and.i.i.i, %79
  %or.i.i = or i32 %and.i.i, %shl5.i.i
  store i32 %or.i.i, ptr %ctrl1.i.i, align 4
  %82 = ptrtoint ptr %current_threshold.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %52, ptr %current_threshold.i.i, align 4
  br label %if.end.i.i199

if.end.i.i199:                                    ; preds = %if.then.i.i, %armada_mc_to_reg_hyst.exit.i.i.if.end.i.i199_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp6.i.i = icmp sgt i32 %54, -1
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end.i.i199.armada_set_overheat_thresholds.exit.i_crit_edge

if.end.i.i199.armada_set_overheat_thresholds.exit.i_crit_edge: ; preds = %if.end.i.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %armada_set_overheat_thresholds.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i199
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %hyst_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hyst_mask.i.i.i, align 8
  %hyst_shift.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %56, i32 0, i32 9
  %85 = ptrtoint ptr %hyst_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hyst_shift.i.i, align 4
  %shl8.i.i = shl i32 %84, %86
  %neg9.i.i = xor i32 %shl8.i.i, -1
  %87 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ctrl1.i.i, align 4
  %and10.i.i = and i32 %88, %neg9.i.i
  %shl12.i.i = shl i32 %and.i35.i.i, %86
  %or13.i.i = or i32 %and10.i.i, %shl12.i.i
  store i32 %or13.i.i, ptr %ctrl1.i.i, align 4
  %89 = ptrtoint ptr %current_hysteresis.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %54, ptr %current_hysteresis.i.i, align 4
  br label %armada_set_overheat_thresholds.exit.i

armada_set_overheat_thresholds.exit.i:            ; preds = %if.then7.i.i, %if.end.i.i199.armada_set_overheat_thresholds.exit.i_crit_edge
  %90 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %syscon.i185, align 4
  %92 = ptrtoint ptr %syscon_control1_off.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %syscon_control1_off.i.i, align 4
  %94 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ctrl1.i.i, align 4
  %call17.i.i = call i32 @regmap_write(ptr noundef %91, i32 noundef %93, i32 noundef %95) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1.i.i) #9
  %96 = ptrtoint ptr %overheat_sensor to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call72, ptr %overheat_sensor, align 4
  %97 = ptrtoint ptr %interrupt_source.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %48, ptr %interrupt_source.i, align 4
  %98 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #9
  %100 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !85
  %101 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %syscon.i185, align 4
  %dfx_irq_cause_off.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %99, i32 0, i32 15
  %103 = ptrtoint ptr %dfx_irq_cause_off.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dfx_irq_cause_off.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %102, i32 noundef %104, ptr noundef nonnull %reg.i.i) #9
  %105 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %syscon.i185, align 4
  %dfx_irq_mask_off.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %99, i32 0, i32 16
  %107 = ptrtoint ptr %dfx_irq_mask_off.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dfx_irq_mask_off.i.i, align 8
  %call3.i3.i = call i32 @regmap_read(ptr noundef %106, i32 noundef %108, ptr noundef nonnull %reg.i.i) #9
  %dfx_overheat_irq.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %99, i32 0, i32 17
  %109 = ptrtoint ptr %dfx_overheat_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dfx_overheat_irq.i.i, align 4
  %111 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %reg.i.i, align 4
  %or.i4.i = or i32 %112, %110
  store i32 %or.i4.i, ptr %reg.i.i, align 4
  %113 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %syscon.i185, align 4
  %115 = ptrtoint ptr %dfx_irq_mask_off.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dfx_irq_mask_off.i.i, align 8
  %call6.i.i = call i32 @regmap_write(ptr noundef %114, i32 noundef %116, i32 noundef %or.i4.i) #9
  %117 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %syscon.i185, align 4
  %dfx_server_irq_mask_off.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %99, i32 0, i32 18
  %119 = ptrtoint ptr %dfx_server_irq_mask_off.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dfx_server_irq_mask_off.i.i, align 8
  %call8.i.i = call i32 @regmap_read(ptr noundef %118, i32 noundef %120, ptr noundef nonnull %reg.i.i) #9
  %dfx_server_irq_en.i.i = getelementptr inbounds %struct.armada_thermal_data, ptr %99, i32 0, i32 19
  %121 = ptrtoint ptr %dfx_server_irq_en.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dfx_server_irq_en.i.i, align 4
  %123 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %reg.i.i, align 4
  %or9.i.i = or i32 %124, %122
  store i32 %or9.i.i, ptr %reg.i.i, align 4
  %125 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %syscon.i185, align 4
  %127 = ptrtoint ptr %dfx_server_irq_mask_off.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dfx_server_irq_mask_off.i.i, align 8
  %call12.i.i = call i32 @regmap_write(ptr noundef %126, i32 noundef %128, i32 noundef %or9.i.i) #9
  %129 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %syscon.i185, align 4
  %syscon_control1_off.i5.i = getelementptr inbounds %struct.armada_thermal_data, ptr %99, i32 0, i32 13
  %131 = ptrtoint ptr %syscon_control1_off.i5.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %syscon_control1_off.i5.i, align 4
  %call14.i.i = call i32 @regmap_read(ptr noundef %130, i32 noundef %132, ptr noundef nonnull %reg.i.i) #9
  %133 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %reg.i.i, align 4
  %or15.i.i = or i32 %134, 33554432
  store i32 %or15.i.i, ptr %reg.i.i, align 4
  %135 = ptrtoint ptr %syscon.i185 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %syscon.i185, align 4
  %137 = ptrtoint ptr %syscon_control1_off.i5.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %syscon_control1_off.i5.i, align 4
  %call18.i.i = call i32 @regmap_write(ptr noundef %136, i32 noundef %138, i32 noundef %or15.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #9
  br label %for.inc

for.inc:                                          ; preds = %armada_set_overheat_thresholds.exit.i, %if.end8.i.for.inc_crit_edge, %for.end.i.for.inc_crit_edge, %if.then83.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end80.for.inc_crit_edge, %do.end77
  %inc = add i32 %sensor_id.0207, 1
  %139 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data13, align 4
  %cpu_nr = getelementptr inbounds %struct.armada_thermal_data, ptr %140, i32 0, i32 20
  %141 = ptrtoint ptr %cpu_nr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cpu_nr, align 8
  %cmp63.not = icmp ugt i32 %inc, %142
  br i1 %cmp63.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %143 = ptrtoint ptr %overheat_sensor to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %overheat_sensor, align 4
  %tobool88.not = icmp eq ptr %144, null
  br i1 %tobool88.not, label %do.end92, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end92:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end58, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end36, %if.then35, %do.end29, %armada_thermal_probe_legacy.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %do.end29 ], [ %call33, %if.then35 ], [ 0, %if.end36 ], [ %call53, %do.end58 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %retval.0.i, %armada_thermal_probe_legacy.exit.cleanup_crit_edge ], [ %34, %if.end38.cleanup_crit_edge ], [ -517, %if.end42.cleanup_crit_edge ], [ 0, %do.end92 ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_thermal_exit(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.armada_drvdata, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada_wait_sensor_validity(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 214) #9
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %data = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %1 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %syscon, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %syscon_status_off61 = getelementptr inbounds %struct.armada_thermal_data, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %syscon_status_off61 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_status_off61, align 8
  %call862 = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call862)
  %tobool.not63 = icmp eq i32 %call862, 0
  br i1 %tobool.not63, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %is_valid_bit = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %is_valid_bit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %is_valid_bit, align 4
  %and = and i32 %12, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %13 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %syscon, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %syscon_status_off = getelementptr inbounds %struct.armada_thermal_data, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %syscon_status_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %syscon_status_off, align 8
  %call8 = call i32 @regmap_read(ptr noundef %14, i32 noundef %18, ptr noundef nonnull %reg) #9
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then24.lor.lhs.false_crit_edge, label %if.then24.lor.end_crit_edge

if.then24.lor.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.then24.lor.lhs.false_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %syscon, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %syscon_status_off20 = getelementptr inbounds %struct.armada_thermal_data, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %syscon_status_off20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %syscon_status_off20, align 8
  %call21 = call i32 @regmap_read(ptr noundef %20, i32 noundef %24, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool26.not = icmp eq i32 %call21, 0
  br i1 %tobool26.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %is_valid_bit28 = getelementptr inbounds %struct.armada_thermal_data, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %is_valid_bit28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %is_valid_bit28, align 4
  %and29 = and i32 %30, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %phi.sel = select i1 %tobool30.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then24.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool26.not49 = phi i32 [ %call21, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call862, %entry.lor.end_crit_edge ], [ %call8, %if.then24.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %tobool26.not49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_overheat_isr(i32 noundef %irq, ptr nocapture noundef readnone %blob) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #9
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_overheat_isr_thread(i32 noundef %irq, ptr noundef %blob) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_threshold = getelementptr inbounds %struct.armada_thermal_priv, ptr %blob, i32 0, i32 8
  %0 = ptrtoint ptr %current_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_threshold, align 4
  %current_hysteresis = getelementptr inbounds %struct.armada_thermal_priv, ptr %blob, i32 0, i32 9
  %2 = ptrtoint ptr %current_hysteresis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_hysteresis, align 4
  %sub = sub i32 %1, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #9
  %4 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temperature, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #9
  %5 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dummy, align 4, !annotation !85
  %overheat_sensor = getelementptr inbounds %struct.armada_thermal_priv, ptr %blob, i32 0, i32 5
  %6 = ptrtoint ptr %overheat_sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %overheat_sensor, align 4
  tail call void @thermal_zone_device_update(ptr noundef %7, i32 noundef 0) #9
  %update_lock = getelementptr inbounds %struct.armada_thermal_priv, ptr %blob, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  tail call void @msleep(i32 noundef 1000) #9
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call fastcc void @armada_read_sensor(ptr noundef %blob, ptr noundef nonnull %temperature)
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %8 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temperature, align 4
  %cmp.not = icmp slt i32 %9, %sub
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %blob, i32 0, i32 1
  %10 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syscon, align 4
  %data = getelementptr inbounds %struct.armada_thermal_priv, ptr %blob, i32 0, i32 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %dfx_irq_cause_off = getelementptr inbounds %struct.armada_thermal_data, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dfx_irq_cause_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dfx_irq_cause_off, align 4
  %call2 = call i32 @regmap_read(ptr noundef %11, i32 noundef %15, ptr noundef nonnull %dummy) #9
  %16 = ptrtoint ptr %overheat_sensor to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %overheat_sensor, align 4
  call void @thermal_zone_device_update(ptr noundef %17, i32 noundef 0) #9
  call void @enable_irq(i32 noundef %irq) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_get_temp_legacy(ptr nocapture noundef readonly %thermal, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %thermal, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !85
  %data.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %is_valid_bit.i = getelementptr inbounds %struct.armada_thermal_data, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %is_valid_bit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %is_valid_bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %armada_is_valid.exit.thread, label %armada_is_valid.exit

armada_is_valid.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br label %if.end

armada_is_valid.exit:                             ; preds = %entry
  %syscon.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %syscon.i, align 4
  %syscon_status_off.i = getelementptr inbounds %struct.armada_thermal_data, ptr %4, i32 0, i32 14
  %9 = ptrtoint ptr %syscon_status_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %syscon_status_off.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %reg.i) #9
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %is_valid_bit3.i = getelementptr inbounds %struct.armada_thermal_data, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %is_valid_bit3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %is_valid_bit3.i, align 4
  %and.i = and i32 %16, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  br i1 %tobool4.i.not, label %do.end, label %armada_is_valid.exit.if.end_crit_edge

armada_is_valid.exit.if.end_crit_edge:            ; preds = %armada_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %armada_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end:                                           ; preds = %armada_is_valid.exit.if.end_crit_edge, %armada_is_valid.exit.thread
  call fastcc void @armada_read_sensor(ptr noundef %1, ptr noundef %temp)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_read_sensor(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %temp) unnamed_addr #2 align 64 {
entry:
  %remainder.i1 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %syscon, align 4
  %data = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %syscon_status_off = getelementptr inbounds %struct.armada_thermal_data, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %syscon_status_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_status_off, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %reg) #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %temp_shift = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %temp_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp_shift, align 8
  %shr = lshr i32 %8, %12
  %temp_mask = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 7
  %13 = ptrtoint ptr %temp_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp_mask, align 4
  %and = and i32 %shr, %14
  store i32 %and, ptr %reg, align 4
  %signed_sample = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %signed_sample to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %signed_sample, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 @llvm.ctlz.i32(i32 %14, i1 false) #9, !range !86
  %shl.i = shl i32 %and, %17
  %shr.i = ashr i32 %shl.i, %17
  %conv = sext i32 %shr.i to i64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = zext i32 %and to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sample.0 = phi i64 [ %conv, %if.then ], [ %conv8, %if.else ]
  %coef_b = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %coef_b to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %coef_b, align 8
  %coef_m = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 2
  %20 = ptrtoint ptr %coef_m to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %coef_m, align 8
  %coef_div = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %coef_div to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %coef_div, align 8
  %inverted = getelementptr inbounds %struct.armada_thermal_data, ptr %10, i32 0, i32 4
  %24 = ptrtoint ptr %inverted to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %inverted, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool13.not = icmp eq i8 %25, 0
  %mul19 = mul i64 %21, %sample.0
  br i1 %tobool13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub15 = sub i64 %mul19, %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %26 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %remainder.i, align 4, !annotation !85
  %call.i = call i64 @div_s64_rem(i64 noundef %sub15, i32 noundef %23, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  %extract.t5 = trunc i64 %call.i to i32
  br label %if.end23

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub20 = sub i64 %19, %mul19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i1) #9
  %27 = ptrtoint ptr %remainder.i1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %remainder.i1, align 4, !annotation !85
  %call.i2 = call i64 @div_s64_rem(i64 noundef %sub20, i32 noundef %23, ptr noundef nonnull %remainder.i1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i1) #9
  %extract.t4 = trunc i64 %call.i2 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then14
  %call.i2.sink.off0 = phi i32 [ %extract.t4, %if.else18 ], [ %extract.t5, %if.then14 ]
  %28 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i2.sink.off0, ptr %temp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_get_temp(ptr nocapture noundef readonly %_sensor, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_sensor, align 4
  %update_lock = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %id = getelementptr inbounds %struct.armada_thermal_sensor, ptr %_sensor, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call = tail call fastcc i32 @armada_select_channel(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_mutex_crit_edge

entry.unlock_mutex_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_mutex

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @armada_read_sensor(ptr noundef %1, ptr noundef %temp)
  %interrupt_source = getelementptr inbounds %struct.armada_thermal_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %interrupt_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interrupt_source, align 4
  %call6 = tail call fastcc i32 @armada_select_channel(ptr noundef %1, i32 noundef %5)
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %if.end, %entry.unlock_mutex_crit_edge
  %ret.0 = phi i32 [ %call, %entry.unlock_mutex_crit_edge ], [ %call6, %if.end ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada_select_channel(ptr nocapture noundef %priv, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  %ctrl0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl0) #9
  %2 = ptrtoint ptr %ctrl0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl0, align 4, !annotation !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp slt i32 %channel, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cpu_nr = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %cpu_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu_nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %channel)
  %cmp3 = icmp ult i32 %4, %channel
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %current_channel = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %current_channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %channel)
  %cmp4 = icmp eq i32 %6, %channel
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %syscon, align 4
  %syscon_control0_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %syscon_control0_off, align 8
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %ctrl0) #9
  %11 = ptrtoint ptr %ctrl0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctrl0, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %ctrl0, align 4
  %13 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %syscon, align 4
  %15 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %syscon_control0_off, align 8
  %call9 = call i32 @regmap_write(ptr noundef %14, i32 noundef %16, i32 noundef %and) #9
  %17 = ptrtoint ptr %ctrl0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl0, align 4
  %and10 = and i32 %18, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not = icmp eq i32 %channel, 0
  %or = and i32 %18, 1073618943
  %sub = shl i32 %channel, 13
  %shl = add i32 %sub, 2147475456
  %and12 = or i32 %shl, %or
  %or13 = or i32 %and12, -2147483648
  %storemerge = select i1 %tobool.not, i32 %and10, i32 %or13
  %19 = ptrtoint ptr %ctrl0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %ctrl0, align 4
  %20 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %syscon, align 4
  %22 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syscon_control0_off, align 8
  %call17 = call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %storemerge) #9
  %24 = ptrtoint ptr %current_channel to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %channel, ptr %current_channel, align 4
  %25 = ptrtoint ptr %ctrl0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl0, align 4
  %or19 = or i32 %26, 1
  store i32 %or19, ptr %ctrl0, align 4
  %27 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %syscon, align 4
  %29 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syscon_control0_off, align 8
  %call22 = call i32 @regmap_write(ptr noundef %28, i32 noundef %30, i32 noundef %or19) #9
  %call23 = call fastcc i32 @armada_wait_sensor_validity(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end6.cleanup_crit_edge, label %do.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.20) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl0) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armadaxp_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syscon, align 4
  %syscon_control1_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_control1_off, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %or = and i32 %8, -1074788355
  %or3 = or i32 %or, 1074235394
  store i32 %or3, ptr %reg, align 4
  %9 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syscon, align 4
  %11 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %syscon_control1_off, align 4
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %or3) #9
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and7 = and i32 %14, -3
  store i32 %and7, ptr %reg, align 4
  %15 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %syscon, align 4
  %17 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %syscon_control1_off, align 4
  %call10 = call i32 @regmap_write(ptr noundef %16, i32 noundef %18, i32 noundef %and7) #9
  %19 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %syscon, align 4
  %syscon_status_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %syscon_status_off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %syscon_status_off, align 8
  %call12 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %reg) #9
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %and13 = and i32 %24, -2
  store i32 %and13, ptr %reg, align 4
  %25 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %syscon, align 4
  %27 = ptrtoint ptr %syscon_status_off to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %syscon_status_off, align 8
  %call16 = call i32 @regmap_write(ptr noundef %26, i32 noundef %28, i32 noundef %and13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada370_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syscon, align 4
  %syscon_control1_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_control1_off, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %or = and i32 %8, -1108342785
  %or2 = or i32 %or, 1074235392
  store i32 %or2, ptr %reg, align 4
  %9 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syscon, align 4
  %11 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %syscon_control1_off, align 4
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %or2) #9
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada375_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syscon, align 4
  %syscon_control1_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_control1_off, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and3 = and i32 %8, -939557121
  store i32 %and3, ptr %reg, align 4
  %9 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syscon, align 4
  %11 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %syscon_control1_off, align 4
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %and3) #9
  call void @msleep(i32 noundef 20) #9
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %or = or i32 %14, 256
  store i32 %or, ptr %reg, align 4
  %15 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %syscon, align 4
  %17 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %syscon_control1_off, align 4
  %call9 = call i32 @regmap_write(ptr noundef %16, i32 noundef %18, i32 noundef %or) #9
  call void @msleep(i32 noundef 50) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada380_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syscon, align 4
  %syscon_control1_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_control1_off, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %or = and i32 %8, -385
  %and = or i32 %or, 256
  store i32 %and, ptr %reg, align 4
  %9 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syscon, align 4
  %11 = ptrtoint ptr %syscon_control1_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %syscon_control1_off, align 4
  %call4 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %and) #9
  %13 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %syscon, align 4
  %syscon_control0_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %syscon_control0_off, align 8
  %call6 = call i32 @regmap_read(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %reg) #9
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %and7 = and i32 %18, -8
  %or8 = or i32 %and7, 3
  store i32 %or8, ptr %reg, align 4
  %19 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %syscon, align 4
  %21 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %syscon_control0_off, align 8
  %call11 = call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef %or8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_ap806_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !85
  %syscon = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %syscon, align 4
  %syscon_control0_off = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %syscon_control0_off, align 8
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, -50331720
  %or2 = or i32 %and, 50331653
  store i32 %or2, ptr %reg, align 4
  %9 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syscon, align 4
  %11 = ptrtoint ptr %syscon_control0_off to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %syscon_control0_off, align 8
  %call6 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %or2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_cp110_init(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #9
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg.i, align 4, !annotation !85
  %syscon.i = getelementptr inbounds %struct.armada_thermal_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %syscon.i, align 4
  %syscon_control1_off.i = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %syscon_control1_off.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %syscon_control1_off.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %reg.i) #9
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %or.i = and i32 %9, -385
  %and.i = or i32 %or.i, 256
  store i32 %and.i, ptr %reg.i, align 4
  %10 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %syscon.i, align 4
  %12 = ptrtoint ptr %syscon_control1_off.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %syscon_control1_off.i, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %11, i32 noundef %13, i32 noundef %and.i) #9
  %14 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %syscon.i, align 4
  %syscon_control0_off.i = getelementptr inbounds %struct.armada_thermal_data, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %syscon_control0_off.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syscon_control0_off.i, align 8
  %call6.i = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %reg.i) #9
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i, align 4
  %and7.i = and i32 %19, -8
  %or8.i = or i32 %and7.i, 3
  store i32 %or8.i, ptr %reg.i, align 4
  %20 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %syscon.i, align 4
  %22 = ptrtoint ptr %syscon_control0_off.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syscon_control0_off.i, align 8
  %call11.i = call i32 @regmap_write(ptr noundef %21, i32 noundef %23, i32 noundef %or8.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #9
  %24 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %syscon.i, align 4
  %26 = ptrtoint ptr %syscon_control0_off.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syscon_control0_off.i, align 8
  %call = call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %reg) #9
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg, align 4
  %or = or i32 %29, 50331648
  store i32 %or, ptr %reg, align 4
  %30 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %syscon.i, align 4
  %32 = ptrtoint ptr %syscon_control0_off.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %syscon_control0_off.i, align 8
  %call4 = call i32 @regmap_write(ptr noundef %31, i32 noundef %33, i32 noundef %or) #9
  %34 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %syscon.i, align 4
  %36 = ptrtoint ptr %syscon_control1_off.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syscon_control1_off.i, align 4
  %call6 = call i32 @regmap_read(ptr noundef %35, i32 noundef %37, ptr noundef nonnull %reg) #9
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg, align 4
  %and = and i32 %39, -8
  %or7 = or i32 %and, 1
  store i32 %or7, ptr %reg, align 4
  %40 = ptrtoint ptr %syscon.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %syscon.i, align 4
  %42 = ptrtoint ptr %syscon_control1_off.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %syscon_control1_off.i, align 4
  %call10 = call i32 @regmap_write(ptr noundef %41, i32 noundef %43, i32 noundef %or7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_armada_thermal__187_976_armada_thermal_driver_init6, !1, !"__initcall__kmod_armada_thermal__187_976_armada_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/armada_thermal.c", i32 976, i32 1}
!2 = !{ptr @__exitcall_armada_thermal_driver_exit, !1, !"__exitcall_armada_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/armada_thermal.c", i32 978, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/thermal/armada_thermal.c", i32 979, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/thermal/armada_thermal.c", i32 980, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/armada_thermal.c", i32 971, i32 11}
!12 = !{ptr @armada_thermal_driver, !13, !"armada_thermal_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/armada_thermal.c", i32 967, i32 31}
!14 = !{ptr @armada_thermal_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/thermal/armada_thermal.c", i32 842, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/armada_thermal.c", i32 872, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @armada_thermal_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @armada_thermal_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thermal/armada_thermal.c", i32 911, i32 4}
!27 = !{ptr @armada_thermal_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @armada_thermal_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/armada_thermal.c", i32 935, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @armada_thermal_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @armada_thermal_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/armada_thermal.c", i32 952, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @armada_thermal_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @armada_thermal_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/armada_thermal.c", i32 769, i32 42}
!41 = !{ptr @armada_thermal_probe_legacy._key, !42, !"_key", i1 false, i1 false}
!42 = !{!"../drivers/thermal/armada_thermal.c", i32 732, i32 17}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @armada_thermal_regmap_config, !45, !"armada_thermal_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/thermal/armada_thermal.c", i32 701, i32 35}
!46 = !{ptr @legacy_ops, !47, !"legacy_ops", i1 false, i1 false}
!47 = !{!"../drivers/thermal/armada_thermal.c", i32 419, i32 39}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thermal/armada_thermal.c", i32 408, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @armada_get_temp_legacy._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @armada_get_temp_legacy._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @of_ops, !54, !"of_ops", i1 false, i1 false}
!54 = !{!"../drivers/thermal/armada_thermal.c", i32 453, i32 48}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/thermal/armada_thermal.c", i32 366, i32 3}
!57 = !{ptr @armada_select_channel._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @armada_select_channel._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"hyst_levels_mc", i1 false, i1 false}
!60 = !{!"../drivers/thermal/armada_thermal.c", i32 479, i32 21}
!61 = !{ptr @armada_thermal_id_table, !62, !"armada_thermal_id_table", i1 false, i1 false}
!62 = !{!"../drivers/thermal/armada_thermal.c", i32 670, i32 34}
!63 = !{ptr @armadaxp_data, !64, !"armadaxp_data", i1 false, i1 false}
!64 = !{!"../drivers/thermal/armada_thermal.c", i32 574, i32 41}
!65 = !{ptr @armada370_data, !66, !"armada370_data", i1 false, i1 false}
!66 = !{!"../drivers/thermal/armada_thermal.c", i32 585, i32 41}
!67 = !{ptr @armada375_data, !68, !"armada375_data", i1 false, i1 false}
!68 = !{!"../drivers/thermal/armada_thermal.c", i32 597, i32 41}
!69 = !{ptr @armada380_data, !70, !"armada380_data", i1 false, i1 false}
!70 = !{!"../drivers/thermal/armada_thermal.c", i32 610, i32 41}
!71 = !{ptr @armada_ap806_data, !72, !"armada_ap806_data", i1 false, i1 false}
!72 = !{!"../drivers/thermal/armada_thermal.c", i32 624, i32 41}
!73 = !{ptr @armada_cp110_data, !74, !"armada_cp110_data", i1 false, i1 false}
!74 = !{!"../drivers/thermal/armada_thermal.c", i32 648, i32 41}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"auto-init"}
!86 = !{i32 0, i32 33}
