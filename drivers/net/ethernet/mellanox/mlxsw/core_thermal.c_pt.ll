; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_thermal_trip = type { i32, i32, i32, i32, i32 }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.mlxsw_thermal = type { ptr, ptr, ptr, i32, [5 x ptr], [11 x i8], [3 x %struct.mlxsw_thermal_trip], ptr, i8, ptr, i8, i32, ptr }
%struct.mlxsw_thermal_module = type { ptr, ptr, [3 x %struct.mlxsw_thermal_trip], i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@default_thermal_trips = internal constant { [3 x %struct.mlxsw_thermal_trip], [36 x i8] } { [3 x %struct.mlxsw_thermal_trip] [%struct.mlxsw_thermal_trip { i32 0, i32 75000, i32 5000, i32 0, i32 4 }, %struct.mlxsw_thermal_trip { i32 0, i32 85000, i32 5000, i32 4, i32 10 }, %struct.mlxsw_thermal_trip { i32 2, i32 105000, i32 0, i32 10, i32 10 }], [36 x i8] zeroinitializer }, align 32
@mlxsw_reg_mfcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28671, i16 8, ptr @.str.13 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_thermal_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 917, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to probe PWMs\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlxsw_thermal_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlxsw/core_thermal.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_thermal_init._entry_ptr = internal global ptr @mlxsw_thermal_init._entry, section ".printk_index", align 4
@mlxsw_reg_mfsl = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28668, i16 12, ptr @.str.27 }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxsw_fan\00", [22 x i8] zeroinitializer }, align 32
@mlxsw_cooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @mlxsw_thermal_get_max_state, ptr @mlxsw_thermal_get_cur_state, ptr @mlxsw_thermal_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mlxsw_thermal_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 951, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register cooling device\0A\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_thermal_init._entry_ptr.8 = internal global ptr @mlxsw_thermal_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mlxsw\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_thermal_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr @mlxsw_thermal_bind, ptr @mlxsw_thermal_unbind, ptr @mlxsw_thermal_get_temp, ptr null, ptr null, ptr @mlxsw_thermal_get_trip_type, ptr @mlxsw_thermal_get_trip_temp, ptr @mlxsw_thermal_set_trip_temp, ptr @mlxsw_thermal_get_trip_hyst, ptr @mlxsw_thermal_set_trip_hyst, ptr null, ptr null, ptr @mlxsw_thermal_trend_get, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_thermal_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 975, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register thermal zone\0A\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_thermal_init._entry_ptr.12 = internal global ptr @mlxsw_thermal_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfcr\00", [27 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 35, ptr null, ptr null }, align 1
@.str.14 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_mfcr_pwm_frequency\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mfcr_tacho_active\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mfcr_pwm_active\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_mfsl_tacho\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_mfsl_tach_max\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfsl\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_mfsl_tach_min\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_reg_mfsc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28670, i16 8, ptr @.str.37 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_thermal_get_cur_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to query PWM duty\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_thermal_get_cur_state\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_thermal_get_cur_state._entry_ptr = internal global ptr @mlxsw_thermal_get_cur_state._entry, section ".printk_index", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlxreg_fan\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mfsc_pwm\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_mfsc_pwm_duty_cycle\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfsc\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_thermal_set_cur_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to write PWM duty\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_thermal_set_cur_state\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_thermal_set_cur_state._entry_ptr = internal global ptr @mlxsw_thermal_set_cur_state._entry, section ".printk_index", align 4
@mlxsw_thermal_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to bind cooling device to trip %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlxsw_thermal_bind\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_thermal_bind._entry_ptr = internal global ptr @mlxsw_thermal_bind._entry, section ".printk_index", align 4
@mlxsw_thermal_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to unbind cooling device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxsw_thermal_unbind\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_thermal_unbind._entry_ptr = internal global ptr @mlxsw_thermal_unbind._entry, section ".printk_index", align 4
@mlxsw_reg_mtmp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28662, i16 32, ptr @.str.54 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_thermal_get_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to query temp sensor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlxsw_thermal_get_temp\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_thermal_get_temp._entry_ptr = internal global ptr @mlxsw_thermal_get_temp._entry, section ".printk_index", align 4
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mtmp_sensor_index\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mtmp_mte\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mtmp_mtr\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_mtmp_temperature_threshold_hi\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtmp\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_mtmp_temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reg_mtmp_max_operational_temperature\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_reg_mgpir = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28416, i16 160, ptr @.str.62 }, [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mgpir\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_mgpir_num_of_devices\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mgpir_device_type\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_mgpir_num_of_modules\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_thermal_module_trips_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 168, ptr @.str.73, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s : Critical threshold %d is above emergency threshold %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlxsw_thermal_module_trips_update\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlxsw_thermal_module_trips_update._entry_ptr = internal global ptr @mlxsw_thermal_module_trips_update._entry, section ".printk_index", align 4
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlxsw-module%d\00", [17 x i8] zeroinitializer }, align 32
@mlxsw_thermal_module_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr @mlxsw_thermal_module_bind, ptr @mlxsw_thermal_module_unbind, ptr @mlxsw_thermal_module_temp_get, ptr null, ptr null, ptr @mlxsw_thermal_module_trip_type_get, ptr @mlxsw_thermal_module_trip_temp_get, ptr @mlxsw_thermal_module_trip_temp_set, ptr @mlxsw_thermal_module_trip_hyst_get, ptr @mlxsw_thermal_module_trip_hyst_set, ptr null, ptr null, ptr @mlxsw_thermal_module_trend_get, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlxsw-gearbox%d\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_thermal_gearbox_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr @mlxsw_thermal_module_bind, ptr @mlxsw_thermal_module_unbind, ptr @mlxsw_thermal_gearbox_temp_get, ptr null, ptr null, ptr @mlxsw_thermal_module_trip_type_get, ptr @mlxsw_thermal_module_trip_temp_get, ptr @mlxsw_thermal_module_trip_temp_set, ptr @mlxsw_thermal_module_trip_hyst_get, ptr @mlxsw_thermal_module_trip_hyst_set, ptr null, ptr null, ptr @mlxsw_thermal_module_trend_get, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"default_thermal_trips\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 49, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mfcr\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 917, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mfsl\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 946, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"mlxsw_cooling_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 662, i32 48 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 951, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 966, i32 48 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"mlxsw_thermal_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 360, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 975, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9454, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 33, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9471, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9479, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9487, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9580, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9592, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9574, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9586, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mfsc\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 625, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 32, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9520, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9527, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9514, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 656, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 236, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 258, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mtmp\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 278, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9678, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9705, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9711, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9742, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9668, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9699, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 9692, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mgpir\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 11267, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 11289, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 11277, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 11295, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 167, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 674, i32 37 }
@___asan_gen_.274 = private unnamed_addr constant [25 x i8] c"mlxsw_thermal_module_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 552, i32 39 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 804, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant [26 x i8] c"mlxsw_thermal_gearbox_ops\00", align 1
@___asan_gen_.281 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 589, i32 39 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_thermal_bind._entry, ptr @mlxsw_thermal_bind._entry_ptr, ptr @mlxsw_thermal_get_cur_state._entry, ptr @mlxsw_thermal_get_cur_state._entry_ptr, ptr @mlxsw_thermal_get_temp._entry, ptr @mlxsw_thermal_get_temp._entry_ptr, ptr @mlxsw_thermal_init._entry, ptr @mlxsw_thermal_init._entry.10, ptr @mlxsw_thermal_init._entry.6, ptr @mlxsw_thermal_init._entry_ptr, ptr @mlxsw_thermal_init._entry_ptr.12, ptr @mlxsw_thermal_init._entry_ptr.8, ptr @mlxsw_thermal_module_trips_update._entry, ptr @mlxsw_thermal_module_trips_update._entry_ptr, ptr @mlxsw_thermal_set_cur_state._entry, ptr @mlxsw_thermal_set_cur_state._entry_ptr, ptr @mlxsw_thermal_unbind._entry, ptr @mlxsw_thermal_unbind._entry_ptr, ptr @default_thermal_trips, ptr @mlxsw_reg_mfcr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlxsw_reg_mfsl, ptr @.str.5, ptr @mlxsw_cooling_ops, ptr @.str.7, ptr @.str.9, ptr @mlxsw_thermal_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @mlxsw_reg_mfsc, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @mlxsw_reg_mtmp, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.59, ptr @mlxsw_reg_mgpir, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @mlxsw_thermal_module_ops, ptr @.str.75, ptr @mlxsw_thermal_gearbox_ops], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_thermal_trips to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mfcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mfsl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mfsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_get_cur_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_set_cur_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtmp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_get_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mgpir to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_module_trips_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_module_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_thermal_gearbox_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_thermal_init(ptr noundef %core, ptr noundef %bus_info, ptr nocapture noundef writeonly %p_thermal) local_unnamed_addr #0 align 64 {
entry:
  %tz_name.i.i213 = alloca [16 x i8], align 1
  %mgpir_pl.i214 = alloca [160 x i8], align 4
  %tz_name.i.i = alloca [16 x i8], align 1
  %mtmp_pl.i.i.i = alloca [32 x i8], align 1
  %dummy_temp.i.i = alloca i32, align 4
  %crit_temp.i.i = alloca i32, align 4
  %emerg_temp.i.i = alloca i32, align 4
  %mgpir_pl.i = alloca [160 x i8], align 1
  %mfcr_pl = alloca [8 x i8], align 8
  %mfsl_pl = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfcr_pl) #10
  %0 = ptrtoint ptr %mfcr_pl to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %mfcr_pl, align 8
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %bus_info, i32 0, i32 2
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 132, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup111_crit_edge, label %if.end

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %core, ptr %call.i, align 4
  %bus_info3 = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %bus_info3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bus_info, ptr %bus_info3, align 4
  %trips = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %trips, ptr @default_thermal_trips, i32 60)
  %call6 = call i32 @mlxsw_reg_query(ptr noundef %core, ptr noundef nonnull @mlxsw_reg_mfcr, ptr noundef nonnull %mfcr_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %mlxsw_reg_mfcr_tacho_active_get.exit.i, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #13
  br label %err_free_thermal

mlxsw_reg_mfcr_tacho_active_get.exit.i:           ; preds = %if.end
  %arrayidx.i.i21.i = getelementptr inbounds i32, ptr %mfcr_pl, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i21.i, align 4
  %shr.i.i23.i = lshr i32 %7, 16
  %and4.i.i27.i = and i32 %shr.i.i23.i, 1023
  %arrayidx.i.i21.i205 = getelementptr inbounds i32, ptr %mfsl_pl, i32 1
  %arrayidx.i.i44.i = getelementptr inbounds i32, ptr %mfsl_pl, i32 2
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mfsl_pl, i32 1
  br label %for.body

for.cond29.preheader:                             ; preds = %for.inc
  %and35 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.cond29.preheader.for.inc50_crit_edge, label %if.then37

for.cond29.preheader.for.inc50_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mlxsw_reg_mfcr_tacho_active_get.exit.i
  %i.0320 = phi i32 [ 0, %mlxsw_reg_mfcr_tacho_active_get.exit.i ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0320
  %and = and i32 %and4.i.i27.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mfsl_pl) #10
  %8 = call ptr @memset(ptr %mfsl_pl, i32 0, i32 12)
  %spec.select.i.i.i200 = shl i32 %i.0320, 24
  %and6.i.i.i = and i32 %spec.select.i.i.i200, 251658240
  %9 = ptrtoint ptr %mfsl_pl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mfsl_pl, align 4
  %and7.i.i.i = and i32 %10, -251658241
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %mfsl_pl, align 4
  %11 = ptrtoint ptr %arrayidx.i.i21.i205 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i21.i205, align 4
  %and7.i.i23.i = and i32 %12, -65536
  store i32 %and7.i.i23.i, ptr %arrayidx.i.i21.i205, align 4
  %13 = ptrtoint ptr %arrayidx.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i44.i, align 4
  %and7.i.i46.i = and i32 %14, -65536
  store i32 %and7.i.i46.i, ptr %arrayidx.i.i44.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %call17 = call i32 @mlxsw_reg_query(ptr noundef %16, ptr noundef nonnull @mlxsw_reg_mfsl, ptr noundef nonnull %mfsl_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %mlxsw_reg_mfsl_tach_min_set.exit, label %if.then12.cleanup.thread_crit_edge

if.then12.cleanup.thread_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

mlxsw_reg_mfsl_tach_min_set.exit:                 ; preds = %if.then12
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %18, -65536
  store i32 %and7.i.i, ptr %arrayidx.i.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call24 = call i32 @mlxsw_reg_write(ptr noundef %20, ptr noundef nonnull @mlxsw_reg_mfsl, ptr noundef nonnull %mfsl_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cleanup, label %mlxsw_reg_mfsl_tach_min_set.exit.cleanup.thread_crit_edge

mlxsw_reg_mfsl_tach_min_set.exit.cleanup.thread_crit_edge: ; preds = %mlxsw_reg_mfsl_tach_min_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %mlxsw_reg_mfsl_tach_min_set.exit.cleanup.thread_crit_edge, %if.then12.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call24, %mlxsw_reg_mfsl_tach_min_set.exit.cleanup.thread_crit_edge ], [ %call17, %if.then12.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mfsl_pl) #10
  br label %err_free_thermal

cleanup:                                          ; preds = %mlxsw_reg_mfsl_tach_min_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mfsl_pl) #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0320, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond29.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then37:                                        ; preds = %for.cond29.preheader
  %call38 = call ptr @thermal_cooling_device_register(ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxsw_cooling_ops) #10
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37.cleanup46_crit_edge, label %cleanup46.thread

if.then37.cleanup46_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

cleanup46.thread:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38, ptr %arrayidx, align 4
  br label %for.inc50

cleanup46:                                        ; preds = %if.then37.4.cleanup46_crit_edge, %if.then37.3.cleanup46_crit_edge, %if.then37.2.cleanup46_crit_edge, %if.then37.1.cleanup46_crit_edge, %if.then37.cleanup46_crit_edge
  %call38.lcssa = phi ptr [ %call38, %if.then37.cleanup46_crit_edge ], [ %call38.1, %if.then37.1.cleanup46_crit_edge ], [ %call38.2, %if.then37.2.cleanup46_crit_edge ], [ %call38.3, %if.then37.3.cleanup46_crit_edge ], [ %call38.4, %if.then37.4.cleanup46_crit_edge ]
  %22 = ptrtoint ptr %call38.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #13
  br label %err_unreg_cdevs

for.inc50:                                        ; preds = %cleanup46.thread, %for.cond29.preheader.for.inc50_crit_edge
  %and35.1 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.1)
  %tobool36.not.1 = icmp eq i32 %and35.1, 0
  br i1 %tobool36.not.1, label %for.inc50.for.inc50.1_crit_edge, label %if.then37.1

