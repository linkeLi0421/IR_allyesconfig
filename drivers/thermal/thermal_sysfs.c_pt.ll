; ModuleID = '/llk/IR_all_yes/drivers/thermal/thermal_sysfs.c_pt.bc'
source_filename = "../drivers/thermal/thermal_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_attr = type { %struct.device_attribute, [20 x i8] }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.cooling_dev_stats = type { %struct.spinlock, i32, i32, i32, i64, ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@thermal_zone_attribute_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @thermal_zone_attribute_group, ptr @thermal_zone_mode_attribute_group], [24 x i8] zeroinitializer }, align 32
@cooling_device_attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @cooling_device_attr_group, ptr null, ptr null], [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@thermal_zone_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thermal_zone_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@thermal_zone_mode_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thermal_zone_mode_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@thermal_zone_dev_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @dev_attr_type, ptr @dev_attr_temp, ptr @dev_attr_emul_temp, ptr @dev_attr_policy, ptr @dev_attr_available_policies, ptr @dev_attr_sustainable_power, ptr @dev_attr_k_po, ptr @dev_attr_k_pu, ptr @dev_attr_k_i, ptr @dev_attr_k_d, ptr @dev_attr_integral_cutoff, ptr @dev_attr_slope, ptr @dev_attr_offset, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_emul_temp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @emul_temp_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_policy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @policy_show, ptr @policy_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_available_policies = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_policies_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sustainable_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sustainable_power_show, ptr @sustainable_power_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_k_po = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @k_po_show, ptr @k_po_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_k_pu = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @k_pu_show, ptr @k_pu_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_k_i = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @k_i_show, ptr @k_i_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_k_d = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @k_d_show, ptr @k_d_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_integral_cutoff = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @integral_cutoff_show, ptr @integral_cutoff_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_slope = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @slope_show, ptr @slope_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emul_temp\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"available_policies\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sustainable_power\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"k_po\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"k_pu\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"k_i\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"k_d\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"integral_cutoff\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slope\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@thermal_zone_mode_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_mode, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trip_point_%d_type\00", [45 x i8] zeroinitializer }, align 32
@create_trip_attrs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trip_point_%d_temp\00", [45 x i8] zeroinitializer }, align 32
@create_trip_attrs.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trip_point_%d_hyst\00", [45 x i8] zeroinitializer }, align 32
@create_trip_attrs.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"critical\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hot\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"passive\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@cooling_device_stats_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&stats->lock\00", [19 x i8] zeroinitializer }, align 32
@cooling_device_stats_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.31, ptr null, ptr null, ptr @cooling_device_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@cooling_device_stats_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_total_trans, ptr @dev_attr_time_in_state_ms, ptr @dev_attr_reset, ptr @dev_attr_trans_table, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_total_trans = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @total_trans_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_time_in_state_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @time_in_state_ms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trans_table = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @trans_table_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total_trans\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"time_in_state_ms\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"state%u\09%llu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trans_table\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" From  :    To\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"       : \00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state%2u  \00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state%2u:\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%8u \00", [27 x i8] zeroinitializer }, align 32
@trans_table_show.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trans_table_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014thermal_sys: Thermal transition table exceeds PAGE_SIZE. Disabling\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trans_table_show\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/thermal_sysfs.c\00", [32 x i8] zeroinitializer }, align 32
@trans_table_show._entry_ptr = internal global ptr @trans_table_show._entry, section ".printk_index", align 4
@cooling_device_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cooling_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cooling_device_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_cdev_type, ptr @dev_attr_max_state, ptr @dev_attr_cur_state, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_cdev_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cdev_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cur_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cur_state_show, ptr @cur_state_store }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_state\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cur_state\00", [22 x i8] zeroinitializer }, align 32
@cur_state_store.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@cur_state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.45, i32 614, ptr @.str.51, ptr @.str.52 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Setting cooling device state is deprecated\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cur_state_store\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cur_state_store._entry_ptr = internal global ptr @cur_state_store._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"thermal_zone_attribute_groups\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 397, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"cooling_device_attr_groups\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 648, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 884, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant [29 x i8] c"thermal_zone_attribute_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 384, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"thermal_zone_mode_attribute_group\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 393, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"thermal_zone_dev_attrs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 365, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"dev_attr_temp\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"dev_attr_emul_temp\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"dev_attr_policy\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"dev_attr_available_policies\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"dev_attr_sustainable_power\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"dev_attr_k_po\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"dev_attr_k_pu\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"dev_attr_k_i\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"dev_attr_k_d\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"dev_attr_integral_cutoff\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"dev_attr_slope\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"dev_attr_offset\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 355, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 31, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 356, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 276, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 357, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 227, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 358, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 359, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 286, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 341, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 342, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 343, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 344, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 345, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 346, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 347, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"thermal_zone_mode_attrs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 388, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 362, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 54, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 54, i32 52 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 457, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 459, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 468, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 470, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 487, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 489, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 97, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 99, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 101, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 105, i32 23 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 842, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [32 x i8] c"cooling_device_stats_attr_group\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 812, i32 37 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 814, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant [27 x i8] c"cooling_device_stats_attrs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 804, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"dev_attr_total_trans\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [26 x i8] c"dev_attr_time_in_state_ms\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [21 x i8] c"dev_attr_trans_table\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 799, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 800, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 724, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 801, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 802, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 763, i32 46 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 764, i32 46 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 768, i32 47 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 773, i32 46 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 779, i32 47 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 784, i32 48 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 793, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [26 x i8] c"cooling_device_attr_group\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 644, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant [21 x i8] c"cooling_device_attrs\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 637, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant [19 x i8] c"dev_attr_cdev_type\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 633, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"dev_attr_max_state\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"dev_attr_cur_state\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 634, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 589, i32 22 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 635, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [35 x i8] c"../drivers/thermal/thermal_sysfs.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 613, i32 2 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @cur_state_store._entry, ptr @cur_state_store._entry_ptr, ptr @trans_table_show._entry, ptr @trans_table_show._entry_ptr, ptr @thermal_zone_attribute_groups, ptr @cooling_device_attr_groups, ptr @.str, ptr @thermal_zone_attribute_group, ptr @thermal_zone_mode_attribute_group, ptr @thermal_zone_dev_attrs, ptr @dev_attr_type, ptr @dev_attr_temp, ptr @dev_attr_emul_temp, ptr @dev_attr_policy, ptr @dev_attr_available_policies, ptr @dev_attr_sustainable_power, ptr @dev_attr_k_po, ptr @dev_attr_k_pu, ptr @dev_attr_k_i, ptr @dev_attr_k_d, ptr @dev_attr_integral_cutoff, ptr @dev_attr_slope, ptr @dev_attr_offset, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @thermal_zone_mode_attrs, ptr @dev_attr_mode, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @create_trip_attrs.__key, ptr @.str.21, ptr @create_trip_attrs.__key.22, ptr @.str.23, ptr @create_trip_attrs.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @cooling_device_stats_setup.__key, ptr @.str.30, ptr @cooling_device_stats_attr_group, ptr @.str.31, ptr @cooling_device_stats_attrs, ptr @dev_attr_total_trans, ptr @dev_attr_time_in_state_ms, ptr @dev_attr_reset, ptr @dev_attr_trans_table, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @cooling_device_attr_group, ptr @cooling_device_attrs, ptr @dev_attr_cdev_type, ptr @dev_attr_max_state, ptr @dev_attr_cur_state, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_attribute_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_device_attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_mode_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_dev_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_emul_temp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_policies to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sustainable_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_k_po to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_k_pu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_k_i to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_k_d to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_integral_cutoff to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_slope to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_mode_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_trip_attrs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_trip_attrs.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_trip_attrs.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_device_stats_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_device_stats_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_device_stats_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_total_trans to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_time_in_state_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trans_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trans_table_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_device_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cooling_device_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cdev_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cur_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cur_state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_create_device_groups(ptr noundef %tz, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = load i64, ptr @thermal_zone_attribute_groups, align 8
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %call7.i.i.i, align 8
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 9
  %3 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %trips, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %for.body.preheader.if.end10_crit_edge, label %if.then3

for.body.preheader.if.end10_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %if.then3.if.then6_crit_edge, label %if.end.i

if.then3.if.then6_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.i:                                         ; preds = %if.then3
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 48) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !161

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %trip_type_attrs368.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 5
  %7 = ptrtoint ptr %trip_type_attrs368.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %trip_type_attrs368.i, align 8
  br label %if.then6

if.end7.i.i.i:                                    ; preds = %if.end.i
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #14
  %trip_type_attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 5
  %9 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i.i, ptr %trip_type_attrs.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.if.then6_crit_edge, label %if.end4.i

if.end7.i.i.i.if.then6_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end4.i:                                        ; preds = %if.end7.i.i.i
  %10 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trips, align 8
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 48) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit300.thread.i, label %if.end7.i.i298.i, !prof !161

kcalloc.exit300.thread.i:                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %trip_temp_attrs377.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 4
  %14 = ptrtoint ptr %trip_temp_attrs377.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %trip_temp_attrs377.i, align 4
  br label %if.then9.i

if.end7.i.i298.i:                                 ; preds = %if.end4.i
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i297.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #14
  %trip_temp_attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 4
  %16 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i297.i, ptr %trip_temp_attrs.i, align 4
  %tobool8.not.i = icmp eq ptr %call8.i.i297.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i298.i.if.then9.i_crit_edge, label %if.end11.i

if.end7.i.i298.i.if.then9.i_crit_edge:            ; preds = %if.end7.i.i298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i.i298.i.if.then9.i_crit_edge, %kcalloc.exit300.thread.i
  %17 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trip_type_attrs.i, align 8
  tail call void @kfree(ptr noundef %18) #10
  br label %if.then6

if.end11.i:                                       ; preds = %if.end7.i.i298.i
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %get_trip_hyst.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %get_trip_hyst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_trip_hyst.i, align 4
  %tobool12.not.i = icmp eq ptr %22, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then13.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then13.i:                                      ; preds = %if.end11.i
  %23 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trips, align 8
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 48) #10
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kcalloc.exit333.thread.i, label %if.end7.i.i331.i, !prof !161

kcalloc.exit333.thread.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %trip_hyst_attrs386.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 6
  %27 = ptrtoint ptr %trip_hyst_attrs386.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %trip_hyst_attrs386.i, align 4
  br label %if.then18.i

if.end7.i.i331.i:                                 ; preds = %if.then13.i
  %28 = extractvalue { i32, i1 } %25, 0
  %call8.i.i330.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #14
  %trip_hyst_attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 6
  %29 = ptrtoint ptr %trip_hyst_attrs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i330.i, ptr %trip_hyst_attrs.i, align 4
  %tobool17.not.i = icmp eq ptr %call8.i.i330.i, null
  br i1 %tobool17.not.i, label %if.end7.i.i331.i.if.then18.i_crit_edge, label %if.end7.i.i331.i.if.end22.i_crit_edge

if.end7.i.i331.i.if.end22.i_crit_edge:            ; preds = %if.end7.i.i331.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.end7.i.i331.i.if.then18.i_crit_edge:           ; preds = %if.end7.i.i331.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.end7.i.i331.i.if.then18.i_crit_edge, %kcalloc.exit333.thread.i
  %30 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trip_type_attrs.i, align 8
  tail call void @kfree(ptr noundef %31) #10
  %32 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trip_temp_attrs.i, align 4
  tail call void @kfree(ptr noundef %33) #10
  br label %if.then6

if.end22.i:                                       ; preds = %if.end7.i.i331.i.if.end22.i_crit_edge, %if.end11.i.if.end22.i_crit_edge
  %34 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %trips, align 8
  %mul.i = mul i32 %35, 3
  %add.i = add i32 %mul.i, 1
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #10
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end22.i.if.then26.i_crit_edge, label %if.end7.i.i364.i, !prof !161

if.end22.i.if.then26.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

if.end7.i.i364.i:                                 ; preds = %if.end22.i
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i363.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #14
  %tobool25.not.i = icmp eq ptr %call8.i.i363.i, null
  br i1 %tobool25.not.i, label %if.end7.i.i364.i.if.then26.i_crit_edge, label %for.cond.preheader.i

if.end7.i.i364.i.if.then26.i_crit_edge:           ; preds = %if.end7.i.i364.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i364.i
  %39 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %trips, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp37394.i = icmp sgt i32 %40, 0
  br i1 %cmp37394.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end7_crit_edge

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %trip_hyst_attrs119.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 6
  br label %for.body.i

if.then26.i:                                      ; preds = %if.end7.i.i364.i.if.then26.i_crit_edge, %if.end22.i.if.then26.i_crit_edge
  %41 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trip_type_attrs.i, align 8
  tail call void @kfree(ptr noundef %42) #10
  %43 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trip_temp_attrs.i, align 4
  tail call void @kfree(ptr noundef %44) #10
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %get_trip_hyst30.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %get_trip_hyst30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_trip_hyst30.i, align 4
  %tobool31.not.i = icmp eq ptr %48, null
  br i1 %tobool31.not.i, label %if.then26.i.if.then6_crit_edge, label %if.then32.i