for.inc50.for.inc50.1_crit_edge:                  ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.1

if.then37.1:                                      ; preds = %for.inc50
  %call38.1 = call ptr @thermal_cooling_device_register(ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxsw_cooling_ops) #10
  %cmp.i.1 = icmp ugt ptr %call38.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.then37.1.cleanup46_crit_edge, label %cleanup46.thread.1

if.then37.1.cleanup46_crit_edge:                  ; preds = %if.then37.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

cleanup46.thread.1:                               ; preds = %if.then37.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38.1, ptr %arrayidx.1, align 4
  br label %for.inc50.1

for.inc50.1:                                      ; preds = %cleanup46.thread.1, %for.inc50.for.inc50.1_crit_edge
  %and35.2 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.2)
  %tobool36.not.2 = icmp eq i32 %and35.2, 0
  br i1 %tobool36.not.2, label %for.inc50.1.for.inc50.2_crit_edge, label %if.then37.2

for.inc50.1.for.inc50.2_crit_edge:                ; preds = %for.inc50.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.2

if.then37.2:                                      ; preds = %for.inc50.1
  %call38.2 = call ptr @thermal_cooling_device_register(ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxsw_cooling_ops) #10
  %cmp.i.2 = icmp ugt ptr %call38.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.then37.2.cleanup46_crit_edge, label %cleanup46.thread.2

if.then37.2.cleanup46_crit_edge:                  ; preds = %if.then37.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

cleanup46.thread.2:                               ; preds = %if.then37.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.2 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.2, ptr %arrayidx.2, align 4
  br label %for.inc50.2

for.inc50.2:                                      ; preds = %cleanup46.thread.2, %for.inc50.1.for.inc50.2_crit_edge
  %and35.3 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.3)
  %tobool36.not.3 = icmp eq i32 %and35.3, 0
  br i1 %tobool36.not.3, label %for.inc50.2.for.inc50.3_crit_edge, label %if.then37.3

for.inc50.2.for.inc50.3_crit_edge:                ; preds = %for.inc50.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.3

if.then37.3:                                      ; preds = %for.inc50.2
  %call38.3 = call ptr @thermal_cooling_device_register(ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxsw_cooling_ops) #10
  %cmp.i.3 = icmp ugt ptr %call38.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.then37.3.cleanup46_crit_edge, label %cleanup46.thread.3

if.then37.3.cleanup46_crit_edge:                  ; preds = %if.then37.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

cleanup46.thread.3:                               ; preds = %if.then37.3
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.3 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38.3, ptr %arrayidx.3, align 4
  br label %for.inc50.3

for.inc50.3:                                      ; preds = %cleanup46.thread.3, %for.inc50.2.for.inc50.3_crit_edge
  %and35.4 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.4)
  %tobool36.not.4 = icmp eq i32 %and35.4, 0
  br i1 %tobool36.not.4, label %for.inc50.3.for.inc50.4_crit_edge, label %if.then37.4

for.inc50.3.for.inc50.4_crit_edge:                ; preds = %for.inc50.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.4

if.then37.4:                                      ; preds = %for.inc50.3
  %call38.4 = call ptr @thermal_cooling_device_register(ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxsw_cooling_ops) #10
  %cmp.i.4 = icmp ugt ptr %call38.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %if.then37.4.cleanup46_crit_edge, label %cleanup46.thread.4

if.then37.4.cleanup46_crit_edge:                  ; preds = %if.then37.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

cleanup46.thread.4:                               ; preds = %if.then37.4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.4 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38.4, ptr %arrayidx.4, align 4
  br label %for.inc50.4

for.inc50.4:                                      ; preds = %cleanup46.thread.4, %for.inc50.3.for.inc50.4_crit_edge
  %arrayidx60 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 0
  %27 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %arrayidx60, align 1
  %arrayidx60.1 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %arrayidx60.1, align 1
  %arrayidx60.2 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx60.2, align 1
  %arrayidx60.3 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %arrayidx60.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx60.3, align 1
  %arrayidx60.4 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 4
  %31 = ptrtoint ptr %arrayidx60.4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %arrayidx60.4, align 1
  %arrayidx60.5 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 5
  %32 = ptrtoint ptr %arrayidx60.5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %arrayidx60.5, align 1
  %arrayidx60.6 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 6
  %33 = ptrtoint ptr %arrayidx60.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %arrayidx60.6, align 1
  %arrayidx60.7 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 7
  %34 = ptrtoint ptr %arrayidx60.7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 7, ptr %arrayidx60.7, align 1
  %arrayidx60.8 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 8
  %35 = ptrtoint ptr %arrayidx60.8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 8, ptr %arrayidx60.8, align 1
  %arrayidx60.9 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 5, i32 9
  %36 = ptrtoint ptr %arrayidx60.9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 9, ptr %arrayidx60.9, align 1
  %low_frequency = getelementptr inbounds %struct.mlxsw_bus_info, ptr %bus_info, i32 0, i32 6
  %37 = ptrtoint ptr %low_frequency to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %low_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool65.not = icmp sgt i8 %bf.load, -1
  %cond66 = select i1 %tobool65.not, i32 1000, i32 20000
  %polling_delay = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %polling_delay to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond66, ptr %polling_delay, align 4
  %call68 = call ptr @thermal_zone_device_register(ptr noundef nonnull @.str.9, i32 noundef 3, i32 noundef 7, ptr noundef nonnull %call.i, ptr noundef nonnull @mlxsw_thermal_ops, ptr noundef null, i32 noundef 0, i32 noundef %cond66) #10
  %tzdev = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %tzdev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call68, ptr %tzdev, align 4
  %cmp.i206 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then71, label %if.end77

if.then71:                                        ; preds = %for.inc50.4
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %call68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #13
  br label %err_unreg_cdevs

if.end77:                                         ; preds = %for.inc50.4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %mgpir_pl.i) #10
  %call.i207 = call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %core) #10
  br i1 %call.i207, label %if.end.i, label %if.end77.if.end81_crit_edge

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.end.i:                                         ; preds = %if.end77
  %41 = call ptr @memset(ptr %mgpir_pl.i, i32 0, i32 160)
  %call2.i = call i32 @mlxsw_reg_query(ptr noundef %core, ptr noundef nonnull @mlxsw_reg_mgpir, ptr noundef nonnull %mgpir_pl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge

if.end.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_modules_init.exit.thread288

if.end4.i:                                        ; preds = %if.end.i
  %tz_module_num.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 8
  %arrayidx.i.i41.i.i = getelementptr inbounds i32, ptr %mgpir_pl.i, i32 1
  %42 = ptrtoint ptr %arrayidx.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i41.i.i, align 4
  %conv13.i.i = trunc i32 %43 to i8
  %44 = ptrtoint ptr %tz_module_num.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv13.i.i, ptr %tz_module_num.i, align 1
  %and4.i.i47.i.i = and i32 %43, 255
  %45 = mul nuw nsw i32 %and4.i.i47.i.i, 72
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #14
  %tz_module_arr.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %tz_module_arr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i.i, ptr %tz_module_arr.i, align 4
  %tobool9.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i, label %if.end4.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge, label %for.cond.preheader.i

if.end4.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_modules_init.exit.thread288

for.cond.preheader.i:                             ; preds = %if.end4.i
  %47 = ptrtoint ptr %tz_module_num.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tz_module_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp98.not.i = icmp eq i8 %48, 0
  br i1 %cmp98.not.i, label %for.cond.preheader.i.if.end81_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end81_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

for.cond20.preheader.i:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp23102.not.i = icmp eq i8 %73, 0
  br i1 %cmp23102.not.i, label %for.cond20.preheader.i.if.end81_crit_edge, label %for.cond20.preheader.i.for.body25.i_crit_edge

for.cond20.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body25.i

for.cond20.preheader.i.if.end81_crit_edge:        ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.099.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_temp.i.i) #10
  %49 = ptrtoint ptr %dummy_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %dummy_temp.i.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crit_temp.i.i) #10
  %50 = ptrtoint ptr %crit_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %crit_temp.i.i, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %emerg_temp.i.i) #10
  %51 = ptrtoint ptr %emerg_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %emerg_temp.i.i, align 4, !annotation !159
  %52 = ptrtoint ptr %tz_module_arr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tz_module_arr.i, align 4
  %arrayidx.i.i209 = getelementptr %struct.mlxsw_thermal_module, ptr %53, i32 %i.099.i
  %54 = ptrtoint ptr %arrayidx.i.i209 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i209, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %mlxsw_thermal_module_init.exit.thread.i

mlxsw_thermal_module_init.exit.thread.i:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emerg_temp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crit_temp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_temp.i.i) #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body.i
  %56 = trunc i32 %i.099.i to i16
  %57 = and i16 %56, 255
  %conv1.i.i = add nuw nsw i16 %57, 64
  %module3.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %53, i32 %i.099.i, i32 3
  %58 = ptrtoint ptr %module3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %i.099.i, ptr %module3.i.i, align 4
  %59 = ptrtoint ptr %arrayidx.i.i209 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %arrayidx.i.i209, align 4
  %trips.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %53, i32 %i.099.i, i32 2
  %60 = call ptr @memcpy(ptr %trips.i.i, ptr @default_thermal_trips, i32 60)
  %temp.i.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %53, i32 %i.099.i, i32 2, i32 0, i32 1
  %61 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %temp.i.i.i, align 4
  %temp3.i.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %53, i32 %i.099.i, i32 2, i32 1, i32 1
  %62 = ptrtoint ptr %temp3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %temp3.i.i.i, align 4
  %temp6.i.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %53, i32 %i.099.i, i32 2, i32 2, i32 1
  %63 = ptrtoint ptr %temp6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %temp6.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl.i.i.i) #10
  %64 = call ptr @memset(ptr %mtmp_pl.i.i.i, i32 255, i32 32)
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl.i.i.i, i16 noundef zeroext %conv1.i.i) #10
  %call.i.i.i210 = call i32 @mlxsw_reg_query(ptr noundef %core, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i210)
  %tobool.not.i.i.i211 = icmp eq i32 %call.i.i.i210, 0
  br i1 %tobool.not.i.i.i211, label %if.end.i.i76.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %dummy_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %dummy_temp.i.i, align 4
  %66 = ptrtoint ptr %crit_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %crit_temp.i.i, align 4
  %67 = ptrtoint ptr %emerg_temp.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %emerg_temp.i.i, align 4
  br label %mlxsw_thermal_module_init.exit.i

if.end.i.i76.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlxsw_reg_mtmp_unpack(ptr noundef nonnull %mtmp_pl.i.i.i, ptr noundef nonnull %dummy_temp.i.i, ptr noundef nonnull %crit_temp.i.i, ptr noundef nonnull %emerg_temp.i.i) #10
  br label %mlxsw_thermal_module_init.exit.i

mlxsw_thermal_module_init.exit.i:                 ; preds = %if.end.i.i76.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i.i.i) #10
  %68 = ptrtoint ptr %crit_temp.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crit_temp.i.i, align 4
  %70 = ptrtoint ptr %emerg_temp.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %emerg_temp.i.i, align 4
  %call.i.i = call fastcc i32 @mlxsw_thermal_module_trips_update(ptr noundef %2, ptr noundef %core, ptr noundef %arrayidx.i.i209, i32 noundef %69, i32 noundef %71) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emerg_temp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crit_temp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_temp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i, label %mlxsw_thermal_module_init.exit.i.for.inc.i_crit_edge, label %mlxsw_thermal_module_init.exit.i.err_unreg_tz_module_arr.i_crit_edge

mlxsw_thermal_module_init.exit.i.err_unreg_tz_module_arr.i_crit_edge: ; preds = %mlxsw_thermal_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unreg_tz_module_arr.i

mlxsw_thermal_module_init.exit.i.for.inc.i_crit_edge: ; preds = %mlxsw_thermal_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %mlxsw_thermal_module_init.exit.i.for.inc.i_crit_edge, %mlxsw_thermal_module_init.exit.thread.i
  %inc.i = add nuw nsw i32 %i.099.i, 1
  %72 = ptrtoint ptr %tz_module_num.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %tz_module_num.i, align 4
  %conv13.i = zext i8 %73 to i32
  %cmp.i212 = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp.i212, label %for.inc.i.for.body.i_crit_edge, label %for.cond20.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body25.i:                                     ; preds = %for.inc34.i.for.body25.i_crit_edge, %for.cond20.preheader.i.for.body25.i_crit_edge
  %i.1103.i = phi i32 [ %inc35.i, %for.inc34.i.for.body25.i_crit_edge ], [ 0, %for.cond20.preheader.i.for.body25.i_crit_edge ]
  %74 = ptrtoint ptr %tz_module_arr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tz_module_arr.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_thermal_module, ptr %75, i32 %i.1103.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  %tobool27.not.i = icmp eq ptr %77, null
  br i1 %tobool27.not.i, label %for.body25.i.for.inc34.i_crit_edge, label %if.end29.i