if.then26.i.if.then6_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then32.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  %trip_hyst_attrs33.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 6
  %49 = ptrtoint ptr %trip_hyst_attrs33.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %trip_hyst_attrs33.i, align 4
  tail call void @kfree(ptr noundef %50) #10
  br label %if.then6

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indx.0395.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %trip_type_attrs.i, align 8
  %name.i = getelementptr %struct.thermal_attr, ptr %52, i32 %indx.0395.i, i32 1
  %call39.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 20, ptr noundef nonnull @.str.20, i32 noundef %indx.0395.i) #10
  %53 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trip_type_attrs.i, align 8
  %key.i = getelementptr %struct.thermal_attr, ptr %54, i32 %indx.0395.i, i32 0, i32 0, i32 3
  %55 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @create_trip_attrs.__key, ptr %key.i, align 4
  %56 = load ptr, ptr %trip_type_attrs.i, align 8
  %arrayidx44.i = getelementptr %struct.thermal_attr, ptr %56, i32 %indx.0395.i
  %name45.i = getelementptr %struct.thermal_attr, ptr %56, i32 %indx.0395.i, i32 1
  %57 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %name45.i, ptr %arrayidx44.i, align 4
  %58 = load ptr, ptr %trip_type_attrs.i, align 8
  %mode.i = getelementptr %struct.thermal_attr, ptr %58, i32 %indx.0395.i, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 292, ptr %mode.i, align 4
  %60 = load ptr, ptr %trip_type_attrs.i, align 8
  %show.i = getelementptr %struct.thermal_attr, ptr %60, i32 %indx.0395.i, i32 0, i32 1
  %61 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @trip_point_type_show, ptr %show.i, align 4
  %62 = load ptr, ptr %trip_type_attrs.i, align 8
  %arrayidx60.i = getelementptr %struct.thermal_attr, ptr %62, i32 %indx.0395.i
  %arrayidx63.i = getelementptr ptr, ptr %call8.i.i363.i, i32 %indx.0395.i
  %63 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx60.i, ptr %arrayidx63.i, align 4
  %64 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %trip_temp_attrs.i, align 4
  %name66.i = getelementptr %struct.thermal_attr, ptr %65, i32 %indx.0395.i, i32 1
  %call68.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name66.i, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %indx.0395.i) #10
  %66 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %trip_temp_attrs.i, align 4
  %key74.i = getelementptr %struct.thermal_attr, ptr %67, i32 %indx.0395.i, i32 0, i32 0, i32 3
  %68 = ptrtoint ptr %key74.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @create_trip_attrs.__key.22, ptr %key74.i, align 4
  %69 = load ptr, ptr %trip_temp_attrs.i, align 4
  %arrayidx78.i = getelementptr %struct.thermal_attr, ptr %69, i32 %indx.0395.i
  %name79.i = getelementptr %struct.thermal_attr, ptr %69, i32 %indx.0395.i, i32 1
  %70 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %name79.i, ptr %arrayidx78.i, align 4
  %71 = load ptr, ptr %trip_temp_attrs.i, align 4
  %mode90.i = getelementptr %struct.thermal_attr, ptr %71, i32 %indx.0395.i, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %mode90.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 292, ptr %mode90.i, align 4
  %73 = load ptr, ptr %trip_temp_attrs.i, align 4
  %show94.i = getelementptr %struct.thermal_attr, ptr %73, i32 %indx.0395.i, i32 0, i32 1
  %74 = ptrtoint ptr %show94.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @trip_point_temp_show, ptr %show94.i, align 4
  %shl.i = shl nuw i32 1, %indx.0395.i
  %and.i = and i32 %shl.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool95.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool95.not.i, label %for.body.i.if.end106.i_crit_edge, label %if.then96.i

for.body.i.if.end106.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

if.then96.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %trip_temp_attrs.i, align 4
  %mode101.i = getelementptr %struct.thermal_attr, ptr %76, i32 %indx.0395.i, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %mode101.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mode101.i, align 4
  %79 = or i16 %78, 128
  store i16 %79, ptr %mode101.i, align 4
  %80 = load ptr, ptr %trip_temp_attrs.i, align 4
  %store.i = getelementptr %struct.thermal_attr, ptr %80, i32 %indx.0395.i, i32 0, i32 2
  %81 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @trip_point_temp_store, ptr %store.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then96.i, %for.body.i.if.end106.i_crit_edge
  %82 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trip_temp_attrs.i, align 4
  %arrayidx108.i = getelementptr %struct.thermal_attr, ptr %83, i32 %indx.0395.i
  %84 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %trips, align 8
  %add112.i = add i32 %85, %indx.0395.i
  %arrayidx113.i = getelementptr ptr, ptr %call8.i.i363.i, i32 %add112.i
  %86 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx108.i, ptr %arrayidx113.i, align 4
  %87 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i, align 4
  %get_trip_hyst115.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %get_trip_hyst115.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_trip_hyst115.i, align 4
  %tobool116.not.i = icmp eq ptr %90, null
  br i1 %tobool116.not.i, label %if.end106.i.for.inc.i_crit_edge, label %if.end118.i

if.end106.i.for.inc.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end118.i:                                      ; preds = %if.end106.i
  %91 = ptrtoint ptr %trip_hyst_attrs119.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %name121.i = getelementptr %struct.thermal_attr, ptr %92, i32 %indx.0395.i, i32 1
  %call123.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name121.i, i32 noundef 20, ptr noundef nonnull @.str.23, i32 noundef %indx.0395.i) #10
  %93 = ptrtoint ptr %trip_hyst_attrs119.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %key129.i = getelementptr %struct.thermal_attr, ptr %94, i32 %indx.0395.i, i32 0, i32 0, i32 3
  %95 = ptrtoint ptr %key129.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @create_trip_attrs.__key.24, ptr %key129.i, align 4
  %96 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %arrayidx133.i = getelementptr %struct.thermal_attr, ptr %96, i32 %indx.0395.i
  %name134.i = getelementptr %struct.thermal_attr, ptr %96, i32 %indx.0395.i, i32 1
  %97 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %name134.i, ptr %arrayidx133.i, align 4
  %98 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %mode145.i = getelementptr %struct.thermal_attr, ptr %98, i32 %indx.0395.i, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %mode145.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 292, ptr %mode145.i, align 4
  %100 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %show149.i = getelementptr %struct.thermal_attr, ptr %100, i32 %indx.0395.i, i32 0, i32 1
  %101 = ptrtoint ptr %show149.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @trip_point_hyst_show, ptr %show149.i, align 4
  %102 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i, align 4
  %set_trip_hyst.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %103, i32 0, i32 9
  %104 = ptrtoint ptr %set_trip_hyst.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_trip_hyst.i, align 4
  %tobool151.not.i = icmp eq ptr %105, null
  br i1 %tobool151.not.i, label %if.end118.i.if.end165.i_crit_edge, label %if.then152.i

if.end118.i.if.end165.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165.i

if.then152.i:                                     ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %trip_hyst_attrs119.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %mode157.i = getelementptr %struct.thermal_attr, ptr %107, i32 %indx.0395.i, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %mode157.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %mode157.i, align 4
  %110 = or i16 %109, 128
  store i16 %110, ptr %mode157.i, align 4
  %111 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %store164.i = getelementptr %struct.thermal_attr, ptr %111, i32 %indx.0395.i, i32 0, i32 2
  %112 = ptrtoint ptr %store164.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @trip_point_hyst_store, ptr %store164.i, align 4
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then152.i, %if.end118.i.if.end165.i_crit_edge
  %113 = ptrtoint ptr %trip_hyst_attrs119.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %trip_hyst_attrs119.i, align 4
  %arrayidx167.i = getelementptr %struct.thermal_attr, ptr %114, i32 %indx.0395.i
  %115 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %trips, align 8
  %mul171.i = shl i32 %116, 1
  %add172.i = add i32 %mul171.i, %indx.0395.i
  %arrayidx173.i = getelementptr ptr, ptr %call8.i.i363.i, i32 %add172.i
  %117 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx167.i, ptr %arrayidx173.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end165.i, %if.end106.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %indx.0395.i, 1
  %118 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %trips, align 8
  %cmp37.i = icmp slt i32 %inc.i, %119
  br i1 %cmp37.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7_crit_edge

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then6:                                         ; preds = %if.then32.i, %if.then26.i.if.then6_crit_edge, %if.then18.i, %if.then9.i, %if.end7.i.i.i.if.then6_crit_edge, %kcalloc.exit.thread.i, %if.then3.if.then6_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %kcalloc.exit.thread.i ], [ -12, %if.then26.i.if.then6_crit_edge ], [ -12, %if.then32.i ], [ -12, %if.end7.i.i.i.if.then6_crit_edge ], [ -22, %if.then3.if.then6_crit_edge ], [ -12, %if.then9.i ], [ -12, %if.then18.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %for.cond.preheader.i.if.end7_crit_edge
  %.lcssa.i = phi i32 [ %40, %for.cond.preheader.i.if.end7_crit_edge ], [ %119, %for.inc.i.if.end7_crit_edge ]
  %mul175.i = mul i32 %.lcssa.i, 3
  %arrayidx176.i = getelementptr ptr, ptr %call8.i.i363.i, i32 %mul175.i
  %120 = ptrtoint ptr %arrayidx176.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %arrayidx176.i, align 4
  %attrs177.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %attrs177.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call8.i.i363.i, ptr %attrs177.i, align 4
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 3
  %arrayidx9 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %122 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %trips_attribute_group, ptr %arrayidx9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %for.body.preheader.if.end10_crit_edge
  %groups11 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2, i32 34
  %123 = ptrtoint ptr %groups11 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call7.i.i.i, ptr %groups11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then6 ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_zone_destroy_device_groups(ptr noundef readonly %tz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tz, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 9
  %0 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trips, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %trip_type_attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 5
  %2 = ptrtoint ptr %trip_type_attrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trip_type_attrs.i, align 8
  tail call void @kfree(ptr noundef %3) #10
  %trip_temp_attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 4
  %4 = ptrtoint ptr %trip_temp_attrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trip_temp_attrs.i, align 4
  tail call void @kfree(ptr noundef %5) #10
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %get_trip_hyst.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %get_trip_hyst.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_trip_hyst.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.destroy_trip_attrs.exit_crit_edge, label %if.then2.i

if.end.i.destroy_trip_attrs.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %destroy_trip_attrs.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %trip_hyst_attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 6
  %10 = ptrtoint ptr %trip_hyst_attrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trip_hyst_attrs.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  br label %destroy_trip_attrs.exit

destroy_trip_attrs.exit:                          ; preds = %if.then2.i, %if.end.i.destroy_trip_attrs.exit_crit_edge
  %attrs.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attrs.i, align 4
  tail call void @kfree(ptr noundef %13) #10
  br label %if.end3

if.end3:                                          ; preds = %destroy_trip_attrs.exit, %if.end.if.end3_crit_edge
  %groups = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2, i32 34
  %14 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %groups, align 8
  tail call void @kfree(ptr noundef %15) #10
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_cooling_device_stats_update(ptr nocapture noundef readonly %cdev, i32 noundef %new_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 5
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #10
  %state = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_state)
  %cmp = icmp eq i32 %3, %new_state
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.end3

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 @ktime_get() #10
  %last_time.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_time.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_time.i, align 8
  %sub.i = sub i64 %call.i, %5
  %time_in_state.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %time_in_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %time_in_state.i, align 8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %arrayidx.i = getelementptr i64, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i64 %sub.i, %11
  store i64 %add.i, ptr %arrayidx.i, align 8
  store i64 %call.i, ptr %last_time.i, align 8
  %trans_table = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans_table, align 4
  %14 = load i32, ptr %state, align 8
  %max_states = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_states, align 4
  %mul = mul i32 %16, %14
  %add = add i32 %mul, %new_state
  %arrayidx = getelementptr i32, ptr %13, i32 %add
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %arrayidx, align 4
  store i32 %new_state, ptr %state, align 8
  %total_trans = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %total_trans to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %total_trans, align 4
  %inc6 = add i32 %20, 1
  store i32 %inc6, ptr %total_trans, align 4
  br label %unlock

unlock:                                           ; preds = %if.end3, %if.end.unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_cooling_device_setup_sysfs(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  %states.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %states.i) #10
  %0 = ptrtoint ptr %states.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %states.i, align 4, !annotation !162
  %ops.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 %4(ptr noundef %cdev, ptr noundef nonnull %states.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cooling_device_stats_setup.exit_crit_edge

entry.cooling_device_stats_setup.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cooling_device_stats_setup.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %states.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %states.i, align 4
  %mul2.i = shl i32 %inc.i, 2
  %reass.add.i = add i32 %mul2.i, 8
  %reass.mul.i = mul i32 %reass.add.i, %inc.i
  %add3.i = add i32 %reass.mul.i, 72
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3520) #14
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.cooling_device_stats_setup.exit_crit_edge, label %if.end7.i

if.end.i.cooling_device_stats_setup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cooling_device_stats_setup.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.cooling_dev_stats, ptr %call9.i.i.i, i32 1
  %time_in_state.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %call9.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %time_in_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %time_in_state.i, align 64
  %8 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %states.i, align 4
  %add.ptr9.i = getelementptr i64, ptr %add.ptr.i, i32 %9
  %trans_table.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %call9.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %trans_table.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr9.i, ptr %trans_table.i, align 4
  %stats10.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 5
  %11 = ptrtoint ptr %stats10.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %stats10.i, align 8
  %call11.i = call i64 @ktime_get() #10
  %last_time.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %call9.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %last_time.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call11.i, ptr %last_time.i, align 8
  %13 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %states.i, align 4
  %max_states.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %call9.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %max_states.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_states.i, align 4
  call void @__raw_spin_lock_init(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @cooling_device_stats_setup.__key, i16 noundef signext 3) #10
  store ptr @cooling_device_stats_attr_group, ptr getelementptr inbounds ([3 x ptr], ptr @cooling_device_attr_groups, i32 0, i32 1), align 4
  br label %cooling_device_stats_setup.exit

cooling_device_stats_setup.exit:                  ; preds = %if.end7.i, %if.end.i.cooling_device_stats_setup.exit_crit_edge, %entry.cooling_device_stats_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %states.i) #10
  %groups = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 2, i32 34
  %16 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cooling_device_attr_groups, ptr %groups, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thermal_cooling_device_destroy_sysfs(ptr nocapture noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 5
  %0 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats.i, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %stats.i, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trip_point_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %trip = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trip, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @weight_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %weight = getelementptr i8, ptr %attr, i32 44
  %0 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %weight, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @weight_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %attr, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %weight = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %weight) #10
  %0 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %weight, align 4, !annotation !162
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %weight) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %weight, align 4
  %weight1 = getelementptr i8, ptr %attr, i32 44
  %3 = ptrtoint ptr %weight1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %weight1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %weight) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -20
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, ptr noundef %type)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temperature, align 4, !annotation !162
  %call = call i32 @thermal_zone_get_temp(ptr noundef %add.ptr, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temperature, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emul_temp_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temperature, align 4, !annotation !162
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr i8, ptr %dev, i32 1012
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %set_emul_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %set_emul_temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_emul_temp, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr i8, ptr %dev, i32 1088
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %5 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temperature, align 4
  %emul_temperature = getelementptr i8, ptr %dev, i32 992
  %7 = ptrtoint ptr %emul_temperature to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %emul_temperature, align 8
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %if.then9

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temperature, align 4
  %call6 = call i32 %4(ptr noundef %add.ptr, i32 noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end7.if.then9_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.end7.thread
  call void @thermal_zone_device_update(ptr noundef %add.ptr, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then9 ], [ %call6, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %governor = getelementptr i8, ptr %dev, i32 1020
  %0 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #10
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.6, ptr noundef %buf)
  %call2 = call i32 @thermal_zone_device_set_policy(ptr noundef %add.ptr, ptr noundef nonnull %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #10
  ret i32 %spec.select
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_set_policy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_policies_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @thermal_build_list_of_policies(ptr noundef %buf) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_build_list_of_policies(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sustainable_power_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sustainable_power = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sustainable_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sustainable_power, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sustainable_power_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %sustainable_power = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sustainable_power) #10
  %0 = ptrtoint ptr %sustainable_power to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sustainable_power, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %sustainable_power) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %sustainable_power to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sustainable_power, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %sustainable_power5 = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sustainable_power5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %sustainable_power5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sustainable_power) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_po_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %k_po = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %k_po to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k_po, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_po_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %k_po = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %k_po to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %k_po, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_pu_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %k_pu = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %k_pu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k_pu, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_pu_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %k_pu = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %k_pu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %k_pu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_i_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %k_i = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %k_i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k_i, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_i_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %k_i = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %k_i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %k_i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_d_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %k_d = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %k_d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k_d, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k_d_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %k_d = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %k_d to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %k_d, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integral_cutoff_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %integral_cutoff = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %integral_cutoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %integral_cutoff, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @integral_cutoff_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %integral_cutoff = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %integral_cutoff to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %integral_cutoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slope_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %slope = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %slope to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slope, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @slope_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %slope = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %slope to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %slope, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %0 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %offset = getelementptr inbounds %struct.thermal_zone_params, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !162
  %tzp = getelementptr i8, ptr %dev, i32 1016
  %1 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tzp, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tzp, align 8
  %offset = getelementptr inbounds %struct.thermal_zone_params, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ -5, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  %call = tail call i32 @thermal_zone_device_is_enabled(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.18, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @thermal_zone_device_enable(ptr noundef %add.ptr) #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(9) @.str.19, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else.if.end7.thread_crit_edge

if.else.if.end7.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.thread

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @thermal_zone_device_disable(ptr noundef %add.ptr) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then
  %result.0 = phi i32 [ %call5, %if.then4 ], [ %call1, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool8.not = icmp eq i32 %result.0, 0
  %spec.select = select i1 %tobool8.not, i32 %count, i32 %result.0
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %if.end7, %if.else.if.end7.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end7.thread_crit_edge ], [ %spec.select, %if.end7 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trip_point_type_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %type = alloca i32, align 4
  %trip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #10
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip) #10
  %1 = ptrtoint ptr %trip to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trip, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 1012
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %get_trip_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_trip_type, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull %trip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_trip_type5 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %get_trip_type5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_trip_type5, align 4
  %12 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trip, align 4
  %call6 = call i32 %11(ptr noundef %add.ptr, i32 noundef %13, ptr noundef nonnull %type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb11
    i32 1, label %sw.bb13
    i32 0, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %17 = call ptr @memcpy(ptr %buf, ptr @.str.25, i32 10)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %18 = call ptr @memcpy(ptr %buf, ptr @.str.26, i32 5)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %19 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 9)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 7017580640680086016, ptr %buf, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %21 = call ptr @memcpy(ptr %buf, ptr @.str.29, i32 9)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %sw.default ], [ 7, %sw.bb15 ], [ 8, %sw.bb13 ], [ 4, %sw.bb11 ], [ 9, %sw.bb ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trip_point_temp_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %trip = alloca i32, align 4
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip) #10
  %0 = ptrtoint ptr %trip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %temperature, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 1012
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_trip_temp, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull %trip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_trip_temp5 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_trip_temp5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_trip_temp5, align 4
  %12 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trip, align 4
  %call6 = call i32 %11(ptr noundef %add.ptr, i32 noundef %13, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temperature, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trip_point_temp_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %trip = alloca i32, align 4
  %temperature = alloca i32, align 4
  %hyst = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip) #10
  %0 = ptrtoint ptr %trip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %temperature, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hyst) #10
  %2 = ptrtoint ptr %hyst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hyst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #10
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %type, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 1012
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %set_trip_temp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_trip_temp, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %trip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %set_trip_temp9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %set_trip_temp9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_trip_temp9, align 4
  %14 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trip, align 4
  %16 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temperature, align 4
  %call10 = call i32 %13(ptr noundef %add.ptr, i32 noundef %15, i32 noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %get_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_trip_hyst, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %if.then16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then16:                                        ; preds = %if.end13
  %22 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trip, align 4
  %call19 = call i32 %21(ptr noundef %add.ptr, i32 noundef %23, ptr noundef nonnull %hyst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then16.if.end23_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %get_trip_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_trip_type, align 4
  %28 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %trip, align 4
  %call25 = call i32 %27(ptr noundef %add.ptr, i32 noundef %29, ptr noundef nonnull %type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 8
  %32 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %trip, align 4
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %36 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %temperature, align 4
  %38 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hyst, align 4
  %call29 = call i32 @thermal_notify_tz_trip_change(i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #10
  call void @thermal_zone_device_update(ptr noundef %add.ptr, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end28 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call19, %if.then16.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trip_point_hyst_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %trip = alloca i32, align 4
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip) #10
  %0 = ptrtoint ptr %trip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %temperature, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 1012
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %get_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_trip_hyst, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull %trip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_trip_hyst5 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %get_trip_hyst5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_trip_hyst5, align 4
  %12 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trip, align 4
  %call6 = call i32 %11(ptr noundef %add.ptr, i32 noundef %13, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.false, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temperature, align 4
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %cond.false ], [ %call6, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trip_point_hyst_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %trip = alloca i32, align 4
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip) #10
  %0 = ptrtoint ptr %trip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #10
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %temperature, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 1012
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %set_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %set_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_trip_hyst, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull %trip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temperature) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %set_trip_hyst9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %set_trip_hyst9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_trip_hyst9, align 4
  %12 = ptrtoint ptr %trip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trip, align 4
  %14 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temperature, align 4
  %call10 = call i32 %11(ptr noundef %add.ptr, i32 noundef %13, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void @thermal_zone_set_trips(ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %count, %if.then12 ], [ %call10, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_notify_tz_trip_change(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_set_trips(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @total_trans_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %total_trans = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %total_trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_trans, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %3)
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @time_in_state_ms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 8
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %call.i = tail call i64 @ktime_get() #10
  %last_time.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %last_time.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_time.i, align 8
  %sub.i = sub i64 %call.i, %3
  %time_in_state.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %time_in_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %time_in_state.i, align 8
  %state.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  %arrayidx.i = getelementptr i64, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %add.i = add i64 %sub.i, %9
  store i64 %add.i, ptr %arrayidx.i, align 8
  store i64 %call.i, ptr %last_time.i, align 8
  %max_states = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.not = icmp eq i32 %11, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.015 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %len.015
  %12 = ptrtoint ptr %time_in_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %time_in_state.i, align 8
  %arrayidx = getelementptr i64, ptr %13, i32 %i.016
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp8.i.i = icmp slt i64 %15, 0
  %16 = tail call i64 @llvm.abs.i64(i64 %15, i1 false) #10
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %16) #15, !srcloc !163
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %16, i64 %17, i32 0) #15, !srcloc !164
  %asmresult10.i.i.i = extractvalue { i64, i32 } %18, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.34, i32 noundef %i.016, i64 noundef %cond213.i.i)
  %add = add i32 %call3, %len.015
  %inc = add nuw i32 %i.016, 1
  %19 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_states, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 %len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 8
  %max_states = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_states, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %total_trans = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %total_trans to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %total_trans, align 4
  %call = tail call i64 @ktime_get() #10
  %last_time = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %last_time to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call, ptr %last_time, align 8
  %trans_table = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trans_table, align 4
  %mul = shl i32 %3, 2
  %mul2 = mul i32 %mul, %3
  %8 = call ptr @memset(ptr %7, i32 0, i32 %mul2)
  %9 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.not = icmp eq i32 %10, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %time_in_state = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %time_in_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %time_in_state, align 8
  %arrayidx = getelementptr i64, ptr %12, i32 %i.017
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %arrayidx, align 8
  %inc = add nuw i32 %i.017, 1
  %14 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_states, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trans_table_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 8
  %2 = call ptr @memcpy(ptr %buf, ptr @.str.37, i32 15)
  %add.ptr3 = getelementptr i8, ptr %buf, i32 15
  %3 = call ptr @memcpy(ptr %add.ptr3, ptr @.str.38, i32 10)
  %max_states = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp130 = icmp eq i32 %5, 0
  br i1 %cmp130, label %entry.if.end14_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0132 = phi i32 [ %inc, %if.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %len.0131 = phi i32 [ %add11, %if.end.if.end_crit_edge ], [ 24, %entry.if.end_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %len.0131
  %sub9 = sub nuw nsw i32 4096, %len.0131
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.39, i32 noundef %i.0132)
  %add11 = add i32 %call10, %len.0131
  %inc = add nuw i32 %i.0132, 1
  %6 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %7)
  %cmp = icmp uge i32 %inc, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add11)
  %cmp7 = icmp ugt i32 %add11, 4095
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %for.end, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.end:                                          ; preds = %if.end
  br i1 %cmp7, label %for.end.cleanup_crit_edge, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %for.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %len.0.lcssa152 = phi i32 [ %add11, %for.end.if.end14_crit_edge ], [ 24, %entry.if.end14_crit_edge ]
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %len.0.lcssa152
  %sub16 = sub nuw nsw i32 4096, %len.0.lcssa152
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.40)
  %add18 = add i32 %call17, %len.0.lcssa152
  %8 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21141 = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add18)
  %cmp23142 = icmp ugt i32 %add18, 4095
  %or.cond125143 = select i1 %cmp21141, i1 true, i1 %cmp23142
  br i1 %or.cond125143, label %if.end14.for.end55_crit_edge, label %if.end25.lr.ph