for.body25.i.for.inc34.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc34.i

if.end29.i:                                       ; preds = %for.body25.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tz_name.i.i) #10
  %module.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %75, i32 %i.1103.i, i32 3
  %78 = call ptr @memset(ptr %tz_name.i.i, i32 255, i32 16)
  %79 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %module.i.i, align 4
  %add.i.i = add i32 %80, 1
  %call.i77.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tz_name.i.i, i32 noundef 16, ptr noundef nonnull @.str.74, i32 noundef %add.i.i) #10
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  %polling_delay.i.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %polling_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %polling_delay.i.i, align 4
  %call2.i.i = call ptr @thermal_zone_device_register(ptr noundef nonnull %tz_name.i.i, i32 noundef 3, i32 noundef 7, ptr noundef %arrayidx.i, ptr noundef nonnull @mlxsw_thermal_module_ops, ptr noundef null, i32 noundef 0, i32 noundef %84) #10
  %tzdev.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %75, i32 %i.1103.i, i32 1
  %85 = ptrtoint ptr %tzdev.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call2.i.i, ptr %tzdev.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlxsw_thermal_module_tz_init.exit.i, label %if.end.i79.i

if.end.i79.i:                                     ; preds = %if.end29.i
  %call8.i.i = call i32 @thermal_zone_device_enable(ptr noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i78.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i78.i, label %mlxsw_thermal_module_tz_init.exit.thread.i, label %mlxsw_thermal_module_tz_init.exit.thread92.i

mlxsw_thermal_module_tz_init.exit.thread.i:       ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tz_name.i.i) #10
  br label %for.inc34.i

mlxsw_thermal_module_tz_init.exit.thread92.i:     ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %tzdev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tzdev.i.i, align 4
  call void @thermal_zone_device_unregister(ptr noundef %87) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tz_name.i.i) #10
  br label %err_unreg_tz_module_arr.i

mlxsw_thermal_module_tz_init.exit.i:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %call2.i.i to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tz_name.i.i) #10
  br label %err_unreg_tz_module_arr.i

for.inc34.i:                                      ; preds = %mlxsw_thermal_module_tz_init.exit.thread.i, %for.body25.i.for.inc34.i_crit_edge
  %inc35.i = add nuw nsw i32 %i.1103.i, 1
  %89 = ptrtoint ptr %tz_module_num.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tz_module_num.i, align 4
  %conv22.i = zext i8 %90 to i32
  %cmp23.i = icmp ult i32 %inc35.i, %conv22.i
  br i1 %cmp23.i, label %for.inc34.i.for.body25.i_crit_edge, label %for.inc34.i.if.end81_crit_edge

for.inc34.i.if.end81_crit_edge:                   ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

for.inc34.i.for.body25.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25.i

err_unreg_tz_module_arr.i:                        ; preds = %mlxsw_thermal_module_tz_init.exit.i, %mlxsw_thermal_module_tz_init.exit.thread92.i, %mlxsw_thermal_module_init.exit.i.err_unreg_tz_module_arr.i_crit_edge
  %err.0.i = phi i32 [ %88, %mlxsw_thermal_module_tz_init.exit.i ], [ %call8.i.i, %mlxsw_thermal_module_tz_init.exit.thread92.i ], [ %call.i.i, %mlxsw_thermal_module_init.exit.i.err_unreg_tz_module_arr.i_crit_edge ]
  %91 = ptrtoint ptr %tz_module_num.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %tz_module_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp40106.not.i = icmp eq i8 %92, 0
  br i1 %cmp40106.not.i, label %err_unreg_tz_module_arr.i.mlxsw_thermal_modules_init.exit_crit_edge, label %for.body42.preheader.i

err_unreg_tz_module_arr.i.mlxsw_thermal_modules_init.exit_crit_edge: ; preds = %err_unreg_tz_module_arr.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_modules_init.exit

for.body42.preheader.i:                           ; preds = %err_unreg_tz_module_arr.i
  %conv38.i = zext i8 %92 to i32
  br label %for.body42.i

for.body42.i:                                     ; preds = %mlxsw_thermal_module_fini.exit.i.for.body42.i_crit_edge, %for.body42.preheader.i
  %i.2107.in.i = phi i32 [ %i.2107.i, %mlxsw_thermal_module_fini.exit.i.for.body42.i_crit_edge ], [ %conv38.i, %for.body42.preheader.i ]
  %i.2107.i = add nsw i32 %i.2107.in.i, -1
  %93 = ptrtoint ptr %tz_module_arr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tz_module_arr.i, align 4
  %arrayidx44.i = getelementptr %struct.mlxsw_thermal_module, ptr %94, i32 %i.2107.i
  %tobool.not.i81.i = icmp eq ptr %arrayidx44.i, null
  br i1 %tobool.not.i81.i, label %for.body42.i.mlxsw_thermal_module_fini.exit.i_crit_edge, label %land.lhs.true.i.i

for.body42.i.mlxsw_thermal_module_fini.exit.i_crit_edge: ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_module_fini.exit.i

land.lhs.true.i.i:                                ; preds = %for.body42.i
  %tzdev.i82.i = getelementptr %struct.mlxsw_thermal_module, ptr %94, i32 %i.2107.i, i32 1
  %95 = ptrtoint ptr %tzdev.i82.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tzdev.i82.i, align 4
  %tobool1.not.i.i = icmp eq ptr %96, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.mlxsw_thermal_module_fini.exit.i_crit_edge, label %if.then.i83.i

land.lhs.true.i.i.mlxsw_thermal_module_fini.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_module_fini.exit.i

if.then.i83.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_zone_device_unregister(ptr noundef nonnull %96) #10
  %97 = ptrtoint ptr %tzdev.i82.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %tzdev.i82.i, align 4
  %98 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %arrayidx44.i, align 4
  br label %mlxsw_thermal_module_fini.exit.i

mlxsw_thermal_module_fini.exit.i:                 ; preds = %if.then.i83.i, %land.lhs.true.i.i.mlxsw_thermal_module_fini.exit.i_crit_edge, %for.body42.i.mlxsw_thermal_module_fini.exit.i_crit_edge
  %cmp40.i = icmp ugt i32 %i.2107.in.i, 1
  br i1 %cmp40.i, label %mlxsw_thermal_module_fini.exit.i.for.body42.i_crit_edge, label %mlxsw_thermal_module_fini.exit.i.mlxsw_thermal_modules_init.exit_crit_edge

mlxsw_thermal_module_fini.exit.i.mlxsw_thermal_modules_init.exit_crit_edge: ; preds = %mlxsw_thermal_module_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_modules_init.exit

mlxsw_thermal_module_fini.exit.i.for.body42.i_crit_edge: ; preds = %mlxsw_thermal_module_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42.i

mlxsw_thermal_modules_init.exit.thread288:        ; preds = %if.end4.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge, %if.end.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end4.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge ], [ %call2.i, %if.end.i.mlxsw_thermal_modules_init.exit.thread288_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i) #10
  br label %err_unreg_tzdev

mlxsw_thermal_modules_init.exit:                  ; preds = %mlxsw_thermal_module_fini.exit.i.mlxsw_thermal_modules_init.exit_crit_edge, %err_unreg_tz_module_arr.i.mlxsw_thermal_modules_init.exit_crit_edge
  %99 = ptrtoint ptr %tz_module_arr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tz_module_arr.i, align 4
  call void @kfree(ptr noundef %100) #10
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i) #10
  br label %err_unreg_tzdev

if.end81:                                         ; preds = %for.inc34.i.if.end81_crit_edge, %for.cond20.preheader.i.if.end81_crit_edge, %for.cond.preheader.i.if.end81_crit_edge, %if.end77.if.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i) #10
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %mgpir_pl.i214) #10
  %call.i215 = call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %core) #10
  br i1 %call.i215, label %if.end.i218, label %if.end81.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge

if.end81.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge: ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit.thread

if.end.i218:                                      ; preds = %if.end81
  %101 = call ptr @memset(ptr %mgpir_pl.i214, i32 0, i32 160)
  %call2.i216 = call i32 @mlxsw_reg_query(ptr noundef %core, ptr noundef nonnull @mlxsw_reg_mgpir, ptr noundef nonnull %mgpir_pl.i214) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i216)
  %tobool.not.i217 = icmp eq i32 %call2.i216, 0
  br i1 %tobool.not.i217, label %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i, label %if.end.i218.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge

if.end.i218.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge: ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit.thread294

mlxsw_reg_mgpir_num_of_devices_get.exit.i.i:      ; preds = %if.end.i218
  %102 = ptrtoint ptr %mgpir_pl.i214 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mgpir_pl.i214, align 4
  %conv.i.i220 = trunc i32 %103 to i8
  %104 = and i32 %103, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %104)
  %cmp.not.i = icmp ne i32 %104, 16777216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i220)
  %tobool6.not.i = icmp eq i8 %conv.i.i220, 0
  %or.cond.i = or i1 %cmp.not.i, %tobool6.not.i
  br i1 %or.cond.i, label %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge, label %if.end8.i

mlxsw_reg_mgpir_num_of_devices_get.exit.i.i.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge: ; preds = %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit.thread

if.end8.i:                                        ; preds = %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i
  %and4.i.i.i.i = and i32 %103, 255
  %tz_gearbox_num.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 10
  %105 = ptrtoint ptr %tz_gearbox_num.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv.i.i220, ptr %tz_gearbox_num.i, align 4
  %106 = mul nuw nsw i32 %and4.i.i.i.i, 72
  %call8.i.i.i248 = call noalias align 128 ptr @__kmalloc(i32 noundef %106, i32 noundef 3520) #14
  %tz_gearbox_arr.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 9
  %107 = ptrtoint ptr %tz_gearbox_arr.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call8.i.i.i248, ptr %tz_gearbox_arr.i, align 4
  %tobool12.not.i = icmp eq ptr %call8.i.i.i248, null
  br i1 %tobool12.not.i, label %if.end8.i.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge, label %for.cond.preheader.i252

if.end8.i.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit.thread294

for.cond.preheader.i252:                          ; preds = %if.end8.i
  %108 = ptrtoint ptr %tz_gearbox_num.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %tz_gearbox_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp1713.not.i = icmp eq i8 %109, 0
  br i1 %cmp1713.not.i, label %for.cond.preheader.i252.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge, label %for.cond.preheader.i252.for.body.i260_crit_edge

for.cond.preheader.i252.for.body.i260_crit_edge:  ; preds = %for.cond.preheader.i252
  br label %for.body.i260

for.cond.preheader.i252.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge: ; preds = %for.cond.preheader.i252
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit.thread

for.body.i260:                                    ; preds = %mlxsw_thermal_gearbox_tz_init.exit.thread.i.for.body.i260_crit_edge, %for.cond.preheader.i252.for.body.i260_crit_edge
  %i.014.i = phi i32 [ %inc.i264, %mlxsw_thermal_gearbox_tz_init.exit.thread.i.for.body.i260_crit_edge ], [ 0, %for.cond.preheader.i252.for.body.i260_crit_edge ]
  %110 = ptrtoint ptr %tz_gearbox_arr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tz_gearbox_arr.i, align 4
  %arrayidx.i253 = getelementptr %struct.mlxsw_thermal_module, ptr %111, i32 %i.014.i
  %trips.i = getelementptr %struct.mlxsw_thermal_module, ptr %111, i32 %i.014.i, i32 2
  %112 = call ptr @memcpy(ptr %trips.i, ptr @default_thermal_trips, i32 60)
  %module.i = getelementptr %struct.mlxsw_thermal_module, ptr %111, i32 %i.014.i, i32 3
  %113 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %i.014.i, ptr %module.i, align 4
  %114 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i, ptr %arrayidx.i253, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tz_name.i.i213) #10
  %115 = call ptr @memset(ptr %tz_name.i.i213, i32 255, i32 16)
  %116 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %module.i, align 4
  %add.i.i254 = add i32 %117, 1
  %call.i.i255 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tz_name.i.i213, i32 noundef 16, ptr noundef nonnull @.str.75, i32 noundef %add.i.i254) #10
  %118 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i253, align 4
  %polling_delay.i.i256 = getelementptr inbounds %struct.mlxsw_thermal, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %polling_delay.i.i256 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %polling_delay.i.i256, align 4
  %call2.i.i257 = call ptr @thermal_zone_device_register(ptr noundef nonnull %tz_name.i.i213, i32 noundef 3, i32 noundef 7, ptr noundef %arrayidx.i253, ptr noundef nonnull @mlxsw_thermal_gearbox_ops, ptr noundef null, i32 noundef 0, i32 noundef %121) #10
  %tzdev.i.i258 = getelementptr %struct.mlxsw_thermal_module, ptr %111, i32 %i.014.i, i32 1
  %122 = ptrtoint ptr %tzdev.i.i258 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call2.i.i257, ptr %tzdev.i.i258, align 4
  %cmp.i.i.i259 = icmp ugt ptr %call2.i.i257, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i259, label %if.then.i.i, label %if.end.i.i263

if.then.i.i:                                      ; preds = %for.body.i260
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %call2.i.i257 to i32
  br label %mlxsw_thermal_gearbox_tz_init.exit.i

if.end.i.i263:                                    ; preds = %for.body.i260
  %call8.i.i261 = call i32 @thermal_zone_device_enable(ptr noundef %call2.i.i257) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i261)
  %tobool.not.i.i262 = icmp eq i32 %call8.i.i261, 0
  br i1 %tobool.not.i.i262, label %mlxsw_thermal_gearbox_tz_init.exit.thread.i, label %if.then9.i.i

mlxsw_thermal_gearbox_tz_init.exit.thread.i:      ; preds = %if.end.i.i263
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tz_name.i.i213) #10
  %inc.i264 = add nuw nsw i32 %i.014.i, 1
  %124 = ptrtoint ptr %tz_gearbox_num.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tz_gearbox_num.i, align 4
  %conv16.i = zext i8 %125 to i32
  %cmp17.i = icmp ult i32 %inc.i264, %conv16.i
  br i1 %cmp17.i, label %mlxsw_thermal_gearbox_tz_init.exit.thread.i.for.body.i260_crit_edge, label %mlxsw_thermal_gearbox_tz_init.exit.thread.i.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge

mlxsw_thermal_gearbox_tz_init.exit.thread.i.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge: ; preds = %mlxsw_thermal_gearbox_tz_init.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit.thread

mlxsw_thermal_gearbox_tz_init.exit.thread.i.for.body.i260_crit_edge: ; preds = %mlxsw_thermal_gearbox_tz_init.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i260

if.then9.i.i:                                     ; preds = %if.end.i.i263
  call void @__sanitizer_cov_trace_pc() #12
  %126 = ptrtoint ptr %tzdev.i.i258 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tzdev.i.i258, align 4
  call void @thermal_zone_device_unregister(ptr noundef %127) #10
  br label %mlxsw_thermal_gearbox_tz_init.exit.i

mlxsw_thermal_gearbox_tz_init.exit.i:             ; preds = %if.then9.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %123, %if.then.i.i ], [ %call8.i.i261, %if.then9.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tz_name.i.i213) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.014.i)
  %cmp2616.not.i = icmp eq i32 %i.014.i, 0
  br i1 %cmp2616.not.i, label %mlxsw_thermal_gearbox_tz_init.exit.i.mlxsw_thermal_gearboxes_init.exit_crit_edge, label %mlxsw_thermal_gearbox_tz_init.exit.i.for.body28.i_crit_edge

mlxsw_thermal_gearbox_tz_init.exit.i.for.body28.i_crit_edge: ; preds = %mlxsw_thermal_gearbox_tz_init.exit.i
  br label %for.body28.i

mlxsw_thermal_gearbox_tz_init.exit.i.mlxsw_thermal_gearboxes_init.exit_crit_edge: ; preds = %mlxsw_thermal_gearbox_tz_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %mlxsw_thermal_gearbox_tz_init.exit.i.for.body28.i_crit_edge
  %i.117.in.i = phi i32 [ %i.117.i, %for.body28.i.for.body28.i_crit_edge ], [ %i.014.i, %mlxsw_thermal_gearbox_tz_init.exit.i.for.body28.i_crit_edge ]
  %i.117.i = add nsw i32 %i.117.in.i, -1
  %128 = ptrtoint ptr %tz_gearbox_arr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tz_gearbox_arr.i, align 4
  %tzdev.i1.i = getelementptr %struct.mlxsw_thermal_module, ptr %129, i32 %i.117.i, i32 1
  %130 = ptrtoint ptr %tzdev.i1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tzdev.i1.i, align 4
  call void @thermal_zone_device_unregister(ptr noundef %131) #10
  %cmp26.i = icmp sgt i32 %i.117.in.i, 1
  br i1 %cmp26.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.mlxsw_thermal_gearboxes_init.exit_crit_edge

for.body28.i.mlxsw_thermal_gearboxes_init.exit_crit_edge: ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_init.exit

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i

mlxsw_thermal_gearboxes_init.exit.thread:         ; preds = %mlxsw_thermal_gearbox_tz_init.exit.thread.i.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge, %for.cond.preheader.i252.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge, %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge, %if.end81.mlxsw_thermal_gearboxes_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i214) #10
  %132 = ptrtoint ptr %tzdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tzdev, align 4
  %call87 = call i32 @thermal_zone_device_enable(ptr noundef %133) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %err_unreg_gearboxes

mlxsw_thermal_gearboxes_init.exit.thread294:      ; preds = %if.end8.i.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge, %if.end.i218.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge
  %retval.0.i265.ph = phi i32 [ -12, %if.end8.i.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge ], [ %call2.i216, %if.end.i218.mlxsw_thermal_gearboxes_init.exit.thread294_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i214) #10
  br label %err_unreg_modules_tzdev

mlxsw_thermal_gearboxes_init.exit:                ; preds = %for.body28.i.mlxsw_thermal_gearboxes_init.exit_crit_edge, %mlxsw_thermal_gearbox_tz_init.exit.i.mlxsw_thermal_gearboxes_init.exit_crit_edge
  %134 = ptrtoint ptr %tz_gearbox_arr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tz_gearbox_arr.i, align 4
  call void @kfree(ptr noundef %135) #10
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i214) #10
  br label %err_unreg_modules_tzdev

if.end90:                                         ; preds = %mlxsw_thermal_gearboxes_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %p_thermal to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i, ptr %p_thermal, align 4
  br label %cleanup111

err_unreg_gearboxes:                              ; preds = %mlxsw_thermal_gearboxes_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mlxsw_thermal_gearboxes_fini(ptr noundef nonnull %call.i)
  br label %err_unreg_modules_tzdev

err_unreg_modules_tzdev:                          ; preds = %err_unreg_gearboxes, %mlxsw_thermal_gearboxes_init.exit, %mlxsw_thermal_gearboxes_init.exit.thread294
  %err.6 = phi i32 [ %retval.0.i.i, %mlxsw_thermal_gearboxes_init.exit ], [ %call87, %err_unreg_gearboxes ], [ %retval.0.i265.ph, %mlxsw_thermal_gearboxes_init.exit.thread294 ]
  %137 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call.i, align 4
  %call.i266 = call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %138) #10
  br i1 %call.i266, label %if.end.i268, label %err_unreg_modules_tzdev.err_unreg_tzdev_crit_edge

err_unreg_modules_tzdev.err_unreg_tzdev_crit_edge: ; preds = %err_unreg_modules_tzdev
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unreg_tzdev

if.end.i268:                                      ; preds = %err_unreg_modules_tzdev
  %tz_module_num.i267 = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 8
  %139 = ptrtoint ptr %tz_module_num.i267 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %tz_module_num.i267, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %cmp9.not.i = icmp eq i8 %140, 0
  br i1 %cmp9.not.i, label %if.end.i268.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i268.for.end.i_crit_edge:                  ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i268
  %conv.i269 = zext i8 %140 to i32
  %tz_module_arr.i270 = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 7
  br label %for.body.i273

for.body.i273:                                    ; preds = %mlxsw_thermal_module_fini.exit.i279.for.body.i273_crit_edge, %for.body.lr.ph.i
  %i.010.in.i = phi i32 [ %conv.i269, %for.body.lr.ph.i ], [ %i.010.i, %mlxsw_thermal_module_fini.exit.i279.for.body.i273_crit_edge ]
  %i.010.i = add nsw i32 %i.010.in.i, -1
  %141 = ptrtoint ptr %tz_module_arr.i270 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tz_module_arr.i270, align 4
  %arrayidx.i271 = getelementptr %struct.mlxsw_thermal_module, ptr %142, i32 %i.010.i
  %tobool.not.i.i272 = icmp eq ptr %arrayidx.i271, null
  br i1 %tobool.not.i.i272, label %for.body.i273.mlxsw_thermal_module_fini.exit.i279_crit_edge, label %land.lhs.true.i.i276

for.body.i273.mlxsw_thermal_module_fini.exit.i279_crit_edge: ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_module_fini.exit.i279

land.lhs.true.i.i276:                             ; preds = %for.body.i273
  %tzdev.i.i274 = getelementptr %struct.mlxsw_thermal_module, ptr %142, i32 %i.010.i, i32 1
  %143 = ptrtoint ptr %tzdev.i.i274 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tzdev.i.i274, align 4
  %tobool1.not.i.i275 = icmp eq ptr %144, null
  br i1 %tobool1.not.i.i275, label %land.lhs.true.i.i276.mlxsw_thermal_module_fini.exit.i279_crit_edge, label %if.then.i.i277

land.lhs.true.i.i276.mlxsw_thermal_module_fini.exit.i279_crit_edge: ; preds = %land.lhs.true.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_module_fini.exit.i279

if.then.i.i277:                                   ; preds = %land.lhs.true.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_zone_device_unregister(ptr noundef nonnull %144) #10
  %145 = ptrtoint ptr %tzdev.i.i274 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %tzdev.i.i274, align 4
  %146 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %arrayidx.i271, align 4
  br label %mlxsw_thermal_module_fini.exit.i279

mlxsw_thermal_module_fini.exit.i279:              ; preds = %if.then.i.i277, %land.lhs.true.i.i276.mlxsw_thermal_module_fini.exit.i279_crit_edge, %for.body.i273.mlxsw_thermal_module_fini.exit.i279_crit_edge
  %cmp.i278 = icmp ugt i32 %i.010.in.i, 1
  br i1 %cmp.i278, label %mlxsw_thermal_module_fini.exit.i279.for.body.i273_crit_edge, label %mlxsw_thermal_module_fini.exit.i279.for.end.i_crit_edge

mlxsw_thermal_module_fini.exit.i279.for.end.i_crit_edge: ; preds = %mlxsw_thermal_module_fini.exit.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

mlxsw_thermal_module_fini.exit.i279.for.body.i273_crit_edge: ; preds = %mlxsw_thermal_module_fini.exit.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i273

for.end.i:                                        ; preds = %mlxsw_thermal_module_fini.exit.i279.for.end.i_crit_edge, %if.end.i268.for.end.i_crit_edge
  %tz_module_arr2.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 7
  %147 = ptrtoint ptr %tz_module_arr2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tz_module_arr2.i, align 4
  call void @kfree(ptr noundef %148) #10
  br label %err_unreg_tzdev

err_unreg_tzdev:                                  ; preds = %for.end.i, %err_unreg_modules_tzdev.err_unreg_tzdev_crit_edge, %mlxsw_thermal_modules_init.exit, %mlxsw_thermal_modules_init.exit.thread288
  %err.7 = phi i32 [ %err.0.i, %mlxsw_thermal_modules_init.exit ], [ %retval.0.i.ph, %mlxsw_thermal_modules_init.exit.thread288 ], [ %err.6, %err_unreg_modules_tzdev.err_unreg_tzdev_crit_edge ], [ %err.6, %for.end.i ]
  %149 = ptrtoint ptr %tzdev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tzdev, align 4
  %tobool92.not = icmp eq ptr %150, null
  br i1 %tobool92.not, label %err_unreg_tzdev.err_unreg_cdevs_crit_edge, label %if.then93

err_unreg_tzdev.err_unreg_cdevs_crit_edge:        ; preds = %err_unreg_tzdev
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unreg_cdevs

if.then93:                                        ; preds = %err_unreg_tzdev
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_zone_device_unregister(ptr noundef nonnull %150) #10
  %151 = ptrtoint ptr %tzdev to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %tzdev, align 4
  br label %err_unreg_cdevs

err_unreg_cdevs:                                  ; preds = %if.then93, %err_unreg_tzdev.err_unreg_cdevs_crit_edge, %if.then71, %cleanup46
  %err.8 = phi i32 [ %22, %cleanup46 ], [ %40, %if.then71 ], [ %err.7, %if.then93 ], [ %err.7, %err_unreg_tzdev.err_unreg_cdevs_crit_edge ]
  %arrayidx102 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 0
  %152 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx102, align 4
  %tobool103.not = icmp eq ptr %153, null
  br i1 %tobool103.not, label %err_unreg_cdevs.for.inc108_crit_edge, label %if.then104

err_unreg_cdevs.for.inc108_crit_edge:             ; preds = %err_unreg_cdevs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc108

if.then104:                                       ; preds = %err_unreg_cdevs
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_cooling_device_unregister(ptr noundef nonnull %153) #10
  br label %for.inc108

for.inc108:                                       ; preds = %if.then104, %err_unreg_cdevs.for.inc108_crit_edge
  %arrayidx102.1 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 1
  %154 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx102.1, align 4
  %tobool103.not.1 = icmp eq ptr %155, null
  br i1 %tobool103.not.1, label %for.inc108.for.inc108.1_crit_edge, label %if.then104.1

for.inc108.for.inc108.1_crit_edge:                ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc108.1

if.then104.1:                                     ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_cooling_device_unregister(ptr noundef nonnull %155) #10
  br label %for.inc108.1

for.inc108.1:                                     ; preds = %if.then104.1, %for.inc108.for.inc108.1_crit_edge
  %arrayidx102.2 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 2
  %156 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx102.2, align 4
  %tobool103.not.2 = icmp eq ptr %157, null
  br i1 %tobool103.not.2, label %for.inc108.1.for.inc108.2_crit_edge, label %if.then104.2

for.inc108.1.for.inc108.2_crit_edge:              ; preds = %for.inc108.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc108.2

if.then104.2:                                     ; preds = %for.inc108.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_cooling_device_unregister(ptr noundef nonnull %157) #10
  br label %for.inc108.2