if.end14.for.end55_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end55

if.end25.lr.ph:                                   ; preds = %if.end14
  %trans_table = getelementptr inbounds %struct.cooling_dev_stats, ptr %1, i32 0, i32 6
  br label %if.end25

if.end25:                                         ; preds = %if.end48.if.end25_crit_edge, %if.end25.lr.ph
  %i.1145 = phi i32 [ 0, %if.end25.lr.ph ], [ %inc54, %if.end48.if.end25_crit_edge ]
  %len.1144 = phi i32 [ %add18, %if.end25.lr.ph ], [ %add52, %if.end48.if.end25_crit_edge ]
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %len.1144
  %sub27 = sub nuw nsw i32 4096, %len.1144
  %call28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.41, i32 noundef %i.1145)
  %add29 = add i32 %call28, %len.1144
  %10 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp32134 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add29)
  %cmp34135 = icmp ugt i32 %add29, 4095
  %or.cond126136 = select i1 %cmp32134, i1 true, i1 %cmp34135
  br i1 %or.cond126136, label %if.end25.for.end45_crit_edge, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  br label %if.end36

if.end25.for.end45_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

if.end36:                                         ; preds = %if.end36.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %12 = phi i32 [ %18, %if.end36.if.end36_crit_edge ], [ %11, %if.end25.if.end36_crit_edge ]
  %j.0138 = phi i32 [ %inc44, %if.end36.if.end36_crit_edge ], [ 0, %if.end25.if.end36_crit_edge ]
  %len.2137 = phi i32 [ %add42, %if.end36.if.end36_crit_edge ], [ %add29, %if.end25.if.end36_crit_edge ]
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %len.2137
  %sub38 = sub nuw nsw i32 4096, %len.2137
  %13 = ptrtoint ptr %trans_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans_table, align 4
  %mul = mul i32 %12, %i.1145
  %add40 = add i32 %mul, %j.0138
  %arrayidx = getelementptr i32, ptr %14, i32 %add40
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %call41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.42, i32 noundef %16)
  %add42 = add i32 %call41, %len.2137
  %inc44 = add nuw i32 %j.0138, 1
  %17 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc44, i32 %18)
  %cmp32 = icmp uge i32 %inc44, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add42)
  %cmp34 = icmp ugt i32 %add42, 4095
  %or.cond126 = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond126, label %if.end36.for.end45_crit_edge, label %if.end36.if.end36_crit_edge