for.inc108.2:                                     ; preds = %if.then104.2, %for.inc108.1.for.inc108.2_crit_edge
  %arrayidx102.3 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 3
  %158 = ptrtoint ptr %arrayidx102.3 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx102.3, align 4
  %tobool103.not.3 = icmp eq ptr %159, null
  br i1 %tobool103.not.3, label %for.inc108.2.for.inc108.3_crit_edge, label %if.then104.3

for.inc108.2.for.inc108.3_crit_edge:              ; preds = %for.inc108.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc108.3

if.then104.3:                                     ; preds = %for.inc108.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_cooling_device_unregister(ptr noundef nonnull %159) #10
  br label %for.inc108.3

for.inc108.3:                                     ; preds = %if.then104.3, %for.inc108.2.for.inc108.3_crit_edge
  %arrayidx102.4 = getelementptr %struct.mlxsw_thermal, ptr %call.i, i32 0, i32 4, i32 4
  %160 = ptrtoint ptr %arrayidx102.4 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx102.4, align 4
  %tobool103.not.4 = icmp eq ptr %161, null
  br i1 %tobool103.not.4, label %for.inc108.3.err_free_thermal_crit_edge, label %if.then104.4

for.inc108.3.err_free_thermal_crit_edge:          ; preds = %for.inc108.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_thermal

if.then104.4:                                     ; preds = %for.inc108.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_cooling_device_unregister(ptr noundef nonnull %161) #10
  br label %err_free_thermal

err_free_thermal:                                 ; preds = %if.then104.4, %for.inc108.3.err_free_thermal_crit_edge, %cleanup.thread, %do.end
  %err.9 = phi i32 [ %call6, %do.end ], [ %err.1.ph, %cleanup.thread ], [ %err.8, %if.then104.4 ], [ %err.8, %for.inc108.3.err_free_thermal_crit_edge ]
  call void @devm_kfree(ptr noundef %2, ptr noundef nonnull %call.i) #10
  br label %cleanup111

cleanup111:                                       ; preds = %err_free_thermal, %if.end90, %entry.cleanup111_crit_edge
  %retval.0 = phi i32 [ %err.9, %err_free_thermal ], [ 0, %if.end90 ], [ -12, %entry.cleanup111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfcr_pl) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_thermal_gearboxes_fini(ptr nocapture noundef readonly %thermal) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %thermal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thermal, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %1) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tz_gearbox_num = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 10
  %2 = ptrtoint ptr %tz_gearbox_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tz_gearbox_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not = icmp eq i8 %3, 0
  br i1 %cmp9.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv = zext i8 %3 to i32
  %tz_gearbox_arr = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010.in = phi i32 [ %conv, %for.body.lr.ph ], [ %i.010, %for.body.for.body_crit_edge ]
  %i.010 = add nsw i32 %i.010.in, -1
  %4 = ptrtoint ptr %tz_gearbox_arr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tz_gearbox_arr, align 4
  %tzdev.i = getelementptr %struct.mlxsw_thermal_module, ptr %5, i32 %i.010, i32 1
  %6 = ptrtoint ptr %tzdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzdev.i, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %7) #10
  %cmp = icmp ugt i32 %i.010.in, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %tz_gearbox_arr2 = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 9
  %8 = ptrtoint ptr %tz_gearbox_arr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tz_gearbox_arr2, align 4
  tail call void @kfree(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_thermal_fini(ptr noundef %thermal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %thermal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thermal, align 4
  %call.i = tail call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %1) #10
  br i1 %call.i, label %if.end.i, label %entry.mlxsw_thermal_gearboxes_fini.exit_crit_edge

entry.mlxsw_thermal_gearboxes_fini.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_gearboxes_fini.exit

if.end.i:                                         ; preds = %entry
  %tz_gearbox_num.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 10
  %2 = ptrtoint ptr %tz_gearbox_num.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tz_gearbox_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not.i = icmp eq i8 %3, 0
  br i1 %cmp9.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv.i = zext i8 %3 to i32
  %tz_gearbox_arr.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.in.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %i.010.i, %for.body.i.for.body.i_crit_edge ]
  %i.010.i = add nsw i32 %i.010.in.i, -1
  %4 = ptrtoint ptr %tz_gearbox_arr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tz_gearbox_arr.i, align 4
  %tzdev.i.i = getelementptr %struct.mlxsw_thermal_module, ptr %5, i32 %i.010.i, i32 1
  %6 = ptrtoint ptr %tzdev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzdev.i.i, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %7) #10
  %cmp.i = icmp ugt i32 %i.010.in.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %tz_gearbox_arr2.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 9
  %8 = ptrtoint ptr %tz_gearbox_arr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tz_gearbox_arr2.i, align 4
  tail call void @kfree(ptr noundef %9) #10
  br label %mlxsw_thermal_gearboxes_fini.exit

mlxsw_thermal_gearboxes_fini.exit:                ; preds = %for.end.i, %entry.mlxsw_thermal_gearboxes_fini.exit_crit_edge
  %10 = ptrtoint ptr %thermal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thermal, align 4
  %call.i24 = tail call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %11) #10
  br i1 %call.i24, label %if.end.i26, label %mlxsw_thermal_gearboxes_fini.exit.mlxsw_thermal_modules_fini.exit_crit_edge

mlxsw_thermal_gearboxes_fini.exit.mlxsw_thermal_modules_fini.exit_crit_edge: ; preds = %mlxsw_thermal_gearboxes_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_modules_fini.exit

if.end.i26:                                       ; preds = %mlxsw_thermal_gearboxes_fini.exit
  %tz_module_num.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 8
  %12 = ptrtoint ptr %tz_module_num.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tz_module_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9.not.i25 = icmp eq i8 %13, 0
  br i1 %cmp9.not.i25, label %if.end.i26.for.end.i34_crit_edge, label %for.body.lr.ph.i28

if.end.i26.for.end.i34_crit_edge:                 ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i34

for.body.lr.ph.i28:                               ; preds = %if.end.i26
  %conv.i27 = zext i8 %13 to i32
  %tz_module_arr.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 7
  br label %for.body.i31

for.body.i31:                                     ; preds = %mlxsw_thermal_module_fini.exit.i.for.body.i31_crit_edge, %for.body.lr.ph.i28
  %i.010.in.i29 = phi i32 [ %conv.i27, %for.body.lr.ph.i28 ], [ %i.010.i30, %mlxsw_thermal_module_fini.exit.i.for.body.i31_crit_edge ]
  %i.010.i30 = add nsw i32 %i.010.in.i29, -1
  %14 = ptrtoint ptr %tz_module_arr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tz_module_arr.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_thermal_module, ptr %15, i32 %i.010.i30
  %tobool.not.i.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i.i, label %for.body.i31.mlxsw_thermal_module_fini.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i31.mlxsw_thermal_module_fini.exit.i_crit_edge: ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_module_fini.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i31
  %tzdev.i.i32 = getelementptr %struct.mlxsw_thermal_module, ptr %15, i32 %i.010.i30, i32 1
  %16 = ptrtoint ptr %tzdev.i.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tzdev.i.i32, align 4
  %tobool1.not.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.mlxsw_thermal_module_fini.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mlxsw_thermal_module_fini.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_thermal_module_fini.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_zone_device_unregister(ptr noundef nonnull %17) #10
  %18 = ptrtoint ptr %tzdev.i.i32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tzdev.i.i32, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i, align 4
  br label %mlxsw_thermal_module_fini.exit.i

mlxsw_thermal_module_fini.exit.i:                 ; preds = %if.then.i.i, %land.lhs.true.i.i.mlxsw_thermal_module_fini.exit.i_crit_edge, %for.body.i31.mlxsw_thermal_module_fini.exit.i_crit_edge
  %cmp.i33 = icmp ugt i32 %i.010.in.i29, 1
  br i1 %cmp.i33, label %mlxsw_thermal_module_fini.exit.i.for.body.i31_crit_edge, label %mlxsw_thermal_module_fini.exit.i.for.end.i34_crit_edge

mlxsw_thermal_module_fini.exit.i.for.end.i34_crit_edge: ; preds = %mlxsw_thermal_module_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i34

mlxsw_thermal_module_fini.exit.i.for.body.i31_crit_edge: ; preds = %mlxsw_thermal_module_fini.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i31

for.end.i34:                                      ; preds = %mlxsw_thermal_module_fini.exit.i.for.end.i34_crit_edge, %if.end.i26.for.end.i34_crit_edge
  %tz_module_arr2.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 7
  %20 = ptrtoint ptr %tz_module_arr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tz_module_arr2.i, align 4
  tail call void @kfree(ptr noundef %21) #10
  br label %mlxsw_thermal_modules_fini.exit

mlxsw_thermal_modules_fini.exit:                  ; preds = %for.end.i34, %mlxsw_thermal_gearboxes_fini.exit.mlxsw_thermal_modules_fini.exit_crit_edge
  %tzdev = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 2
  %22 = ptrtoint ptr %tzdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tzdev, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %mlxsw_thermal_modules_fini.exit.if.end_crit_edge, label %if.then

mlxsw_thermal_modules_fini.exit.if.end_crit_edge: ; preds = %mlxsw_thermal_modules_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mlxsw_thermal_modules_fini.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_zone_device_unregister(ptr noundef nonnull %23) #10
  %24 = ptrtoint ptr %tzdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tzdev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mlxsw_thermal_modules_fini.exit.if.end_crit_edge
  %arrayidx = getelementptr %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 4, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %26, null
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %26) #10
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %29, null
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %29) #10
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.2, align 4
  %tobool3.not.2 = icmp eq ptr %32, null
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %32) #10
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.3, align 4
  %tobool3.not.3 = icmp eq ptr %35, null
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %35) #10
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.4, align 4
  %tobool3.not.4 = icmp eq ptr %38, null
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %38) #10
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3.for.inc.4_crit_edge
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %thermal, i32 0, i32 1
  %40 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %43, ptr noundef %thermal) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mlxsw_thermal_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %p_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %p_state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_get_cur_state(ptr noundef readonly %cdev, ptr nocapture noundef writeonly %p_state) #0 align 64 {