if.end36.if.end36_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36.for.end45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

for.end45:                                        ; preds = %if.end36.for.end45_crit_edge, %if.end25.for.end45_crit_edge
  %len.2.lcssa = phi i32 [ %add29, %if.end25.for.end45_crit_edge ], [ %add42, %if.end36.for.end45_crit_edge ]
  %cmp34.lcssa = phi i1 [ %cmp34135, %if.end25.for.end45_crit_edge ], [ %cmp34, %if.end36.for.end45_crit_edge ]
  br i1 %cmp34.lcssa, label %for.end45.land.end_crit_edge, label %if.end48

for.end45.land.end_crit_edge:                     ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

if.end48:                                         ; preds = %for.end45
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %len.2.lcssa
  %sub50 = sub nuw nsw i32 4096, %len.2.lcssa
  %call51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.40)
  %add52 = add i32 %call51, %len.2.lcssa
  %inc54 = add nuw i32 %i.1145, 1
  %19 = ptrtoint ptr %max_states to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_states, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54, i32 %20)
  %cmp21 = icmp uge i32 %inc54, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add52)
  %cmp23 = icmp ugt i32 %add52, 4095
  %or.cond125 = select i1 %cmp21, i1 true, i1 %cmp23
  br i1 %or.cond125, label %if.end48.for.end55_crit_edge, label %if.end48.if.end25_crit_edge

if.end48.if.end25_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end48.for.end55_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end55

for.end55:                                        ; preds = %if.end48.for.end55_crit_edge, %if.end14.for.end55_crit_edge
  %len.1.lcssa = phi i32 [ %add18, %if.end14.for.end55_crit_edge ], [ %add52, %if.end48.for.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len.1.lcssa)
  %cmp56 = icmp ugt i32 %len.1.lcssa, 4095
  br i1 %cmp56, label %for.end55.land.end_crit_edge, label %for.end55.cleanup_crit_edge

for.end55.cleanup_crit_edge:                      ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end55.land.end_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.end:                                         ; preds = %for.end55.land.end_crit_edge, %for.end45.land.end_crit_edge
  %.b124 = load i1, ptr @trans_table_show.__already_done, align 1
  br i1 %.b124, label %land.end.cleanup_crit_edge, label %if.then62, !prof !165

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trans_table_show.__already_done, align 1
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %land.end.cleanup_crit_edge, %for.end55.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %for.end.cleanup_crit_edge ], [ -27, %if.then62 ], [ -27, %land.end.cleanup_crit_edge ], [ %len.1.lcssa, %for.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdev_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_state_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 940
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cur_state_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !162
  %ops = getelementptr i8, ptr %dev, i32 940
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %get_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %get_cur_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_cur_state, align 4
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cur_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !162
  %.b24 = load i1, ptr @cur_state_store.__print_once, align 1
  br i1 %.b24, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cur_state_store.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.49) #16
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry.do.end3_crit_edge
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.47, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end5, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6 = icmp slt i32 %2, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %lock = getelementptr i8, ptr %dev, i32 948
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %ops = getelementptr i8, ptr %dev, i32 940
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %set_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %set_cur_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_cur_state, align 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %call9 = call i32 %6(ptr noundef %add.ptr, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %stats1.i = getelementptr i8, ptr %dev, i32 936
  %11 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stats1.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then11.if.end12_crit_edge, label %if.end.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end.i:                                         ; preds = %if.then11
  call void @_raw_spin_lock(ptr noundef nonnull %12) #10
  %state.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp.i = icmp eq i32 %14, %10
  br i1 %cmp.i, label %if.end.i.unlock.i_crit_edge, label %if.end3.i

if.end.i.unlock.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i64 @ktime_get() #10
  %last_time.i.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %last_time.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %last_time.i.i, align 8
  %sub.i.i = sub i64 %call.i.i, %16
  %time_in_state.i.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %time_in_state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %time_in_state.i.i, align 8
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 8
  %arrayidx.i.i = getelementptr i64, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %22
  store i64 %add.i.i, ptr %arrayidx.i.i, align 8
  store i64 %call.i.i, ptr %last_time.i.i, align 8
  %trans_table.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %12, i32 0, i32 6
  %23 = ptrtoint ptr %trans_table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trans_table.i, align 4
  %25 = load i32, ptr %state.i, align 8
  %max_states.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %max_states.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_states.i, align 4
  %mul.i = mul i32 %27, %25
  %add.i = add i32 %mul.i, %10
  %arrayidx.i = getelementptr i32, ptr %24, i32 %add.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  store i32 %10, ptr %state.i, align 8
  %total_trans.i = getelementptr inbounds %struct.cooling_dev_stats, ptr %12, i32 0, i32 1
  %30 = ptrtoint ptr %total_trans.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_trans.i, align 4
  %inc6.i = add i32 %31, 1
  store i32 %inc6.i, ptr %total_trans.i, align 4
  br label %unlock.i

unlock.i:                                         ; preds = %if.end3.i, %if.end.i.unlock.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %12) #10
  br label %if.end12