entry:
  %mfsc_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfsc_pl) #10
  %arrayidx.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %mfsc_pl to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %mfsc_pl, align 8
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %8, %cdev
  br i1 %cmp1.i, label %entry.if.end_crit_edge, label %for.inc.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %10, %cdev
  br i1 %cmp1.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %12, %cdev
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %14, %cdev
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %16, %cdev
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %18) #15
  %call7.i = tail call ptr @strnstr(ptr noundef %18, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.inc.4.i.cleanup_crit_edge, label %for.inc.4.i.if.end_crit_edge

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i8 [ 4, %for.inc.3.i.if.end_crit_edge ], [ 3, %for.inc.2.i.if.end_crit_edge ], [ 2, %for.inc.1.i.if.end_crit_edge ], [ 1, %for.inc.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 0, %for.inc.4.i.if.end_crit_edge ]
  call fastcc void @mlxsw_reg_mfsc_pack(ptr noundef nonnull %mfsc_pl, i8 noundef zeroext %retval.0.i.ph, i8 noundef zeroext 0)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call3 = call i32 @mlxsw_reg_query(ptr noundef %20, ptr noundef nonnull @mlxsw_reg_mfsc, ptr noundef nonnull %mfsc_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %mlxsw_reg_mfsc_pwm_duty_cycle_get.exit, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30) #13
  br label %cleanup

mlxsw_reg_mfsc_pwm_duty_cycle_get.exit:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mfsc_pl, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %conv8 = trunc i32 %22 to i8
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, 255
  %mul.i = mul nuw nsw i16 %24, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8)
  %cmp.not.i = icmp eq i8 %conv8, 0
  %cond.in.v.i = select i1 %cmp.not.i, i16 -127, i16 127
  %cond.in.i = add nsw i16 %mul.i, %cond.in.v.i
  %cond15.i = sdiv i16 %cond.in.i, 255
  %25 = zext i16 %cond15.i to i32
  %26 = ptrtoint ptr %p_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %p_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mfsc_pwm_duty_cycle_get.exit, %do.end, %for.inc.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %mlxsw_reg_mfsc_pwm_duty_cycle_get.exit ], [ -19, %for.inc.4.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfsc_pl) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_set_cur_state(ptr noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  %mfsc_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfsc_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %state)
  %cmp = icmp ugt i32 %state, 10
  %6 = ptrtoint ptr %mfsc_pl to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %mfsc_pl, align 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %8, %cdev
  br i1 %cmp1.i, label %if.end.if.end4_crit_edge, label %for.inc.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.i:                                        ; preds = %if.end
  %arrayidx.1.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %10, %cdev
  br i1 %cmp1.1.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.1.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %12, %cdev
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end4_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end4_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %14, %cdev
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end4_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end4_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %16, %cdev
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end4_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end4_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %18) #15
  %call7.i = tail call ptr @strnstr(ptr noundef %18, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.inc.4.i.cleanup_crit_edge, label %for.inc.4.i.if.end4_crit_edge

for.inc.4.i.if.end4_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %for.inc.4.i.if.end4_crit_edge, %for.inc.3.i.if.end4_crit_edge, %for.inc.2.i.if.end4_crit_edge, %for.inc.1.i.if.end4_crit_edge, %for.inc.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %retval.0.i.ph = phi i8 [ 4, %for.inc.3.i.if.end4_crit_edge ], [ 3, %for.inc.2.i.if.end4_crit_edge ], [ 2, %for.inc.1.i.if.end4_crit_edge ], [ 1, %for.inc.i.if.end4_crit_edge ], [ 0, %if.end.if.end4_crit_edge ], [ 0, %for.inc.4.i.if.end4_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 5, i32 %state
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %20 to i16
  %mul.i = mul nuw i16 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.not = icmp eq i8 %20, 0
  %add.i = add nuw i16 %mul.i, 5
  %div5.i2728 = udiv i16 %add.i, 10
  %phi.cast.i = trunc i16 %div5.i2728 to i8
  %cond.i = select i1 %cmp.i.not, i8 0, i8 %phi.cast.i
  call fastcc void @mlxsw_reg_mfsc_pack(ptr noundef nonnull %mfsc_pl, i8 noundef zeroext %retval.0.i.ph, i8 noundef zeroext %cond.i)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call8 = call i32 @mlxsw_reg_write(ptr noundef %22, ptr noundef nonnull @mlxsw_reg_mfsc, ptr noundef nonnull %mfsc_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.38) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -19, %for.inc.4.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfsc_pl) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mfsc_pack(ptr nocapture noundef %payload, i8 noundef zeroext %pwm, i8 noundef zeroext %pwm_duty_cycle) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %payload, align 1
  %conv1 = zext i8 %pwm to i32
  %spec.select.i.i = shl nuw i32 %conv1, 24
  %and6.i.i = and i32 %spec.select.i.i, 117440512
  store i32 %and6.i.i, ptr %payload, align 4
  %conv2 = zext i8 %pwm_duty_cycle to i32
  %arrayidx.i.i29 = getelementptr i32, ptr %payload, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i29, align 4
  %and7.i.i31 = and i32 %2, -256
  %or.i.i32 = or i32 %and7.i.i31, %conv2
  store i32 %or.i.i32, ptr %arrayidx.i.i29, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_bind(ptr noundef %tzdev, ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %7, %cdev
  br i1 %cmp1.i, label %entry.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.i

entry.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %9, %cdev
  br i1 %cmp1.1.i, label %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.1.i

for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %11, %cdev
  br i1 %cmp1.2.i, label %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %13, %cdev
  br i1 %cmp1.3.i, label %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %15, %cdev
  br i1 %cmp1.4.i, label %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %17) #15
  %call7.i = tail call ptr @strnstr(ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.inc.4.i.cleanup7_crit_edge, label %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge

for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i.cleanup7_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

mlxsw_get_cooling_device_idx.exit:                ; preds = %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %entry.mlxsw_get_cooling_device_idx.exit_crit_edge
  %max_state = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 0, i32 4
  %18 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_state, align 4
  %min_state = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 0, i32 3
  %20 = ptrtoint ptr %min_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_state, align 4
  %call3 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tzdev, i32 noundef 0, ptr noundef %cdev, i32 noundef %19, i32 noundef %21, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %mlxsw_get_cooling_device_idx.exit.cleanup.thread_crit_edge, label %for.inc

mlxsw_get_cooling_device_idx.exit.cleanup.thread_crit_edge: ; preds = %mlxsw_get_cooling_device_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.1.cleanup.thread_crit_edge, %for.inc.cleanup.thread_crit_edge, %mlxsw_get_cooling_device_idx.exit.cleanup.thread_crit_edge
  %i.025.lcssa = phi i32 [ 0, %mlxsw_get_cooling_device_idx.exit.cleanup.thread_crit_edge ], [ 1, %for.inc.cleanup.thread_crit_edge ], [ 2, %for.inc.1.cleanup.thread_crit_edge ]
  %call3.lcssa = phi i32 [ %call3, %mlxsw_get_cooling_device_idx.exit.cleanup.thread_crit_edge ], [ %call3.1, %for.inc.cleanup.thread_crit_edge ], [ %call3.2, %for.inc.1.cleanup.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.40, i32 noundef %i.025.lcssa) #13
  br label %cleanup7

for.inc:                                          ; preds = %mlxsw_get_cooling_device_idx.exit
  %max_state.1 = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 1, i32 4
  %22 = ptrtoint ptr %max_state.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_state.1, align 4
  %min_state.1 = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 1, i32 3
  %24 = ptrtoint ptr %min_state.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_state.1, align 4
  %call3.1 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tzdev, i32 noundef 1, ptr noundef %cdev, i32 noundef %23, i32 noundef %25, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %max_state.2 = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 2, i32 4
  %26 = ptrtoint ptr %max_state.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_state.2, align 4
  %min_state.2 = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 2, i32 3
  %28 = ptrtoint ptr %min_state.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_state.2, align 4
  %call3.2 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tzdev, i32 noundef 2, ptr noundef %cdev, i32 noundef %27, i32 noundef %29, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.inc.1.cleanup.thread_crit_edge, label %for.inc.1.cleanup7_crit_edge

for.inc.1.cleanup7_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

for.inc.1.cleanup.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup7:                                         ; preds = %for.inc.1.cleanup7_crit_edge, %cleanup.thread, %for.inc.4.i.cleanup7_crit_edge
  %retval.2 = phi i32 [ %call3.lcssa, %cleanup.thread ], [ 0, %for.inc.4.i.cleanup7_crit_edge ], [ 0, %for.inc.1.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_unbind(ptr noundef %tzdev, ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %7, %cdev
  br i1 %cmp1.i, label %entry.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.i

entry.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %9, %cdev
  br i1 %cmp1.1.i, label %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.1.i

for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %11, %cdev
  br i1 %cmp1.2.i, label %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %13, %cdev
  br i1 %cmp1.3.i, label %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %15, %cdev
  br i1 %cmp1.4.i, label %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %17) #15
  %call7.i = tail call ptr @strnstr(ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.inc.4.i.cleanup_crit_edge, label %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge

for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlxsw_get_cooling_device_idx.exit:                ; preds = %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %entry.mlxsw_get_cooling_device_idx.exit_crit_edge
  %call3 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef 0, ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %mlxsw_get_cooling_device_idx.exit.do.end_crit_edge, label %for.cond

mlxsw_get_cooling_device_idx.exit.do.end_crit_edge: ; preds = %mlxsw_get_cooling_device_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond:                                         ; preds = %mlxsw_get_cooling_device_idx.exit
  %call3.1 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef 1, ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %call3.2 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef 2, ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.cond.1.do.end_crit_edge, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %mlxsw_get_cooling_device_idx.exit.do.end_crit_edge
  %call3.lcssa = phi i32 [ %call3, %mlxsw_get_cooling_device_idx.exit.do.end_crit_edge ], [ %call3.1, %for.cond.do.end_crit_edge ], [ %call3.2, %for.cond.1.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.42) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.1.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.lcssa, %do.end ], [ 0, %for.inc.4.i.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_get_temp(ptr noundef %tzdev, ptr nocapture noundef writeonly %p_temp) #0 align 64 {
entry:
  %mtmp_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl) #10
  %6 = call ptr @memset(ptr %mtmp_pl, i32 255, i32 32)
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl, i16 noundef zeroext 0)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_mtmp_unpack.exit, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.44) #13
  br label %cleanup

mlxsw_reg_mtmp_unpack.exit:                       ; preds = %entry
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mtmp_pl, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %and4.i.i.i = and i32 %10, 65535
  %sext4.i = shl i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext4.i)
  %cmp.i = icmp sgt i32 %sext4.i, -65536
  %conv1.i = ashr exact i32 %sext4.i, 16
  %mul.i = mul nsw i32 %conv1.i, 125
  %sext5.i = mul i32 %and4.i.i.i, 8192000
  %conv8.i = ashr exact i32 %sext5.i, 16
  %cond.i = select i1 %cmp.i, i32 %mul.i, i32 %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp sgt i32 %cond.i, 0
  br i1 %cmp, label %if.then4, label %mlxsw_reg_mtmp_unpack.exit.if.end6_crit_edge

mlxsw_reg_mtmp_unpack.exit.if.end6_crit_edge:     ; preds = %mlxsw_reg_mtmp_unpack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %mlxsw_reg_mtmp_unpack.exit
  %temp1.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %temp1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cond.i)
  %cmp2.i = icmp sgt i32 %12, %cond.i
  br i1 %cmp2.i, label %if.then4.if.then.i_crit_edge, label %if.end.i

if.then4.if.then.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.1.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %if.then4.if.then.i_crit_edge
  %shift.036.lcssa.i = phi i32 [ 1, %if.then4.if.then.i_crit_edge ], [ 256, %if.end.i.if.then.i_crit_edge ], [ 65536, %if.end.1.i.if.then.i_crit_edge ]
  %.lcssa.i = phi i32 [ %12, %if.then4.if.then.i_crit_edge ], [ %14, %if.end.i.if.then.i_crit_edge ], [ %16, %if.end.1.i.if.then.i_crit_edge ]
  %sub.i = sub i32 %.lcssa.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp sgt i32 %sub.i, 0
  %div.pn.v.i = select i1 %cmp5.i, i32 2, i32 -2
  %div.pn.i = sdiv i32 %sub.i, %div.pn.v.i
  %add.pn.i = add i32 %div.pn.i, %cond.i
  %cond.i16 = sdiv i32 %add.pn.i, %sub.i
  %mul.i17 = mul i32 %cond.i16, %shift.036.lcssa.i
  br label %for.end.i

if.end.i:                                         ; preds = %if.then4
  %temp1.1.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 1, i32 1
  %13 = ptrtoint ptr %temp1.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp1.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cond.i)
  %cmp2.1.i = icmp sgt i32 %14, %cond.i
  br i1 %cmp2.1.i, label %if.end.i.if.then.i_crit_edge, label %if.end.1.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  %temp1.2.i = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 2, i32 1
  %15 = ptrtoint ptr %temp1.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cond.i)
  %cmp2.2.i = icmp sgt i32 %16, %cond.i
  br i1 %cmp2.2.i, label %if.end.1.i.if.then.i_crit_edge, label %if.end.1.i.for.end.i_crit_edge

if.end.1.i.for.end.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.1.i.if.then.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.end.i:                                        ; preds = %if.end.1.i.for.end.i_crit_edge, %if.then.i
  %score.0.i = phi i32 [ %mul.i17, %if.then.i ], [ -1, %if.end.1.i.for.end.i_crit_edge ]
  %tz_highest_score.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %tz_highest_score.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tz_highest_score.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %score.0.i, i32 %18)
  %cmp14.i = icmp ugt i32 %score.0.i, %18
  br i1 %cmp14.i, label %if.then16.i, label %for.end.i.if.end6_crit_edge

for.end.i.if.end6_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %tz_highest_score.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %score.0.i, ptr %tz_highest_score.i, align 4
  %tz_highest_dev.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %tz_highest_dev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tzdev, ptr %tz_highest_dev.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then16.i, %for.end.i.if.end6_crit_edge, %mlxsw_reg_mtmp_unpack.exit.if.end6_crit_edge
  %21 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i, ptr %p_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_get_trip_type(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %p_type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %arrayidx = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 %trip
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %p_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_get_trip_temp(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %p_temp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %temp = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 %trip, i32 1
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp, align 4
  %4 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_set_trip_temp(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, i32 noundef %temp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %temp2 = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 %trip, i32 1
  %2 = ptrtoint ptr %temp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %temp, ptr %temp2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_get_trip_hyst(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %p_hyst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %hyst = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 %trip, i32 2
  %2 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hyst, align 4
  %4 = ptrtoint ptr %p_hyst to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_hyst, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_set_trip_hyst(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, i32 noundef %hyst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %hyst1 = getelementptr %struct.mlxsw_thermal, ptr %1, i32 0, i32 6, i32 %trip, i32 2
  %2 = ptrtoint ptr %hyst1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %hyst, ptr %hyst1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_trend_get(ptr noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %trend) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tz_highest_dev = getelementptr inbounds %struct.mlxsw_thermal, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tz_highest_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tz_highest_dev, align 4
  %cmp2 = icmp eq ptr %3, %tzdev
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %trend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_bind_cooling_device(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_unbind_cooling_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mtmp_pack(ptr nocapture noundef %payload, i16 noundef zeroext %sensor_index) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = call ptr @memset(ptr %payload, i32 0, i32 32)
  %1 = and i16 %sensor_index, 4095
  %and6.i.i = zext i16 %1 to i32
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %3, -4096
  %or.i.i = or i32 %and7.i.i, %and6.i.i
  store i32 %or.i.i, ptr %payload, align 4
  %arrayidx.i.i21 = getelementptr i32, ptr %payload, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i21, align 4
  %arrayidx.i.i44 = getelementptr i32, ptr %payload, i32 2
  %and7.i.i46 = and i32 %5, 1073741823
  %6 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and7.i.i46, ptr %arrayidx.i.i44, align 4
  %arrayidx.i.i70 = getelementptr i32, ptr %payload, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i70 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i70, align 4
  %and7.i.i72 = and i32 %8, -65536
  %or.i.i73 = or i32 %and7.i.i72, 840
  store i32 %or.i.i73, ptr %arrayidx.i.i70, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mtmp_unpack(ptr nocapture noundef readonly %payload, ptr noundef writeonly %p_temp, ptr noundef writeonly %p_temp_hi, ptr noundef writeonly %p_max_oper_temp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %p_temp, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %mlxsw_reg_mtmp_temperature_get.exit

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

mlxsw_reg_mtmp_temperature_get.exit:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %1, 65535
  %sext4 = shl i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext4)
  %cmp = icmp sgt i32 %sext4, -65536
  %conv1 = ashr exact i32 %sext4, 16
  %mul = mul nsw i32 %conv1, 125
  %sext5 = mul i32 %and4.i.i, 8192000
  %conv8 = ashr exact i32 %sext5, 16
  %cond = select i1 %cmp, i32 %mul, i32 %conv8
  %2 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %p_temp, align 4
  br label %if.end30

if.end30:                                         ; preds = %mlxsw_reg_mtmp_temperature_get.exit, %entry.if.end30_crit_edge
  %tobool31.not = icmp eq ptr %p_temp_hi, null
  br i1 %tobool31.not, label %if.end30.if.end52_crit_edge, label %mlxsw_reg_mtmp_temperature_threshold_hi_get.exit

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

mlxsw_reg_mtmp_temperature_threshold_hi_get.exit: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i21 = getelementptr i32, ptr %payload, i32 3
  %3 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i21, align 4
  %and4.i.i27 = and i32 %4, 65535
  %sext2 = shl i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext2)
  %cmp38 = icmp sgt i32 %sext2, -65536
  %conv37 = ashr exact i32 %sext2, 16
  %mul42 = mul nsw i32 %conv37, 125
  %sext3 = mul i32 %and4.i.i27, 8192000
  %conv49 = ashr exact i32 %sext3, 16
  %cond51 = select i1 %cmp38, i32 %mul42, i32 %conv49
  %5 = ptrtoint ptr %p_temp_hi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond51, ptr %p_temp_hi, align 4
  br label %if.end52

if.end52:                                         ; preds = %mlxsw_reg_mtmp_temperature_threshold_hi_get.exit, %if.end30.if.end52_crit_edge
  %tobool53.not = icmp eq ptr %p_max_oper_temp, null
  br i1 %tobool53.not, label %if.end52.if.end77_crit_edge, label %mlxsw_reg_mtmp_max_operational_temperature_get.exit

if.end52.if.end77_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

mlxsw_reg_mtmp_max_operational_temperature_get.exit: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i46 = getelementptr i32, ptr %payload, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i46, align 4
  %shr.i.i48 = lshr i32 %7, 16
  %sext = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext)
  %cmp60 = icmp sgt i32 %sext, -65536
  %conv59 = ashr exact i32 %sext, 16
  %mul64 = mul nsw i32 %conv59, 125
  %sext1 = mul i32 %shr.i.i48, 8192000
  %conv71 = ashr exact i32 %sext1, 16
  %cond73 = select i1 %cmp60, i32 %mul64, i32 %conv71
  %8 = ptrtoint ptr %p_max_oper_temp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond73, ptr %p_max_oper_temp, align 4
  br label %if.end77

if.end77:                                         ; preds = %mlxsw_reg_mtmp_max_operational_temperature_get.exit, %if.end52.if.end77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_thermal_module_trips_update(ptr noundef %dev, ptr noundef %core, ptr nocapture noundef %tz, i32 noundef %crit_temp, i32 noundef %emerg_temp) unnamed_addr #0 align 64 {
entry:
  %crit_temp.addr = alloca i32, align 4
  %emerg_temp.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crit_temp.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %crit_temp, ptr %crit_temp.addr, align 4
  %1 = ptrtoint ptr %emerg_temp.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %emerg_temp, ptr %emerg_temp.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %emerg_temp)
  %tobool.not = icmp eq i32 %emerg_temp, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crit_temp)
  %tobool1.not = icmp eq i32 %crit_temp, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %module = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %tz, i32 0, i32 3
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %module, align 4
  %call = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %core, i32 noundef %3, i32 noundef 4, ptr noundef nonnull %crit_temp.addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %module, align 4
  %call5 = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %core, i32 noundef %5, i32 noundef 0, ptr noundef nonnull %emerg_temp.addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9thread-pre-split, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9thread-pre-split:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %crit_temp.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %crit_temp.addr, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9thread-pre-split, %entry.if.end9_crit_edge
  %7 = phi i32 [ %.pr, %if.end9thread-pre-split ], [ %crit_temp, %entry.if.end9_crit_edge ]
  %8 = ptrtoint ptr %emerg_temp.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %emerg_temp.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp sgt i32 %7, %9
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %tzdev = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %tz, i32 0, i32 1
  %10 = ptrtoint ptr %tzdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tzdev, align 4
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %11, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %type, i32 noundef %7, i32 noundef %9) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %7)
  %cmp12 = icmp sgt i32 %7, 9999
  %sub = add nsw i32 %7, -10000
  %spec.select = select i1 %cmp12, i32 %sub, i32 %7
  %12 = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %tz, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %temp20 = getelementptr %struct.mlxsw_thermal_module, ptr %tz, i32 0, i32 2, i32 1, i32 1
  %14 = ptrtoint ptr %temp20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %7, ptr %temp20, align 4
  %temp23 = getelementptr %struct.mlxsw_thermal_module, ptr %tz, i32 0, i32 2, i32 2, i32 1
  %15 = ptrtoint ptr %temp23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %temp23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end11 ], [ %call, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_module_bind(ptr noundef %tzdev, ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %5, %cdev
  br i1 %cmp1.i, label %entry.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.i

entry.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %7, %cdev
  br i1 %cmp1.1.i, label %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.1.i

for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %9, %cdev
  br i1 %cmp1.2.i, label %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %11, %cdev
  br i1 %cmp1.3.i, label %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %13, %cdev
  br i1 %cmp1.4.i, label %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %15) #15
  %call7.i = tail call ptr @strnstr(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.inc.4.i.cleanup12_crit_edge, label %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge

for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i.cleanup12_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

mlxsw_get_cooling_device_idx.exit:                ; preds = %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %entry.mlxsw_get_cooling_device_idx.exit_crit_edge
  %max_state = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 0, i32 4
  %16 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_state, align 4
  %min_state = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 0, i32 3
  %18 = ptrtoint ptr %min_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_state, align 4
  %call2 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tzdev, i32 noundef 0, ptr noundef %cdev, i32 noundef %17, i32 noundef %19, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %mlxsw_get_cooling_device_idx.exit.cleanup12_crit_edge, label %for.inc

mlxsw_get_cooling_device_idx.exit.cleanup12_crit_edge: ; preds = %mlxsw_get_cooling_device_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

for.inc:                                          ; preds = %mlxsw_get_cooling_device_idx.exit
  %max_state.1 = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 1, i32 4
  %20 = ptrtoint ptr %max_state.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_state.1, align 4
  %min_state.1 = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 1, i32 3
  %22 = ptrtoint ptr %min_state.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_state.1, align 4
  %call2.1 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tzdev, i32 noundef 1, ptr noundef %cdev, i32 noundef %21, i32 noundef %23, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %for.inc.for.body8_crit_edge, label %for.inc.1

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.inc.1:                                        ; preds = %for.inc
  %max_state.2 = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 2, i32 4
  %24 = ptrtoint ptr %max_state.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_state.2, align 4
  %min_state.2 = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 2, i32 3
  %26 = ptrtoint ptr %min_state.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_state.2, align 4
  %call2.2 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %tzdev, i32 noundef 2, ptr noundef %cdev, i32 noundef %25, i32 noundef %27, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp3.2 = icmp slt i32 %call2.2, 0
  br i1 %cmp3.2, label %for.inc.1.for.body8_crit_edge, label %for.inc.1.cleanup12_crit_edge

for.inc.1.cleanup12_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

for.inc.1.for.body8_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.body8:                                        ; preds = %for.inc.1.for.body8_crit_edge, %for.inc.for.body8_crit_edge
  %i.034.lcssa.ph = phi i32 [ 1, %for.inc.1.for.body8_crit_edge ], [ 0, %for.inc.for.body8_crit_edge ]
  %call2.lcssa.ph = phi i32 [ %call2.2, %for.inc.1.for.body8_crit_edge ], [ %call2.1, %for.inc.for.body8_crit_edge ]
  %call9 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef %i.034.lcssa.ph, ptr noundef %cdev) #10
  br i1 %cmp3.1, label %for.body8.cleanup12_crit_edge, label %for.body8.1

for.body8.cleanup12_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

for.body8.1:                                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  %j.0 = add nsw i32 %i.034.lcssa.ph, -1
  %call9.1 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef %j.0, ptr noundef %cdev) #10
  br label %cleanup12

cleanup12:                                        ; preds = %for.body8.1, %for.body8.cleanup12_crit_edge, %for.inc.1.cleanup12_crit_edge, %mlxsw_get_cooling_device_idx.exit.cleanup12_crit_edge, %for.inc.4.i.cleanup12_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.4.i.cleanup12_crit_edge ], [ %call2, %mlxsw_get_cooling_device_idx.exit.cleanup12_crit_edge ], [ 0, %for.inc.1.cleanup12_crit_edge ], [ %call2.lcssa.ph, %for.body8.1 ], [ %call2.lcssa.ph, %for.body8.cleanup12_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_module_unbind(ptr noundef %tzdev, ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %5, %cdev
  br i1 %cmp1.i, label %entry.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.i

entry.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp1.1.i = icmp eq ptr %7, %cdev
  br i1 %cmp1.1.i, label %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.1.i

for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp1.2.i = icmp eq ptr %9, %cdev
  br i1 %cmp1.2.i, label %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp1.3.i = icmp eq ptr %11, %cdev
  br i1 %cmp1.3.i, label %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.mlxsw_thermal, ptr %3, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4.i, align 4
  %cmp1.4.i = icmp eq ptr %13, %cdev
  br i1 %cmp1.4.i, label %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %15) #15
  %call7.i = tail call ptr @strnstr(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %call.i) #10
  %tobool.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool.not.i, label %for.inc.4.i.cleanup_crit_edge, label %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge

for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mlxsw_get_cooling_device_idx.exit

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlxsw_get_cooling_device_idx.exit:                ; preds = %for.inc.4.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.3.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.2.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.1.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %for.inc.i.mlxsw_get_cooling_device_idx.exit_crit_edge, %entry.mlxsw_get_cooling_device_idx.exit_crit_edge
  %call2 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef 0, ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %mlxsw_get_cooling_device_idx.exit.if.end17_crit_edge, label %do.end, !prof !160

mlxsw_get_cooling_device_idx.exit.if.end17_crit_edge: ; preds = %mlxsw_get_cooling_device_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %mlxsw_get_cooling_device_idx.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 415, i32 noundef 9, ptr noundef null) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end, %mlxsw_get_cooling_device_idx.exit.if.end17_crit_edge
  %call2.1 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef 1, ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %if.end17.if.end17.1_crit_edge, label %do.end.1, !prof !160

if.end17.if.end17.1_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.1

do.end.1:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 415, i32 noundef 9, ptr noundef null) #10
  br label %if.end17.1

if.end17.1:                                       ; preds = %do.end.1, %if.end17.if.end17.1_crit_edge
  %call2.2 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %tzdev, i32 noundef 2, ptr noundef %cdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %if.end17.1.cleanup_crit_edge, label %do.end.2, !prof !160

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.2:                                         ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 415, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.2, %if.end17.1.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.4.i.cleanup_crit_edge ], [ %call2.2, %do.end.2 ], [ 0, %if.end17.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_module_temp_get(ptr noundef %tzdev, ptr nocapture noundef writeonly %p_temp) #0 align 64 {
entry:
  %mtmp_pl.i = alloca [32 x i8], align 1
  %temp = alloca i32, align 4
  %crit_temp = alloca i32, align 4
  %emerg_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crit_temp) #10
  %5 = ptrtoint ptr %crit_temp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %crit_temp, align 4, !annotation !159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %emerg_temp) #10
  %6 = ptrtoint ptr %emerg_temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %emerg_temp, align 4, !annotation !159
  %bus_info = getelementptr inbounds %struct.mlxsw_thermal, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  %module = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %module, align 4
  %13 = trunc i32 %12 to i16
  %conv = add i16 %13, 64
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl.i) #10
  %16 = call ptr @memset(ptr %mtmp_pl.i, i32 255, i32 32)
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl.i, i16 noundef zeroext %conv) #10
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %15, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_thermal_module_temp_and_thresholds_get.exit, label %mlxsw_thermal_module_temp_and_thresholds_get.exit.thread

mlxsw_thermal_module_temp_and_thresholds_get.exit.thread: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i) #10
  %17 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %p_temp, align 4
  br label %cleanup

mlxsw_thermal_module_temp_and_thresholds_get.exit: ; preds = %entry
  call fastcc void @mlxsw_reg_mtmp_unpack(ptr noundef nonnull %mtmp_pl.i, ptr noundef nonnull %temp, ptr noundef nonnull %crit_temp, ptr noundef nonnull %emerg_temp) #10
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %temp, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i) #10
  %19 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.pr, ptr %p_temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %mlxsw_thermal_module_temp_and_thresholds_get.exit.cleanup_crit_edge, label %if.end

mlxsw_thermal_module_temp_and_thresholds_get.exit.cleanup_crit_edge: ; preds = %mlxsw_thermal_module_temp_and_thresholds_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %mlxsw_thermal_module_temp_and_thresholds_get.exit
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %crit_temp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crit_temp, align 4
  %24 = ptrtoint ptr %emerg_temp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %emerg_temp, align 4
  %call = call fastcc i32 @mlxsw_thermal_module_trips_update(ptr noundef %10, ptr noundef %21, ptr noundef %1, i32 noundef %23, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp sgt i32 %27, 0
  br i1 %cmp, label %if.then5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  %temp1.i = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %temp1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temp1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp2.i = icmp sgt i32 %29, %27
  br i1 %cmp2.i, label %if.then5.if.then.i21_crit_edge, label %if.end.i22

if.then5.if.then.i21_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i21

if.then.i21:                                      ; preds = %if.end.1.i.if.then.i21_crit_edge, %if.end.i22.if.then.i21_crit_edge, %if.then5.if.then.i21_crit_edge
  %shift.036.lcssa.i = phi i32 [ 1, %if.then5.if.then.i21_crit_edge ], [ 256, %if.end.i22.if.then.i21_crit_edge ], [ 65536, %if.end.1.i.if.then.i21_crit_edge ]
  %.lcssa.i = phi i32 [ %29, %if.then5.if.then.i21_crit_edge ], [ %31, %if.end.i22.if.then.i21_crit_edge ], [ %33, %if.end.1.i.if.then.i21_crit_edge ]
  %sub.i = sub i32 %.lcssa.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp sgt i32 %sub.i, 0
  %div.pn.v.i = select i1 %cmp5.i, i32 2, i32 -2
  %div.pn.i = sdiv i32 %sub.i, %div.pn.v.i
  %add.pn.i = add i32 %div.pn.i, %27
  %cond.i = sdiv i32 %add.pn.i, %sub.i
  %mul.i = mul i32 %cond.i, %shift.036.lcssa.i
  br label %for.end.i

if.end.i22:                                       ; preds = %if.then5
  %temp1.1.i = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 1, i32 1
  %30 = ptrtoint ptr %temp1.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %temp1.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %27)
  %cmp2.1.i = icmp sgt i32 %31, %27
  br i1 %cmp2.1.i, label %if.end.i22.if.then.i21_crit_edge, label %if.end.1.i