if.end12:                                         ; preds = %unlock.i, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %count.call9 = phi i32 [ %count, %unlock.i ], [ %count, %if.then11.if.end12_crit_edge ], [ %call9, %if.end8.if.end12_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call9, %if.end12 ], [ -22, %do.end3.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !98, !100, !101, !103, !105, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !127, !128, !130, !132, !134, !136, !138, !139, !141, !143, !144, !146, !147, !148, !149, !150, !151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/thermal_sysfs.c", i32 884, i32 22}
!2 = !{ptr @thermal_zone_attribute_groups, !3, !"thermal_zone_attribute_groups", i1 false, i1 false}
!3 = !{!"../drivers/thermal/thermal_sysfs.c", i32 397, i32 38}
!4 = !{ptr @thermal_zone_attribute_group, !5, !"thermal_zone_attribute_group", i1 false, i1 false}
!5 = !{!"../drivers/thermal/thermal_sysfs.c", i32 384, i32 37}
!6 = !{ptr @thermal_zone_dev_attrs, !7, !"thermal_zone_dev_attrs", i1 false, i1 false}
!7 = !{!"../drivers/thermal/thermal_sysfs.c", i32 365, i32 26}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/thermal_sysfs.c", i32 355, i32 8}
!10 = !{ptr @dev_attr_type, !9, !"dev_attr_type", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/thermal/thermal_sysfs.c", i32 31, i32 22}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thermal/thermal_sysfs.c", i32 356, i32 8}
!15 = !{ptr @dev_attr_temp, !14, !"dev_attr_temp", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/thermal_sysfs.c", i32 276, i32 8}
!18 = !{ptr @dev_attr_emul_temp, !17, !"dev_attr_emul_temp", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/thermal_sysfs.c", i32 357, i32 8}
!21 = !{ptr @dev_attr_policy, !20, !"dev_attr_policy", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/thermal_sysfs.c", i32 227, i32 31}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/thermal_sysfs.c", i32 358, i32 8}
!26 = !{ptr @dev_attr_available_policies, !25, !"dev_attr_available_policies", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/thermal_sysfs.c", i32 359, i32 8}
!29 = !{ptr @dev_attr_sustainable_power, !28, !"dev_attr_sustainable_power", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thermal/thermal_sysfs.c", i32 286, i32 23}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thermal/thermal_sysfs.c", i32 341, i32 1}
!34 = !{ptr @dev_attr_k_po, !33, !"dev_attr_k_po", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/thermal_sysfs.c", i32 342, i32 1}
!37 = !{ptr @dev_attr_k_pu, !36, !"dev_attr_k_pu", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thermal/thermal_sysfs.c", i32 343, i32 1}
!40 = !{ptr @dev_attr_k_i, !39, !"dev_attr_k_i", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thermal/thermal_sysfs.c", i32 344, i32 1}
!43 = !{ptr @dev_attr_k_d, !42, !"dev_attr_k_d", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/thermal/thermal_sysfs.c", i32 345, i32 1}
!46 = !{ptr @dev_attr_integral_cutoff, !45, !"dev_attr_integral_cutoff", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thermal/thermal_sysfs.c", i32 346, i32 1}
!49 = !{ptr @dev_attr_slope, !48, !"dev_attr_slope", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thermal/thermal_sysfs.c", i32 347, i32 1}
!52 = !{ptr @dev_attr_offset, !51, !"dev_attr_offset", i1 false, i1 false}
!53 = !{ptr @thermal_zone_mode_attribute_group, !54, !"thermal_zone_mode_attribute_group", i1 false, i1 false}
!54 = !{!"../drivers/thermal/thermal_sysfs.c", i32 393, i32 37}
!55 = !{ptr @thermal_zone_mode_attrs, !56, !"thermal_zone_mode_attrs", i1 false, i1 false}
!56 = !{!"../drivers/thermal/thermal_sysfs.c", i32 388, i32 26}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thermal/thermal_sysfs.c", i32 362, i32 8}
!59 = !{ptr @dev_attr_mode, !58, !"dev_attr_mode", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thermal/thermal_sysfs.c", i32 54, i32 40}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/thermal_sysfs.c", i32 54, i32 52}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thermal/thermal_sysfs.c", i32 457, i32 5}
!66 = !{ptr @create_trip_attrs.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/thermal/thermal_sysfs.c", i32 459, i32 3}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thermal/thermal_sysfs.c", i32 468, i32 5}
!70 = !{ptr @create_trip_attrs.__key.22, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/thermal/thermal_sysfs.c", i32 470, i32 3}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/thermal/thermal_sysfs.c", i32 487, i32 5}
!74 = !{ptr @create_trip_attrs.__key.24, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/thermal/thermal_sysfs.c", i32 489, i32 3}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/thermal/thermal_sysfs.c", i32 97, i32 23}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thermal/thermal_sysfs.c", i32 99, i32 23}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/thermal/thermal_sysfs.c", i32 101, i32 23}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/thermal/thermal_sysfs.c", i32 103, i32 23}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/thermal/thermal_sysfs.c", i32 105, i32 23}
!86 = !{ptr @cooling_device_stats_setup.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/thermal/thermal_sysfs.c", i32 842, i32 2}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/thermal/thermal_sysfs.c", i32 814, i32 10}
!91 = !{ptr @cooling_device_stats_attr_group, !92, !"cooling_device_stats_attr_group", i1 false, i1 false}
!92 = !{!"../drivers/thermal/thermal_sysfs.c", i32 812, i32 37}
!93 = !{ptr @cooling_device_stats_attrs, !94, !"cooling_device_stats_attrs", i1 false, i1 false}
!94 = !{!"../drivers/thermal/thermal_sysfs.c", i32 804, i32 26}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/thermal/thermal_sysfs.c", i32 799, i32 8}
!97 = !{ptr @dev_attr_total_trans, !96, !"dev_attr_total_trans", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/thermal/thermal_sysfs.c", i32 800, i32 8}
!100 = !{ptr @dev_attr_time_in_state_ms, !99, !"dev_attr_time_in_state_ms", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/thermal/thermal_sysfs.c", i32 724, i32 29}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/thermal/thermal_sysfs.c", i32 801, i32 8}
!105 = !{ptr @dev_attr_reset, !104, !"dev_attr_reset", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/thermal/thermal_sysfs.c", i32 802, i32 8}
!108 = !{ptr @dev_attr_trans_table, !107, !"dev_attr_trans_table", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/thermal/thermal_sysfs.c", i32 763, i32 46}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/thermal/thermal_sysfs.c", i32 764, i32 46}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/thermal/thermal_sysfs.c", i32 768, i32 47}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/thermal/thermal_sysfs.c", i32 773, i32 46}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/thermal/thermal_sysfs.c", i32 779, i32 47}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/thermal/thermal_sysfs.c", i32 784, i32 48}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../drivers/thermal/thermal_sysfs.c", i32 793, i32 3}
!123 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @trans_table_show._entry, !122, !"_entry", i1 false, i1 false}
!127 = !{ptr @trans_table_show._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @cooling_device_attr_groups, !129, !"cooling_device_attr_groups", i1 false, i1 false}
!129 = !{!"../drivers/thermal/thermal_sysfs.c", i32 648, i32 38}
!130 = !{ptr @cooling_device_attr_group, !131, !"cooling_device_attr_group", i1 false, i1 false}
!131 = !{!"../drivers/thermal/thermal_sysfs.c", i32 644, i32 37}
!132 = !{ptr @cooling_device_attrs, !133, !"cooling_device_attrs", i1 false, i1 false}
!133 = !{!"../drivers/thermal/thermal_sysfs.c", i32 637, i32 26}
!134 = !{ptr @dev_attr_cdev_type, !135, !"dev_attr_cdev_type", i1 false, i1 false}
!135 = !{!"../drivers/thermal/thermal_sysfs.c", i32 633, i32 1}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/thermal/thermal_sysfs.c", i32 634, i32 8}
!138 = !{ptr @dev_attr_max_state, !137, !"dev_attr_max_state", i1 false, i1 false}
!139 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/thermal/thermal_sysfs.c", i32 589, i32 22}
!141 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/thermal/thermal_sysfs.c", i32 635, i32 8}
!143 = !{ptr @dev_attr_cur_state, !142, !"dev_attr_cur_state", i1 false, i1 false}
!144 = distinct !{null, !145, !"__print_once", i1 false, i1 false}
!145 = !{!"../drivers/thermal/thermal_sysfs.c", i32 613, i32 2}
!146 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @cur_state_store._entry, !145, !"_entry", i1 false, i1 false}
!151 = !{ptr @cur_state_store._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{!"branch_weights", i32 1, i32 2000}
!162 = !{!"auto-init"}
!163 = !{i64 877843, i64 877870}
!164 = !{i64 878538, i64 878565, i64 878598, i64 878619, i64 878646, i64 878672}
!165 = !{!"branch_weights", i32 2000, i32 1}