if.end.i22.if.then.i21_crit_edge:                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i21

if.end.1.i:                                       ; preds = %if.end.i22
  %temp1.2.i = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 2, i32 1
  %32 = ptrtoint ptr %temp1.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %temp1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %27)
  %cmp2.2.i = icmp sgt i32 %33, %27
  br i1 %cmp2.2.i, label %if.end.1.i.if.then.i21_crit_edge, label %if.end.1.i.for.end.i_crit_edge

if.end.1.i.for.end.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.1.i.if.then.i21_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i21

for.end.i:                                        ; preds = %if.end.1.i.for.end.i_crit_edge, %if.then.i21
  %score.0.i = phi i32 [ %mul.i, %if.then.i21 ], [ -1, %if.end.1.i.for.end.i_crit_edge ]
  %tz_highest_score.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %3, i32 0, i32 11
  %34 = ptrtoint ptr %tz_highest_score.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tz_highest_score.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %score.0.i, i32 %35)
  %cmp14.i = icmp ugt i32 %score.0.i, %35
  br i1 %cmp14.i, label %if.then16.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %tz_highest_score.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %score.0.i, ptr %tz_highest_score.i, align 4
  %tz_highest_dev.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %3, i32 0, i32 12
  %37 = ptrtoint ptr %tz_highest_dev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tzdev, ptr %tz_highest_dev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %for.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlxsw_thermal_module_temp_and_thresholds_get.exit.cleanup_crit_edge, %mlxsw_thermal_module_temp_and_thresholds_get.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emerg_temp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crit_temp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_module_trip_type_get(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %p_type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %arrayidx = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 %trip
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %p_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_module_trip_temp_get(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %p_temp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %temp = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 %trip, i32 1
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp, align 4
  %4 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_module_trip_temp_set(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, i32 noundef %temp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %temp2 = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 %trip, i32 1
  %2 = ptrtoint ptr %temp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %temp, ptr %temp2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_module_trip_hyst_get(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %p_hyst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %hyst = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 %trip, i32 2
  %2 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hyst, align 4
  %4 = ptrtoint ptr %p_hyst to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p_hyst, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_module_trip_hyst_set(ptr nocapture noundef readonly %tzdev, i32 noundef %trip, i32 noundef %hyst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %hyst1 = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 %trip, i32 2
  %2 = ptrtoint ptr %hyst1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %hyst, ptr %hyst1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_thermal_module_trend_get(ptr noundef readonly %tzdev, i32 noundef %trip, ptr nocapture noundef writeonly %trend) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %trip)
  %cmp1 = icmp ugt i32 %trip, 2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tz_highest_dev = getelementptr inbounds %struct.mlxsw_thermal, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %tz_highest_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tz_highest_dev, align 4
  %cmp2 = icmp eq ptr %5, %tzdev
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %trend to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %trend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_thermal_gearbox_temp_get(ptr noundef %tzdev, ptr nocapture noundef writeonly %p_temp) #0 align 64 {
entry:
  %mtmp_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %tzdev, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl) #10
  %module = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 3
  %4 = call ptr @memset(ptr %mtmp_pl, i32 255, i32 32)
  %5 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %module, align 4
  %7 = trunc i32 %6 to i16
  %conv = add i16 %7, 256
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl, i16 noundef zeroext %conv)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_mtmp_unpack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

mlxsw_reg_mtmp_unpack.exit:                       ; preds = %entry
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mtmp_pl, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  %and4.i.i.i = and i32 %11, 65535
  %sext4.i = shl i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext4.i)
  %cmp.i = icmp sgt i32 %sext4.i, -65536
  %conv1.i = ashr exact i32 %sext4.i, 16
  %mul.i = mul nsw i32 %conv1.i, 125
  %sext5.i = mul i32 %and4.i.i.i, 8192000
  %conv8.i = ashr exact i32 %sext5.i, 16
  %cond.i = select i1 %cmp.i, i32 %mul.i, i32 %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp sgt i32 %cond.i, 0
  br i1 %cmp, label %if.then4, label %mlxsw_reg_mtmp_unpack.exit.if.end6_crit_edge

mlxsw_reg_mtmp_unpack.exit.if.end6_crit_edge:     ; preds = %mlxsw_reg_mtmp_unpack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %mlxsw_reg_mtmp_unpack.exit
  %temp1.i = getelementptr inbounds %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %temp1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cond.i)
  %cmp2.i = icmp sgt i32 %13, %cond.i
  br i1 %cmp2.i, label %if.then4.if.then.i_crit_edge, label %if.end.i

if.then4.if.then.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.1.i.if.then.i_crit_edge, %if.end.i.if.then.i_crit_edge, %if.then4.if.then.i_crit_edge
  %shift.036.lcssa.i = phi i32 [ 1, %if.then4.if.then.i_crit_edge ], [ 256, %if.end.i.if.then.i_crit_edge ], [ 65536, %if.end.1.i.if.then.i_crit_edge ]
  %.lcssa.i = phi i32 [ %13, %if.then4.if.then.i_crit_edge ], [ %15, %if.end.i.if.then.i_crit_edge ], [ %17, %if.end.1.i.if.then.i_crit_edge ]
  %sub.i = sub i32 %.lcssa.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp5.i = icmp sgt i32 %sub.i, 0
  %div.pn.v.i = select i1 %cmp5.i, i32 2, i32 -2
  %div.pn.i = sdiv i32 %sub.i, %div.pn.v.i
  %add.pn.i = add i32 %div.pn.i, %cond.i
  %cond.i17 = sdiv i32 %add.pn.i, %sub.i
  %mul.i18 = mul i32 %cond.i17, %shift.036.lcssa.i
  br label %for.end.i

if.end.i:                                         ; preds = %if.then4
  %temp1.1.i = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 1, i32 1
  %14 = ptrtoint ptr %temp1.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp1.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond.i)
  %cmp2.1.i = icmp sgt i32 %15, %cond.i
  br i1 %cmp2.1.i, label %if.end.i.if.then.i_crit_edge, label %if.end.1.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end.i
  %temp1.2.i = getelementptr %struct.mlxsw_thermal_module, ptr %1, i32 0, i32 2, i32 2, i32 1
  %16 = ptrtoint ptr %temp1.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %cond.i)
  %cmp2.2.i = icmp sgt i32 %17, %cond.i
  br i1 %cmp2.2.i, label %if.end.1.i.if.then.i_crit_edge, label %if.end.1.i.for.end.i_crit_edge

if.end.1.i.for.end.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.1.i.if.then.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.end.i:                                        ; preds = %if.end.1.i.for.end.i_crit_edge, %if.then.i
  %score.0.i = phi i32 [ %mul.i18, %if.then.i ], [ -1, %if.end.1.i.for.end.i_crit_edge ]
  %tz_highest_score.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %tz_highest_score.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tz_highest_score.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %score.0.i, i32 %19)
  %cmp14.i = icmp ugt i32 %score.0.i, %19
  br i1 %cmp14.i, label %if.then16.i, label %for.end.i.if.end6_crit_edge

for.end.i.if.end6_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %tz_highest_score.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %score.0.i, ptr %tz_highest_score.i, align 4
  %tz_highest_dev.i = getelementptr inbounds %struct.mlxsw_thermal, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %tz_highest_dev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tzdev, ptr %tz_highest_dev.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then16.i, %for.end.i.if.end6_crit_edge, %mlxsw_reg_mtmp_unpack.exit.if.end6_crit_edge
  %22 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond.i, ptr %p_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl) #10
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !57, !58, !59, !61, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !141, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 917, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlxsw_thermal_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlxsw_thermal_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 946, i32 43}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 951, i32 5}
!12 = !{ptr @mlxsw_thermal_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlxsw_thermal_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 966, i32 48}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 975, i32 3}
!18 = !{ptr @mlxsw_thermal_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlxsw_thermal_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @default_thermal_trips, !21, !"default_thermal_trips", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 49, i32 40}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9454, i32 1}
!24 = !{ptr @mlxsw_reg_mfcr, !23, !"mlxsw_reg_mfcr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__mlxsw_item_offset._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @__mlxsw_item_offset._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9471, i32 1}
!33 = distinct !{null, !32, !"mlxsw_reg_mfcr_pwm_frequency_item", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9479, i32 1}
!36 = distinct !{null, !35, !"mlxsw_reg_mfcr_tacho_active_item", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9487, i32 1}
!39 = distinct !{null, !38, !"mlxsw_reg_mfcr_pwm_active_item", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9580, i32 1}
!42 = distinct !{null, !41, !"mlxsw_reg_mfsl_tacho_item", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9592, i32 1}
!45 = distinct !{null, !44, !"mlxsw_reg_mfsl_tach_max_item", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9574, i32 1}
!48 = !{ptr @mlxsw_reg_mfsl, !47, !"mlxsw_reg_mfsl", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9586, i32 1}
!51 = distinct !{null, !50, !"mlxsw_reg_mfsl_tach_min_item", i1 false, i1 false}
!52 = !{ptr @mlxsw_cooling_ops, !53, !"mlxsw_cooling_ops", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 662, i32 48}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 625, i32 3}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mlxsw_thermal_get_cur_state._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mlxsw_thermal_get_cur_state._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 32, i32 2}
!61 = distinct !{null, !62, !"mlxsw_thermal_external_allowed_cdev", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 31, i32 21}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9520, i32 1}
!65 = distinct !{null, !64, !"mlxsw_reg_mfsc_pwm_item", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9527, i32 1}
!68 = distinct !{null, !67, !"mlxsw_reg_mfsc_pwm_duty_cycle_item", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9514, i32 1}
!71 = !{ptr @mlxsw_reg_mfsc, !70, !"mlxsw_reg_mfsc", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 656, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mlxsw_thermal_set_cur_state._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlxsw_thermal_set_cur_state._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mlxsw_thermal_ops, !78, !"mlxsw_thermal_ops", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 360, i32 39}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 236, i32 4}
!81 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mlxsw_thermal_bind._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mlxsw_thermal_bind._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 258, i32 4}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mlxsw_thermal_unbind._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mlxsw_thermal_unbind._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 278, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mlxsw_thermal_get_temp._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @mlxsw_thermal_get_temp._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9678, i32 1}
!96 = distinct !{null, !95, !"mlxsw_reg_mtmp_sensor_index_item", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9705, i32 1}
!99 = distinct !{null, !98, !"mlxsw_reg_mtmp_mte_item", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9711, i32 1}
!102 = distinct !{null, !101, !"mlxsw_reg_mtmp_mtr_item", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9742, i32 1}
!105 = distinct !{null, !104, !"mlxsw_reg_mtmp_temperature_threshold_hi_item", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9668, i32 1}
!108 = !{ptr @mlxsw_reg_mtmp, !107, !"mlxsw_reg_mtmp", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9699, i32 1}
!111 = distinct !{null, !110, !"mlxsw_reg_mtmp_temperature_item", i1 false, i1 false}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9718, i32 1}
!114 = distinct !{null, !113, !"mlxsw_reg_mtmp_max_temperature_item", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9692, i32 1}
!117 = distinct !{null, !116, !"mlxsw_reg_mtmp_max_operational_temperature_item", i1 false, i1 false}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9757, i32 1}
!120 = distinct !{null, !119, !"mlxsw_reg_mtmp_sensor_name_item", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11267, i32 1}
!123 = !{ptr @mlxsw_reg_mgpir, !122, !"mlxsw_reg_mgpir", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11289, i32 1}
!126 = distinct !{null, !125, !"mlxsw_reg_mgpir_num_of_devices_item", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11277, i32 1}
!129 = distinct !{null, !128, !"mlxsw_reg_mgpir_device_type_item", i1 false, i1 false}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11283, i32 1}
!132 = distinct !{null, !131, !"mlxsw_reg_mgpir_devices_per_flash_item", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11295, i32 1}
!135 = distinct !{null, !134, !"mlxsw_reg_mgpir_num_of_modules_item", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 167, i32 3}
!138 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mlxsw_thermal_module_trips_update._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @mlxsw_thermal_module_trips_update._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 674, i32 37}
!144 = !{ptr @mlxsw_thermal_module_ops, !145, !"mlxsw_thermal_module_ops", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 552, i32 39}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 804, i32 37}
!148 = !{ptr @mlxsw_thermal_gearbox_ops, !149, !"mlxsw_thermal_gearbox_ops", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_thermal.c", i32 589, i32 39}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"auto-init"}
!160 = !{!"branch_weights", i32 2000, i32 1}
