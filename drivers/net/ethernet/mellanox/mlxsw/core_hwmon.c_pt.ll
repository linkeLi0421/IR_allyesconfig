; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_hwmon = type { ptr, ptr, ptr, %struct.attribute_group, [2 x ptr], [784 x ptr], [783 x %struct.mlxsw_hwmon_attr], i32, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_hwmon_attr = type { %struct.device_attribute, ptr, i32, [32 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mlxsw\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_mtcap = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28663, i16 8, ptr @.str.9 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get number of temp sensors\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxsw_hwmon_temp_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_init._entry_ptr = internal global ptr @mlxsw_hwmon_temp_init._entry, section ".printk_index", align 4
@mlxsw_reg_mtmp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28662, i16 32, ptr @.str.17 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to setup temp sensor number %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_init._entry_ptr.8 = internal global ptr @mlxsw_hwmon_temp_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mtcap\00", [26 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 35, ptr null, ptr null }, align 1
@.str.10 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_mtcap_sensor_count\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mtmp_sensor_index\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtmp\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mtmp_mte\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mtmp_mtr\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_input\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp%u_highest\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp%u_reset_history\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan%u_input\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan%u_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm%u\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp%u_crit\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp%u_emergency\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%u_label\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"temp%u_crit_alarm\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp%u_emergency_alarm\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_attr_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlxsw_hwmon_temp_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 72, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to query temp sensor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxsw_hwmon_temp_show\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_show._entry_ptr = internal global ptr @mlxsw_hwmon_temp_show._entry, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reg_mtmp_temperature_threshold_hi\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_mtmp_temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_mtmp_max_temperature\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_max_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.46, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlxsw_hwmon_temp_max_show\00", [38 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_max_show._entry_ptr = internal global ptr @mlxsw_hwmon_temp_max_show._entry, section ".printk_index", align 4
@mlxsw_hwmon_temp_rst_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to reset temp sensor history\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlxsw_hwmon_temp_rst_store\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_temp_rst_store._entry_ptr = internal global ptr @mlxsw_hwmon_temp_rst_store._entry, section ".printk_index", align 4
@mlxsw_reg_mfsm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28669, i16 8, ptr @.str.54 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_fan_rpm_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to query fan\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_hwmon_fan_rpm_show\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_fan_rpm_show._entry_ptr = internal global ptr @mlxsw_hwmon_fan_rpm_show._entry, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_mfsm_tacho\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfsm\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mfsm_rpm\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_reg_fore = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28665, i16 12, ptr @.str.58 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_fan_fault_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.57, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlxsw_hwmon_fan_fault_show\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_fan_fault_show._entry_ptr = internal global ptr @mlxsw_hwmon_fan_fault_show._entry, section ".printk_index", align 4
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fore\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_fore_fan_under_limit\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_reg_mfsc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28670, i16 8, ptr @.str.67 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_pwm_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to query PWM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlxsw_hwmon_pwm_show\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_pwm_show._entry_ptr = internal global ptr @mlxsw_hwmon_pwm_show._entry, section ".printk_index", align 4
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_mfsc_pwm\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_mfsc_pwm_duty_cycle\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfsc\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_pwm_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to write PWM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxsw_hwmon_pwm_store\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_pwm_store._entry_ptr = internal global ptr @mlxsw_hwmon_pwm_store._entry, section ".printk_index", align 4
@mlxsw_hwmon_module_temp_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to query module temperature\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlxsw_hwmon_module_temp_get\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_module_temp_get._entry_ptr = internal global ptr @mlxsw_hwmon_module_temp_get._entry, section ".printk_index", align 4
@mlxsw_reg_mtbr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28657, i16 204, ptr @.str.78 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_module_temp_fault_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to query module temperature sensor\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlxsw_hwmon_module_temp_fault_show\00", [61 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_module_temp_fault_show._entry_ptr = internal global ptr @mlxsw_hwmon_module_temp_fault_show._entry, section ".printk_index", align 4
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_mtbr_base_sensor_index\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_mtbr_num_rec\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtbr\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_mtbr_rec_temp\00", [46 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_module_temp_critical_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to query module temperature thresholds\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlxsw_hwmon_module_temp_critical_get\00", [59 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_module_temp_critical_get._entry_ptr = internal global ptr @mlxsw_hwmon_module_temp_critical_get._entry, section ".printk_index", align 4
@mlxsw_hwmon_module_temp_emergency_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.85, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlxsw_hwmon_module_temp_emergency_get\00", [58 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_module_temp_emergency_get._entry_ptr = internal global ptr @mlxsw_hwmon_module_temp_emergency_get._entry, section ".printk_index", align 4
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"front panel %03u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gearbox %03u\0A\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_reg_mfcr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28671, i16 8, ptr @.str.90 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_fans_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get to probe PWMs and Tachometers\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlxsw_hwmon_fans_init\00", [42 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_fans_init._entry_ptr = internal global ptr @mlxsw_hwmon_fans_init._entry, section ".printk_index", align 4
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mfcr\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_mfcr_pwm_frequency\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mfcr_tacho_active\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_mfcr_pwm_active\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_mgpir = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -28416, i16 160, ptr @.str.97 }, [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mgpir\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_mgpir_num_of_devices\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_mgpir_device_type\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_mgpir_num_of_modules\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_gearbox_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.106, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_hwmon_gearbox_init\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_hwmon_gearbox_init._entry_ptr = internal global ptr @mlxsw_hwmon_gearbox_init._entry, section ".printk_index", align 4
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 786, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mtcap\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 584, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mtmp\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 601, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9650, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 33, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9657, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9678, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9668, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9705, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9711, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 475, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 481, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 487, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 493, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 499, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 506, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 519, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 526, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 533, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 540, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 554, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 561, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 570, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 72, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 76, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9742, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9699, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9718, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 95, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 131, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mfsm\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 150, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 153, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9551, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9545, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9557, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_fore\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 169, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9621, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9629, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mfsc\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 190, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9520, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9527, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9514, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 217, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 239, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mtbr\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 277, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9834, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9843, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9827, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9858, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 316, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 350, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 379, i32 22 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 394, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_mfcr\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 627, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9454, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9471, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9479, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 9487, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_mgpir\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 11267, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 11289, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 11277, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 11295, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.408 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 731, i32 4 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_hwmon_fan_fault_show._entry, ptr @mlxsw_hwmon_fan_fault_show._entry_ptr, ptr @mlxsw_hwmon_fan_rpm_show._entry, ptr @mlxsw_hwmon_fan_rpm_show._entry_ptr, ptr @mlxsw_hwmon_fans_init._entry, ptr @mlxsw_hwmon_fans_init._entry_ptr, ptr @mlxsw_hwmon_gearbox_init._entry, ptr @mlxsw_hwmon_gearbox_init._entry_ptr, ptr @mlxsw_hwmon_module_temp_critical_get._entry, ptr @mlxsw_hwmon_module_temp_critical_get._entry_ptr, ptr @mlxsw_hwmon_module_temp_emergency_get._entry, ptr @mlxsw_hwmon_module_temp_emergency_get._entry_ptr, ptr @mlxsw_hwmon_module_temp_fault_show._entry, ptr @mlxsw_hwmon_module_temp_fault_show._entry_ptr, ptr @mlxsw_hwmon_module_temp_get._entry, ptr @mlxsw_hwmon_module_temp_get._entry_ptr, ptr @mlxsw_hwmon_pwm_show._entry, ptr @mlxsw_hwmon_pwm_show._entry_ptr, ptr @mlxsw_hwmon_pwm_store._entry, ptr @mlxsw_hwmon_pwm_store._entry_ptr, ptr @mlxsw_hwmon_temp_init._entry, ptr @mlxsw_hwmon_temp_init._entry.6, ptr @mlxsw_hwmon_temp_init._entry_ptr, ptr @mlxsw_hwmon_temp_init._entry_ptr.8, ptr @mlxsw_hwmon_temp_max_show._entry, ptr @mlxsw_hwmon_temp_max_show._entry_ptr, ptr @mlxsw_hwmon_temp_rst_store._entry, ptr @mlxsw_hwmon_temp_rst_store._entry_ptr, ptr @mlxsw_hwmon_temp_show._entry, ptr @mlxsw_hwmon_temp_show._entry_ptr, ptr @.str, ptr @mlxsw_reg_mtcap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mlxsw_reg_mtmp, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mlxsw_hwmon_attr_add.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @mlxsw_reg_mfsm, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @mlxsw_reg_fore, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @mlxsw_reg_mfsc, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @mlxsw_reg_mtbr, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @mlxsw_reg_mfcr, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @mlxsw_reg_mgpir, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.104, ptr @.str.106], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtcap to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_temp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtmp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_temp_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_attr_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_temp_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_temp_max_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_temp_rst_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mfsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_fan_rpm_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_fore to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_fan_fault_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mfsc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_pwm_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_pwm_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_module_temp_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mtbr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_module_temp_fault_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_module_temp_critical_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_module_temp_emergency_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mfcr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_fans_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_mgpir to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_hwmon_gearbox_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_hwmon_init(ptr noundef %mlxsw_core, ptr noundef %mlxsw_bus_info, ptr nocapture noundef writeonly %p_hwmon) local_unnamed_addr #0 align 64 {
entry:
  %mgpir_pl.i82 = alloca [160 x i8], align 4
  %mtmp_pl.i83 = alloca [32 x i8], align 1
  %mgpir_pl.i = alloca [160 x i8], align 1
  %mfcr_pl.i = alloca [8 x i8], align 8
  %mtcap_pl.i = alloca [8 x i8], align 8
  %mtmp_pl.i = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 56428, i32 noundef 3520, i32 noundef 4) #11
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mlxsw_core, ptr %call1.i.i.i, align 4096
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %bus_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mlxsw_bus_info, ptr %bus_info, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mtcap_pl.i) #8
  %2 = ptrtoint ptr %mtcap_pl.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %mtcap_pl.i, align 8
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %mlxsw_core, ptr noundef nonnull @mlxsw_reg_mtcap, ptr noundef nonnull %mtcap_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_reg_mtcap_sensor_count_get.exit.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus_info, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #12
  br label %mlxsw_hwmon_temp_init.exit

mlxsw_reg_mtcap_sensor_count_get.exit.i:          ; preds = %if.end
  %7 = ptrtoint ptr %mtcap_pl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtcap_pl.i, align 8
  %and4.i.i.i = and i32 %8, 127
  %conv.i = trunc i32 %and4.i.i.i to i8
  %sensor_count.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %sensor_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp165.not.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %cmp165.not.i, label %mlxsw_reg_mtcap_sensor_count_get.exit.i.if.end4_crit_edge, label %for.body.lr.ph.i

mlxsw_reg_mtcap_sensor_count_get.exit.i.if.end4_crit_edge: ; preds = %mlxsw_reg_mtcap_sensor_count_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %mlxsw_reg_mtcap_sensor_count_get.exit.i
  %attrs_count.i.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 7
  %arrayidx.i.i97.i = getelementptr inbounds i32, ptr %mtmp_pl.i, i32 2
  %arrayidx.i.i125.i = getelementptr inbounds i32, ptr %mtmp_pl.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0166.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl.i) #8
  %10 = call ptr @memset(ptr %mtmp_pl.i, i32 0, i32 32)
  %and6.i.i.i = and i32 %i.0166.i, 4095
  %11 = ptrtoint ptr %mtmp_pl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtmp_pl.i, align 4
  %and7.i.i.i = and i32 %12, -4096
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %mtmp_pl.i, align 4
  %13 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call1.i.i.i, align 4096
  %call9.i = call i32 @mlxsw_reg_query(ptr noundef %14, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %mlxsw_reg_mtmp_mte_set.exit.i, label %for.body.i.cleanup.thread.i_crit_edge

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

mlxsw_reg_mtmp_mte_set.exit.i:                    ; preds = %for.body.i
  %15 = ptrtoint ptr %arrayidx.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i97.i, align 4
  %or.i.i128.i = or i32 %16, -1073741824
  %17 = ptrtoint ptr %arrayidx.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i.i128.i, ptr %arrayidx.i.i125.i, align 4
  %18 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1.i.i.i, align 4096
  %call17.i = call i32 @mlxsw_reg_write(ptr noundef %19, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %for.inc.i, label %do.end22.i

do.end22.i:                                       ; preds = %mlxsw_reg_mtmp_mte_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_info, align 4
  %dev24.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev24.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef %i.0166.i) #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end22.i, %for.body.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ %call17.i, %do.end22.i ], [ %call9.i, %for.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i) #8
  br label %mlxsw_hwmon_temp_init.exit

for.inc.i:                                        ; preds = %mlxsw_reg_mtmp_mte_set.exit.i
  %24 = ptrtoint ptr %attrs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attrs_count.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %25
  %show.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mlxsw_hwmon_temp_show, ptr %show.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 292, ptr %mode.i.i, align 4
  %name.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %25, i32 3
  %add.i.i = add nuw nsw i32 %i.0166.i, 1
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %add.i.i) #8
  %type_index147.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %25, i32 2
  %28 = ptrtoint ptr %type_index147.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.0166.i, ptr %type_index147.i.i, align 4
  %hwmon.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %25, i32 1
  %29 = ptrtoint ptr %hwmon.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call1.i.i.i, ptr %hwmon.i.i, align 4
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %name.i.i, ptr %arrayidx.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i.i, align 4
  %arrayidx160.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %25
  %32 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i.i, ptr %arrayidx160.i.i, align 4
  %33 = ptrtoint ptr %attrs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attrs_count.i.i, align 4
  %inc.i.i = add i32 %34, 1
  store i32 %inc.i.i, ptr %attrs_count.i.i, align 4
  %arrayidx.i130.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i
  %show4.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i130.i, i32 0, i32 1
  %35 = ptrtoint ptr %show4.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mlxsw_hwmon_temp_max_show, ptr %show4.i.i, align 4
  %mode7.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i130.i, i32 0, i32 1
  %36 = ptrtoint ptr %mode7.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 292, ptr %mode7.i.i, align 4
  %name8.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i, i32 3
  %call11.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name8.i.i, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %add.i.i) #8
  %type_index147.i131.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i, i32 2
  %37 = ptrtoint ptr %type_index147.i131.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.0166.i, ptr %type_index147.i131.i, align 4
  %hwmon.i132.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i, i32 1
  %38 = ptrtoint ptr %hwmon.i132.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i.i.i, ptr %hwmon.i132.i, align 4
  %39 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %name8.i.i, ptr %arrayidx.i130.i, align 4
  %key.i134.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i130.i, i32 0, i32 3
  %40 = ptrtoint ptr %key.i134.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i134.i, align 4
  %arrayidx160.i135.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i.i
  %41 = ptrtoint ptr %arrayidx160.i135.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.i130.i, ptr %arrayidx160.i135.i, align 4
  %42 = ptrtoint ptr %attrs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attrs_count.i.i, align 4
  %inc.i136.i = add i32 %43, 1
  store i32 %inc.i136.i, ptr %attrs_count.i.i, align 4
  %arrayidx.i138.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i136.i
  %store.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i138.i, i32 0, i32 2
  %44 = ptrtoint ptr %store.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mlxsw_hwmon_temp_rst_store, ptr %store.i.i, align 4
  %mode16.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i138.i, i32 0, i32 1
  %45 = ptrtoint ptr %mode16.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 128, ptr %mode16.i.i, align 4
  %name17.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i136.i, i32 3
  %call20.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name17.i.i, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %add.i.i) #8
  %type_index147.i139.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i136.i, i32 2
  %46 = ptrtoint ptr %type_index147.i139.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0166.i, ptr %type_index147.i139.i, align 4
  %hwmon.i140.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i136.i, i32 1
  %47 = ptrtoint ptr %hwmon.i140.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call1.i.i.i, ptr %hwmon.i140.i, align 4
  %48 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %name17.i.i, ptr %arrayidx.i138.i, align 4
  %key.i142.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i138.i, i32 0, i32 3
  %49 = ptrtoint ptr %key.i142.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i142.i, align 4
  %arrayidx160.i143.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i136.i
  %50 = ptrtoint ptr %arrayidx160.i143.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx.i138.i, ptr %arrayidx160.i143.i, align 4
  %51 = ptrtoint ptr %attrs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %attrs_count.i.i, align 4
  %inc.i144.i = add i32 %52, 1
  store i32 %inc.i144.i, ptr %attrs_count.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i) #8
  %53 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sensor_count.i, align 8
  %conv4.i = zext i8 %54 to i32
  %cmp.i = icmp ult i32 %add.i.i, %conv4.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end4_crit_edge

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mlxsw_hwmon_temp_init.exit:                       ; preds = %cleanup.thread.i, %do.end.i
  %retval.2.i = phi i32 [ %call.i, %do.end.i ], [ %retval.1.ph.i, %cleanup.thread.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mtcap_pl.i) #8
  br label %err_temp_init

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %mlxsw_reg_mtcap_sensor_count_get.exit.i.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mtcap_pl.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfcr_pl.i) #8
  %55 = ptrtoint ptr %mfcr_pl.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %mfcr_pl.i, align 8
  %56 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call1.i.i.i, align 4096
  %call.i51 = call i32 @mlxsw_reg_query(ptr noundef %57, ptr noundef nonnull @mlxsw_reg_mfcr, ptr noundef nonnull %mfcr_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %mlxsw_reg_mfcr_tacho_active_get.exit.i.i, label %mlxsw_hwmon_fans_init.exit

mlxsw_reg_mfcr_tacho_active_get.exit.i.i:         ; preds = %if.end4
  %arrayidx.i.i21.i.i = getelementptr inbounds i32, ptr %mfcr_pl.i, i32 1
  %58 = ptrtoint ptr %arrayidx.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i21.i.i, align 4
  %shr.i.i23.i.i = lshr i32 %59, 16
  %and4.i.i27.i.i = and i32 %shr.i.i23.i.i, 1023
  %attrs_count.i.i58 = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 7
  br label %for.body.i59

for.cond6.preheader.i:                            ; preds = %for.inc.i66
  %and12.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %for.cond6.preheader.i.for.inc17.i_crit_edge, label %if.then14.i

for.cond6.preheader.i.for.inc17.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.i

for.body.i59:                                     ; preds = %for.inc.i66.for.body.i59_crit_edge, %mlxsw_reg_mfcr_tacho_active_get.exit.i.i
  %num.059.i = phi i32 [ 0, %mlxsw_reg_mfcr_tacho_active_get.exit.i.i ], [ %num.1.i, %for.inc.i66.for.body.i59_crit_edge ]
  %type_index.057.i = phi i32 [ 0, %mlxsw_reg_mfcr_tacho_active_get.exit.i.i ], [ %inc5.i, %for.inc.i66.for.body.i59_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %type_index.057.i
  %and.i = and i32 %and4.i.i27.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %for.body.i59.for.inc.i66_crit_edge, label %if.then3.i

for.body.i59.for.inc.i66_crit_edge:               ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i66

if.then3.i:                                       ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i.i60 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %61
  %show23.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i.i60, i32 0, i32 1
  %62 = ptrtoint ptr %show23.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @mlxsw_hwmon_fan_rpm_show, ptr %show23.i.i, align 4
  %mode26.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i60, i32 0, i32 1
  %63 = ptrtoint ptr %mode26.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 292, ptr %mode26.i.i, align 4
  %name27.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %61, i32 3
  %add29.i.i = add i32 %num.059.i, 1
  %call30.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name27.i.i, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %add29.i.i) #8
  %type_index147.i.i61 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %61, i32 2
  %64 = ptrtoint ptr %type_index147.i.i61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %type_index.057.i, ptr %type_index147.i.i61, align 4
  %hwmon.i.i62 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %61, i32 1
  %65 = ptrtoint ptr %hwmon.i.i62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call1.i.i.i, ptr %hwmon.i.i62, align 4
  %66 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %name27.i.i, ptr %arrayidx.i.i60, align 4
  %key.i.i63 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i60, i32 0, i32 3
  %67 = ptrtoint ptr %key.i.i63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i.i63, align 4
  %arrayidx160.i.i64 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %61
  %68 = ptrtoint ptr %arrayidx160.i.i64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i.i60, ptr %arrayidx160.i.i64, align 4
  %69 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i.i65 = add i32 %70, 1
  store i32 %inc.i.i65, ptr %attrs_count.i.i58, align 4
  %arrayidx.i42.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i65
  %show33.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i42.i, i32 0, i32 1
  %71 = ptrtoint ptr %show33.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mlxsw_hwmon_fan_fault_show, ptr %show33.i.i, align 4
  %mode36.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i42.i, i32 0, i32 1
  %72 = ptrtoint ptr %mode36.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 292, ptr %mode36.i.i, align 4
  %name37.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i65, i32 3
  %call40.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name37.i.i, i32 noundef 32, ptr noundef nonnull @.str.26, i32 noundef %add29.i.i) #8
  %type_index147.i43.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i65, i32 2
  %73 = ptrtoint ptr %type_index147.i43.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %type_index.057.i, ptr %type_index147.i43.i, align 4
  %hwmon.i44.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i65, i32 1
  %74 = ptrtoint ptr %hwmon.i44.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call1.i.i.i, ptr %hwmon.i44.i, align 4
  %75 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %name37.i.i, ptr %arrayidx.i42.i, align 4
  %key.i46.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i42.i, i32 0, i32 3
  %76 = ptrtoint ptr %key.i46.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i46.i, align 4
  %arrayidx160.i47.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i.i65
  %77 = ptrtoint ptr %arrayidx160.i47.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx.i42.i, ptr %arrayidx160.i47.i, align 4
  %78 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i48.i = add i32 %79, 1
  store i32 %inc.i48.i, ptr %attrs_count.i.i58, align 4
  br label %for.inc.i66

for.inc.i66:                                      ; preds = %if.then3.i, %for.body.i59.for.inc.i66_crit_edge
  %num.1.i = phi i32 [ %add29.i.i, %if.then3.i ], [ %num.059.i, %for.body.i59.for.inc.i66_crit_edge ]
  %inc5.i = add nuw nsw i32 %type_index.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc5.i, 10
  br i1 %exitcond.not.i, label %for.cond6.preheader.i, label %for.inc.i66.for.body.i59_crit_edge

for.inc.i66.for.body.i59_crit_edge:               ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i59

if.then14.i:                                      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i50.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %81
  %show43.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.i, i32 0, i32 1
  %82 = ptrtoint ptr %show43.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @mlxsw_hwmon_pwm_show, ptr %show43.i.i, align 4
  %store45.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.i, i32 0, i32 2
  %83 = ptrtoint ptr %store45.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @mlxsw_hwmon_pwm_store, ptr %store45.i.i, align 4
  %mode48.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.i, i32 0, i32 1
  %84 = ptrtoint ptr %mode48.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 420, ptr %mode48.i.i, align 4
  %name49.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %81, i32 3
  %call52.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name49.i.i, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %type_index147.i51.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %81, i32 2
  %85 = ptrtoint ptr %type_index147.i51.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %type_index147.i51.i, align 4
  %hwmon.i52.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %81, i32 1
  %86 = ptrtoint ptr %hwmon.i52.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call1.i.i.i, ptr %hwmon.i52.i, align 4
  %87 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %name49.i.i, ptr %arrayidx.i50.i, align 4
  %key.i54.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.i, i32 0, i32 3
  %88 = ptrtoint ptr %key.i54.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i54.i, align 4
  %arrayidx160.i55.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %81
  %89 = ptrtoint ptr %arrayidx160.i55.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx.i50.i, ptr %arrayidx160.i55.i, align 4
  %90 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i56.i = add i32 %91, 1
  store i32 %inc.i56.i, ptr %attrs_count.i.i58, align 4
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %if.then14.i, %for.cond6.preheader.i.for.inc17.i_crit_edge
  %num.3.i = phi i32 [ 1, %if.then14.i ], [ 0, %for.cond6.preheader.i.for.inc17.i_crit_edge ]
  %and12.1.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.1.i)
  %tobool13.not.1.i = icmp eq i32 %and12.1.i, 0
  br i1 %tobool13.not.1.i, label %for.inc17.i.for.inc17.1.i_crit_edge, label %if.then14.1.i

for.inc17.i.for.inc17.1.i_crit_edge:              ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.1.i

if.then14.1.i:                                    ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc15.1.i = add nuw nsw i32 %num.3.i, 1
  %92 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i50.1.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %93
  %show43.i.1.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.1.i, i32 0, i32 1
  %94 = ptrtoint ptr %show43.i.1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @mlxsw_hwmon_pwm_show, ptr %show43.i.1.i, align 4
  %store45.i.1.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.1.i, i32 0, i32 2
  %95 = ptrtoint ptr %store45.i.1.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @mlxsw_hwmon_pwm_store, ptr %store45.i.1.i, align 4
  %mode48.i.1.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.1.i, i32 0, i32 1
  %96 = ptrtoint ptr %mode48.i.1.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 420, ptr %mode48.i.1.i, align 4
  %name49.i.1.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %93, i32 3
  %call52.i.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name49.i.1.i, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %inc15.1.i) #8
  %type_index147.i51.1.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %93, i32 2
  %97 = ptrtoint ptr %type_index147.i51.1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type_index147.i51.1.i, align 4
  %hwmon.i52.1.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %93, i32 1
  %98 = ptrtoint ptr %hwmon.i52.1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call1.i.i.i, ptr %hwmon.i52.1.i, align 4
  %99 = ptrtoint ptr %arrayidx.i50.1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %name49.i.1.i, ptr %arrayidx.i50.1.i, align 4
  %key.i54.1.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.1.i, i32 0, i32 3
  %100 = ptrtoint ptr %key.i54.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i54.1.i, align 4
  %arrayidx160.i55.1.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %93
  %101 = ptrtoint ptr %arrayidx160.i55.1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx.i50.1.i, ptr %arrayidx160.i55.1.i, align 4
  %102 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i56.1.i = add i32 %103, 1
  store i32 %inc.i56.1.i, ptr %attrs_count.i.i58, align 4
  br label %for.inc17.1.i

for.inc17.1.i:                                    ; preds = %if.then14.1.i, %for.inc17.i.for.inc17.1.i_crit_edge
  %num.3.1.i = phi i32 [ %inc15.1.i, %if.then14.1.i ], [ %num.3.i, %for.inc17.i.for.inc17.1.i_crit_edge ]
  %and12.2.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.2.i)
  %tobool13.not.2.i = icmp eq i32 %and12.2.i, 0
  br i1 %tobool13.not.2.i, label %for.inc17.1.i.for.inc17.2.i_crit_edge, label %if.then14.2.i

for.inc17.1.i.for.inc17.2.i_crit_edge:            ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.2.i

if.then14.2.i:                                    ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc15.2.i = add nuw nsw i32 %num.3.1.i, 1
  %104 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i50.2.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %105
  %show43.i.2.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.2.i, i32 0, i32 1
  %106 = ptrtoint ptr %show43.i.2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @mlxsw_hwmon_pwm_show, ptr %show43.i.2.i, align 4
  %store45.i.2.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.2.i, i32 0, i32 2
  %107 = ptrtoint ptr %store45.i.2.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @mlxsw_hwmon_pwm_store, ptr %store45.i.2.i, align 4
  %mode48.i.2.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.2.i, i32 0, i32 1
  %108 = ptrtoint ptr %mode48.i.2.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 420, ptr %mode48.i.2.i, align 4
  %name49.i.2.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %105, i32 3
  %call52.i.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name49.i.2.i, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %inc15.2.i) #8
  %type_index147.i51.2.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %105, i32 2
  %109 = ptrtoint ptr %type_index147.i51.2.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 2, ptr %type_index147.i51.2.i, align 4
  %hwmon.i52.2.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %105, i32 1
  %110 = ptrtoint ptr %hwmon.i52.2.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call1.i.i.i, ptr %hwmon.i52.2.i, align 4
  %111 = ptrtoint ptr %arrayidx.i50.2.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %name49.i.2.i, ptr %arrayidx.i50.2.i, align 4
  %key.i54.2.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.2.i, i32 0, i32 3
  %112 = ptrtoint ptr %key.i54.2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i54.2.i, align 4
  %arrayidx160.i55.2.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %105
  %113 = ptrtoint ptr %arrayidx160.i55.2.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %arrayidx.i50.2.i, ptr %arrayidx160.i55.2.i, align 4
  %114 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i56.2.i = add i32 %115, 1
  store i32 %inc.i56.2.i, ptr %attrs_count.i.i58, align 4
  br label %for.inc17.2.i

for.inc17.2.i:                                    ; preds = %if.then14.2.i, %for.inc17.1.i.for.inc17.2.i_crit_edge
  %num.3.2.i = phi i32 [ %inc15.2.i, %if.then14.2.i ], [ %num.3.1.i, %for.inc17.1.i.for.inc17.2.i_crit_edge ]
  %and12.3.i = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.3.i)
  %tobool13.not.3.i = icmp eq i32 %and12.3.i, 0
  br i1 %tobool13.not.3.i, label %for.inc17.2.i.for.inc17.3.i_crit_edge, label %if.then14.3.i

for.inc17.2.i.for.inc17.3.i_crit_edge:            ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17.3.i

if.then14.3.i:                                    ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc15.3.i = add nuw nsw i32 %num.3.2.i, 1
  %116 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i50.3.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %117
  %show43.i.3.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.3.i, i32 0, i32 1
  %118 = ptrtoint ptr %show43.i.3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @mlxsw_hwmon_pwm_show, ptr %show43.i.3.i, align 4
  %store45.i.3.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.3.i, i32 0, i32 2
  %119 = ptrtoint ptr %store45.i.3.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @mlxsw_hwmon_pwm_store, ptr %store45.i.3.i, align 4
  %mode48.i.3.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.3.i, i32 0, i32 1
  %120 = ptrtoint ptr %mode48.i.3.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 420, ptr %mode48.i.3.i, align 4
  %name49.i.3.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %117, i32 3
  %call52.i.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name49.i.3.i, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %inc15.3.i) #8
  %type_index147.i51.3.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %117, i32 2
  %121 = ptrtoint ptr %type_index147.i51.3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %type_index147.i51.3.i, align 4
  %hwmon.i52.3.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %117, i32 1
  %122 = ptrtoint ptr %hwmon.i52.3.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call1.i.i.i, ptr %hwmon.i52.3.i, align 4
  %123 = ptrtoint ptr %arrayidx.i50.3.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %name49.i.3.i, ptr %arrayidx.i50.3.i, align 4
  %key.i54.3.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.3.i, i32 0, i32 3
  %124 = ptrtoint ptr %key.i54.3.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i54.3.i, align 4
  %arrayidx160.i55.3.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %117
  %125 = ptrtoint ptr %arrayidx160.i55.3.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx.i50.3.i, ptr %arrayidx160.i55.3.i, align 4
  %126 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i56.3.i = add i32 %127, 1
  store i32 %inc.i56.3.i, ptr %attrs_count.i.i58, align 4
  br label %for.inc17.3.i

for.inc17.3.i:                                    ; preds = %if.then14.3.i, %for.inc17.2.i.for.inc17.3.i_crit_edge
  %num.3.3.i = phi i32 [ %inc15.3.i, %if.then14.3.i ], [ %num.3.2.i, %for.inc17.2.i.for.inc17.3.i_crit_edge ]
  %and12.4.i = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.4.i)
  %tobool13.not.4.i = icmp eq i32 %and12.4.i, 0
  br i1 %tobool13.not.4.i, label %for.inc17.3.i.if.end8_crit_edge, label %if.then14.4.i

for.inc17.3.i.if.end8_crit_edge:                  ; preds = %for.inc17.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then14.4.i:                                    ; preds = %for.inc17.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc15.4.i = add nuw nsw i32 %num.3.3.i, 1
  %128 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i50.4.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %129
  %show43.i.4.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.4.i, i32 0, i32 1
  %130 = ptrtoint ptr %show43.i.4.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @mlxsw_hwmon_pwm_show, ptr %show43.i.4.i, align 4
  %store45.i.4.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i50.4.i, i32 0, i32 2
  %131 = ptrtoint ptr %store45.i.4.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @mlxsw_hwmon_pwm_store, ptr %store45.i.4.i, align 4
  %mode48.i.4.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.4.i, i32 0, i32 1
  %132 = ptrtoint ptr %mode48.i.4.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 420, ptr %mode48.i.4.i, align 4
  %name49.i.4.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %129, i32 3
  %call52.i.4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name49.i.4.i, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %inc15.4.i) #8
  %type_index147.i51.4.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %129, i32 2
  %133 = ptrtoint ptr %type_index147.i51.4.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 4, ptr %type_index147.i51.4.i, align 4
  %hwmon.i52.4.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %129, i32 1
  %134 = ptrtoint ptr %hwmon.i52.4.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call1.i.i.i, ptr %hwmon.i52.4.i, align 4
  %135 = ptrtoint ptr %arrayidx.i50.4.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %name49.i.4.i, ptr %arrayidx.i50.4.i, align 4
  %key.i54.4.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i50.4.i, i32 0, i32 3
  %136 = ptrtoint ptr %key.i54.4.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i54.4.i, align 4
  %arrayidx160.i55.4.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %129
  %137 = ptrtoint ptr %arrayidx160.i55.4.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %arrayidx.i50.4.i, ptr %arrayidx160.i55.4.i, align 4
  %138 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i56.4.i = add i32 %139, 1
  store i32 %inc.i56.4.i, ptr %attrs_count.i.i58, align 4
  br label %if.end8

mlxsw_hwmon_fans_init.exit:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bus_info, align 4
  %dev.i54 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.88) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfcr_pl.i) #8
  br label %err_temp_init

if.end8:                                          ; preds = %if.then14.4.i, %for.inc17.3.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfcr_pl.i) #8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %mgpir_pl.i) #8
  %144 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call1.i.i.i, align 4096
  %call.i67 = call zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef %145) #8
  br i1 %call.i67, label %if.end.i69, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i69:                                       ; preds = %if.end8
  %146 = call ptr @memset(ptr %mgpir_pl.i, i32 0, i32 160)
  %147 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call1.i.i.i, align 4096
  %call3.i = call i32 @mlxsw_reg_query(ptr noundef %148, ptr noundef nonnull @mlxsw_reg_mgpir, ptr noundef nonnull %mgpir_pl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i68 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i68, label %mlxsw_reg_mgpir_unpack.exit.i, label %mlxsw_hwmon_module_init.exit

mlxsw_reg_mgpir_unpack.exit.i:                    ; preds = %if.end.i69
  %arrayidx.i.i41.i.i = getelementptr inbounds i32, ptr %mgpir_pl.i, i32 1
  %149 = ptrtoint ptr %arrayidx.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i.i41.i.i, align 4
  %conv13.i.i = trunc i32 %150 to i8
  %151 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %sensor_count.i, align 8
  %add.i = add i8 %152, %conv13.i.i
  %module_sensor_max9.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 9
  %153 = ptrtoint ptr %module_sensor_max9.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %add.i, ptr %module_sensor_max9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %152, i8 %add.i)
  %cmp95.i = icmp ult i8 %152, %add.i
  br i1 %cmp95.i, label %for.body.lr.ph.i72, label %mlxsw_reg_mgpir_unpack.exit.i.if.end12_crit_edge

mlxsw_reg_mgpir_unpack.exit.i.if.end12_crit_edge: ; preds = %mlxsw_reg_mgpir_unpack.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.body.lr.ph.i72:                               ; preds = %mlxsw_reg_mgpir_unpack.exit.i
  %conv11.i = zext i8 %152 to i32
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %for.body.lr.ph.i72
  %i.096.i = phi i32 [ %conv11.i, %for.body.lr.ph.i72 ], [ %add61.i.i, %for.body.i80.for.body.i80_crit_edge ]
  %154 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i.i73 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %155
  %show55.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i.i73, i32 0, i32 1
  %156 = ptrtoint ptr %show55.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @mlxsw_hwmon_module_temp_show, ptr %show55.i.i, align 4
  %mode58.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i73, i32 0, i32 1
  %157 = ptrtoint ptr %mode58.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 292, ptr %mode58.i.i, align 4
  %name59.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %155, i32 3
  %add61.i.i = add nuw nsw i32 %i.096.i, 1
  %call62.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name59.i.i, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %add61.i.i) #8
  %type_index147.i.i74 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %155, i32 2
  %158 = ptrtoint ptr %type_index147.i.i74 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %i.096.i, ptr %type_index147.i.i74, align 4
  %hwmon.i.i75 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %155, i32 1
  %159 = ptrtoint ptr %hwmon.i.i75 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call1.i.i.i, ptr %hwmon.i.i75, align 4
  %160 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %name59.i.i, ptr %arrayidx.i.i73, align 4
  %key.i.i76 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i73, i32 0, i32 3
  %161 = ptrtoint ptr %key.i.i76 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i.i76, align 4
  %arrayidx160.i.i77 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %155
  %162 = ptrtoint ptr %arrayidx160.i.i77 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %arrayidx.i.i73, ptr %arrayidx160.i.i77, align 4
  %163 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i.i78 = add i32 %164, 1
  store i32 %inc.i.i78, ptr %attrs_count.i.i58, align 4
  %arrayidx.i47.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i78
  %show65.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i47.i, i32 0, i32 1
  %165 = ptrtoint ptr %show65.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @mlxsw_hwmon_module_temp_fault_show, ptr %show65.i.i, align 4
  %mode68.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i47.i, i32 0, i32 1
  %166 = ptrtoint ptr %mode68.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 292, ptr %mode68.i.i, align 4
  %name69.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i78, i32 3
  %call72.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name69.i.i, i32 noundef 32, ptr noundef nonnull @.str.28, i32 noundef %add61.i.i) #8
  %type_index147.i48.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i78, i32 2
  %167 = ptrtoint ptr %type_index147.i48.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %i.096.i, ptr %type_index147.i48.i, align 4
  %hwmon.i49.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i78, i32 1
  %168 = ptrtoint ptr %hwmon.i49.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call1.i.i.i, ptr %hwmon.i49.i, align 4
  %169 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %name69.i.i, ptr %arrayidx.i47.i, align 4
  %key.i51.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i47.i, i32 0, i32 3
  %170 = ptrtoint ptr %key.i51.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i51.i, align 4
  %arrayidx160.i52.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i.i78
  %171 = ptrtoint ptr %arrayidx160.i52.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %arrayidx.i47.i, ptr %arrayidx160.i52.i, align 4
  %172 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i53.i = add i32 %173, 1
  store i32 %inc.i53.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i55.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i53.i
  %show75.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i55.i, i32 0, i32 1
  %174 = ptrtoint ptr %show75.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @mlxsw_hwmon_module_temp_critical_show, ptr %show75.i.i, align 4
  %mode78.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i55.i, i32 0, i32 1
  %175 = ptrtoint ptr %mode78.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 292, ptr %mode78.i.i, align 4
  %name79.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i53.i, i32 3
  %call82.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name79.i.i, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %add61.i.i) #8
  %type_index147.i56.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i53.i, i32 2
  %176 = ptrtoint ptr %type_index147.i56.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %i.096.i, ptr %type_index147.i56.i, align 4
  %hwmon.i57.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i53.i, i32 1
  %177 = ptrtoint ptr %hwmon.i57.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call1.i.i.i, ptr %hwmon.i57.i, align 4
  %178 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %name79.i.i, ptr %arrayidx.i55.i, align 4
  %key.i59.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i55.i, i32 0, i32 3
  %179 = ptrtoint ptr %key.i59.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i59.i, align 4
  %arrayidx160.i60.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i53.i
  %180 = ptrtoint ptr %arrayidx160.i60.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %arrayidx.i55.i, ptr %arrayidx160.i60.i, align 4
  %181 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i61.i = add i32 %182, 1
  store i32 %inc.i61.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i63.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i61.i
  %show85.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i63.i, i32 0, i32 1
  %183 = ptrtoint ptr %show85.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @mlxsw_hwmon_module_temp_emergency_show, ptr %show85.i.i, align 4
  %mode88.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i63.i, i32 0, i32 1
  %184 = ptrtoint ptr %mode88.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 292, ptr %mode88.i.i, align 4
  %name89.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i61.i, i32 3
  %call92.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name89.i.i, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %add61.i.i) #8
  %type_index147.i64.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i61.i, i32 2
  %185 = ptrtoint ptr %type_index147.i64.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %i.096.i, ptr %type_index147.i64.i, align 4
  %hwmon.i65.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i61.i, i32 1
  %186 = ptrtoint ptr %hwmon.i65.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call1.i.i.i, ptr %hwmon.i65.i, align 4
  %187 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %name89.i.i, ptr %arrayidx.i63.i, align 4
  %key.i67.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i63.i, i32 0, i32 3
  %188 = ptrtoint ptr %key.i67.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i67.i, align 4
  %arrayidx160.i68.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i61.i
  %189 = ptrtoint ptr %arrayidx160.i68.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %arrayidx.i63.i, ptr %arrayidx160.i68.i, align 4
  %190 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i69.i = add i32 %191, 1
  store i32 %inc.i69.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i71.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i69.i
  %show95.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i71.i, i32 0, i32 1
  %192 = ptrtoint ptr %show95.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @mlxsw_hwmon_module_temp_label_show, ptr %show95.i.i, align 4
  %mode98.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i71.i, i32 0, i32 1
  %193 = ptrtoint ptr %mode98.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 292, ptr %mode98.i.i, align 4
  %name99.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i69.i, i32 3
  %call102.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name99.i.i, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %add61.i.i) #8
  %type_index147.i72.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i69.i, i32 2
  %194 = ptrtoint ptr %type_index147.i72.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %i.096.i, ptr %type_index147.i72.i, align 4
  %hwmon.i73.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i69.i, i32 1
  %195 = ptrtoint ptr %hwmon.i73.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call1.i.i.i, ptr %hwmon.i73.i, align 4
  %196 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %name99.i.i, ptr %arrayidx.i71.i, align 4
  %key.i75.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i71.i, i32 0, i32 3
  %197 = ptrtoint ptr %key.i75.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i75.i, align 4
  %arrayidx160.i76.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i69.i
  %198 = ptrtoint ptr %arrayidx160.i76.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %arrayidx.i71.i, ptr %arrayidx160.i76.i, align 4
  %199 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i77.i = add i32 %200, 1
  store i32 %inc.i77.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i79.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i77.i
  %show115.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i79.i, i32 0, i32 1
  %201 = ptrtoint ptr %show115.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr @mlxsw_hwmon_temp_critical_alarm_show, ptr %show115.i.i, align 4
  %mode118.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i79.i, i32 0, i32 1
  %202 = ptrtoint ptr %mode118.i.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 292, ptr %mode118.i.i, align 4
  %name119.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i77.i, i32 3
  %call122.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name119.i.i, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %add61.i.i) #8
  %type_index147.i80.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i77.i, i32 2
  %203 = ptrtoint ptr %type_index147.i80.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %i.096.i, ptr %type_index147.i80.i, align 4
  %hwmon.i81.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i77.i, i32 1
  %204 = ptrtoint ptr %hwmon.i81.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call1.i.i.i, ptr %hwmon.i81.i, align 4
  %205 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %name119.i.i, ptr %arrayidx.i79.i, align 4
  %key.i83.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i79.i, i32 0, i32 3
  %206 = ptrtoint ptr %key.i83.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i83.i, align 4
  %arrayidx160.i84.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i77.i
  %207 = ptrtoint ptr %arrayidx160.i84.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %arrayidx.i79.i, ptr %arrayidx160.i84.i, align 4
  %208 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i85.i = add i32 %209, 1
  store i32 %inc.i85.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i87.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i85.i
  %show125.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i87.i, i32 0, i32 1
  %210 = ptrtoint ptr %show125.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @mlxsw_hwmon_temp_emergency_alarm_show, ptr %show125.i.i, align 4
  %mode128.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i87.i, i32 0, i32 1
  %211 = ptrtoint ptr %mode128.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 292, ptr %mode128.i.i, align 4
  %name129.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i85.i, i32 3
  %call132.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name129.i.i, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %add61.i.i) #8
  %type_index147.i88.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i85.i, i32 2
  %212 = ptrtoint ptr %type_index147.i88.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %i.096.i, ptr %type_index147.i88.i, align 4
  %hwmon.i89.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i85.i, i32 1
  %213 = ptrtoint ptr %hwmon.i89.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call1.i.i.i, ptr %hwmon.i89.i, align 4
  %214 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %name129.i.i, ptr %arrayidx.i87.i, align 4
  %key.i91.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i87.i, i32 0, i32 3
  %215 = ptrtoint ptr %key.i91.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i91.i, align 4
  %arrayidx160.i92.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i85.i
  %216 = ptrtoint ptr %arrayidx160.i92.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %arrayidx.i87.i, ptr %arrayidx160.i92.i, align 4
  %217 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i93.i = add i32 %218, 1
  store i32 %inc.i93.i, ptr %attrs_count.i.i58, align 4
  %219 = ptrtoint ptr %module_sensor_max9.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %module_sensor_max9.i, align 1
  %conv13.i = zext i8 %220 to i32
  %cmp.i79 = icmp ult i32 %add61.i.i, %conv13.i
  br i1 %cmp.i79, label %for.body.i80.for.body.i80_crit_edge, label %for.body.i80.if.end12_crit_edge

for.body.i80.if.end12_crit_edge:                  ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i80

mlxsw_hwmon_module_init.exit:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i) #8
  br label %err_temp_init

if.end12:                                         ; preds = %for.body.i80.if.end12_crit_edge, %mlxsw_reg_mgpir_unpack.exit.i.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i) #8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %mgpir_pl.i82) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl.i83) #8
  %221 = call ptr @memset(ptr %mtmp_pl.i83, i32 255, i32 32)
  %222 = call ptr @memset(ptr %mgpir_pl.i82, i32 0, i32 160)
  %223 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %call1.i.i.i, align 4096
  %call.i84 = call i32 @mlxsw_reg_query(ptr noundef %224, ptr noundef nonnull @mlxsw_reg_mgpir, ptr noundef nonnull %mgpir_pl.i82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i, label %if.end12.mlxsw_hwmon_gearbox_init.exit_crit_edge

if.end12.mlxsw_hwmon_gearbox_init.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_hwmon_gearbox_init.exit

mlxsw_reg_mgpir_num_of_devices_get.exit.i.i:      ; preds = %if.end12
  %225 = ptrtoint ptr %mgpir_pl.i82 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mgpir_pl.i82, align 4
  %conv.i.i = trunc i32 %226 to i8
  %227 = and i32 %226, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %227)
  %cmp.not.i = icmp ne i32 %227, 16777216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i)
  %tobool3.not.i = icmp eq i8 %conv.i.i, 0
  %or.cond.i = or i1 %cmp.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i.if.end16_crit_edge, label %if.end5.i101

mlxsw_reg_mgpir_num_of_devices_get.exit.i.i.if.end16_crit_edge: ; preds = %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end5.i101:                                     ; preds = %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i
  %and4.i.i.i.i = and i32 %226, 255
  %module_sensor_max.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 9
  %228 = ptrtoint ptr %module_sensor_max.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %module_sensor_max.i, align 1
  %conv.i99 = zext i8 %229 to i32
  %add.i100 = add nuw nsw i32 %and4.i.i.i.i, %conv.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %cmp976.not.i = icmp eq i32 %and4.i.i.i.i, 0
  br i1 %cmp976.not.i, label %if.end5.i101.if.end16_crit_edge, label %if.end5.i101.while.body.i_crit_edge

if.end5.i101.while.body.i_crit_edge:              ; preds = %if.end5.i101
  br label %while.body.i

if.end5.i101.if.end16_crit_edge:                  ; preds = %if.end5.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

while.body.i:                                     ; preds = %if.end21.i.while.body.i_crit_edge, %if.end5.i101.while.body.i_crit_edge
  %index.077.i = phi i32 [ %add.i.i110, %if.end21.i.while.body.i_crit_edge ], [ %conv.i99, %if.end5.i101.while.body.i_crit_edge ]
  %230 = ptrtoint ptr %module_sensor_max.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %module_sensor_max.i, align 1
  %conv12.i = zext i8 %231 to i32
  %rem.i = urem i32 %index.077.i, %conv12.i
  %add13.i = or i32 %rem.i, 256
  %conv15.i = trunc i32 %add13.i to i16
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl.i83, i16 noundef zeroext %conv15.i, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %232 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %call1.i.i.i, align 4096
  %call18.i = call i32 @mlxsw_reg_write(ptr noundef %233, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl.i83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %do.end.i105

do.end.i105:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %234 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %bus_info, align 4
  %dev.i104 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %235, i32 0, i32 2
  %236 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev.i104, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.7, i32 noundef %add13.i) #12
  br label %mlxsw_hwmon_gearbox_init.exit

if.end21.i:                                       ; preds = %while.body.i
  %238 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %attrs_count.i.i58, align 4
  %arrayidx.i.i106 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %239
  %show.i.i107 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i.i106, i32 0, i32 1
  %240 = ptrtoint ptr %show.i.i107 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @mlxsw_hwmon_temp_show, ptr %show.i.i107, align 4
  %mode.i.i108 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i106, i32 0, i32 1
  %241 = ptrtoint ptr %mode.i.i108 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 292, ptr %mode.i.i108, align 4
  %name.i.i109 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %239, i32 3
  %add.i.i110 = add nuw nsw i32 %index.077.i, 1
  %call.i.i111 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i109, i32 noundef 32, ptr noundef nonnull @.str.22, i32 noundef %add.i.i110) #8
  %type_index147.i.i112 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %239, i32 2
  %242 = ptrtoint ptr %type_index147.i.i112 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %index.077.i, ptr %type_index147.i.i112, align 4
  %hwmon.i.i113 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %239, i32 1
  %243 = ptrtoint ptr %hwmon.i.i113 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call1.i.i.i, ptr %hwmon.i.i113, align 4
  %244 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %name.i.i109, ptr %arrayidx.i.i106, align 4
  %key.i.i114 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i106, i32 0, i32 3
  %245 = ptrtoint ptr %key.i.i114 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i.i114, align 4
  %arrayidx160.i.i115 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %239
  %246 = ptrtoint ptr %arrayidx160.i.i115 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %arrayidx.i.i106, ptr %arrayidx160.i.i115, align 4
  %247 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i.i116 = add i32 %248, 1
  store i32 %inc.i.i116, ptr %attrs_count.i.i58, align 4
  %arrayidx.i53.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i116
  %show4.i.i117 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i53.i, i32 0, i32 1
  %249 = ptrtoint ptr %show4.i.i117 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @mlxsw_hwmon_temp_max_show, ptr %show4.i.i117, align 4
  %mode7.i.i118 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i53.i, i32 0, i32 1
  %250 = ptrtoint ptr %mode7.i.i118 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 292, ptr %mode7.i.i118, align 4
  %name8.i.i119 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i116, i32 3
  %call11.i.i120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name8.i.i119, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %add.i.i110) #8
  %type_index147.i54.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i116, i32 2
  %251 = ptrtoint ptr %type_index147.i54.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %index.077.i, ptr %type_index147.i54.i, align 4
  %hwmon.i55.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i.i116, i32 1
  %252 = ptrtoint ptr %hwmon.i55.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call1.i.i.i, ptr %hwmon.i55.i, align 4
  %253 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %name8.i.i119, ptr %arrayidx.i53.i, align 4
  %key.i57.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i53.i, i32 0, i32 3
  %254 = ptrtoint ptr %key.i57.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i57.i, align 4
  %arrayidx160.i58.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i.i116
  %255 = ptrtoint ptr %arrayidx160.i58.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %arrayidx.i53.i, ptr %arrayidx160.i58.i, align 4
  %256 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i59.i = add i32 %257, 1
  store i32 %inc.i59.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i61.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i59.i
  %store.i.i121 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i61.i, i32 0, i32 2
  %258 = ptrtoint ptr %store.i.i121 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @mlxsw_hwmon_temp_rst_store, ptr %store.i.i121, align 4
  %mode16.i.i122 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i61.i, i32 0, i32 1
  %259 = ptrtoint ptr %mode16.i.i122 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 128, ptr %mode16.i.i122, align 4
  %name17.i.i123 = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i59.i, i32 3
  %call20.i.i124 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name17.i.i123, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %add.i.i110) #8
  %type_index147.i62.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i59.i, i32 2
  %260 = ptrtoint ptr %type_index147.i62.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %index.077.i, ptr %type_index147.i62.i, align 4
  %hwmon.i63.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i59.i, i32 1
  %261 = ptrtoint ptr %hwmon.i63.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call1.i.i.i, ptr %hwmon.i63.i, align 4
  %262 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %name17.i.i123, ptr %arrayidx.i61.i, align 4
  %key.i65.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i61.i, i32 0, i32 3
  %263 = ptrtoint ptr %key.i65.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i65.i, align 4
  %arrayidx160.i66.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i59.i
  %264 = ptrtoint ptr %arrayidx160.i66.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %arrayidx.i61.i, ptr %arrayidx160.i66.i, align 4
  %265 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i67.i = add i32 %266, 1
  store i32 %inc.i67.i, ptr %attrs_count.i.i58, align 4
  %arrayidx.i69.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i67.i
  %show105.i.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i69.i, i32 0, i32 1
  %267 = ptrtoint ptr %show105.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr @mlxsw_hwmon_gbox_temp_label_show, ptr %show105.i.i, align 4
  %mode108.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i69.i, i32 0, i32 1
  %268 = ptrtoint ptr %mode108.i.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 292, ptr %mode108.i.i, align 4
  %name109.i.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i67.i, i32 3
  %call112.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name109.i.i, i32 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %add.i.i110) #8
  %type_index147.i70.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i67.i, i32 2
  %269 = ptrtoint ptr %type_index147.i70.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %index.077.i, ptr %type_index147.i70.i, align 4
  %hwmon.i71.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 6, i32 %inc.i67.i, i32 1
  %270 = ptrtoint ptr %hwmon.i71.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %call1.i.i.i, ptr %hwmon.i71.i, align 4
  %271 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %name109.i.i, ptr %arrayidx.i69.i, align 4
  %key.i73.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i69.i, i32 0, i32 3
  %272 = ptrtoint ptr %key.i73.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr @mlxsw_hwmon_attr_add.__key, ptr %key.i73.i, align 4
  %arrayidx160.i74.i = getelementptr %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5, i32 %inc.i67.i
  %273 = ptrtoint ptr %arrayidx160.i74.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %arrayidx.i69.i, ptr %arrayidx160.i74.i, align 4
  %274 = ptrtoint ptr %attrs_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %attrs_count.i.i58, align 4
  %inc.i75.i = add i32 %275, 1
  store i32 %inc.i75.i, ptr %attrs_count.i.i58, align 4
  %cmp9.i = icmp ult i32 %add.i.i110, %add.i100
  br i1 %cmp9.i, label %if.end21.i.while.body.i_crit_edge, label %if.end21.i.if.end16_crit_edge

if.end21.i.if.end16_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

mlxsw_hwmon_gearbox_init.exit:                    ; preds = %do.end.i105, %if.end12.mlxsw_hwmon_gearbox_init.exit_crit_edge
  %retval.0.i125 = phi i32 [ %call18.i, %do.end.i105 ], [ %call.i84, %if.end12.mlxsw_hwmon_gearbox_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i83) #8
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i82) #8
  br label %err_temp_init

if.end16:                                         ; preds = %if.end21.i.if.end16_crit_edge, %if.end5.i101.if.end16_crit_edge, %mlxsw_reg_mgpir_num_of_devices_get.exit.i.i.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl.i83) #8
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %mgpir_pl.i82) #8
  %group = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 3
  %groups = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 4
  %276 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %group, ptr %groups, align 32
  %attrs = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 5
  %attrs18 = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 3, i32 3
  %277 = ptrtoint ptr %attrs18 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %attrs, ptr %attrs18, align 8
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %mlxsw_bus_info, i32 0, i32 2
  %278 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev, align 4
  %call21 = call ptr @hwmon_device_register_with_groups(ptr noundef %279, ptr noundef nonnull @.str, ptr noundef nonnull %call1.i.i.i, ptr noundef %groups) #8
  %cmp.i126 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %280 = ptrtoint ptr %call21 to i32
  br label %err_temp_init

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %hwmon_dev26 = getelementptr inbounds %struct.mlxsw_hwmon, ptr %call1.i.i.i, i32 0, i32 2
  %281 = ptrtoint ptr %hwmon_dev26 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call21, ptr %hwmon_dev26, align 8
  %282 = ptrtoint ptr %p_hwmon to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call1.i.i.i, ptr %p_hwmon, align 4
  br label %cleanup

err_temp_init:                                    ; preds = %if.then23, %mlxsw_hwmon_gearbox_init.exit, %mlxsw_hwmon_module_init.exit, %mlxsw_hwmon_fans_init.exit, %mlxsw_hwmon_temp_init.exit
  %err.0 = phi i32 [ %retval.2.i, %mlxsw_hwmon_temp_init.exit ], [ %call.i51, %mlxsw_hwmon_fans_init.exit ], [ %call3.i, %mlxsw_hwmon_module_init.exit ], [ %retval.0.i125, %mlxsw_hwmon_gearbox_init.exit ], [ %280, %if.then23 ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_temp_init, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_temp_init ], [ 0, %if.end25 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_hwmon_fini(ptr noundef %mlxsw_hwmon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_dev = getelementptr inbounds %struct.mlxsw_hwmon, ptr %mlxsw_hwmon, i32 0, i32 2
  %0 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %mlxsw_hwmon) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_temp_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mtmp_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl) #8
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = call ptr @memset(ptr %mtmp_pl, i32 255, i32 32)
  %3 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_index, align 4
  %module_sensor_max = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %module_sensor_max to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %module_sensor_max, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not.i = icmp slt i32 %4, %conv
  br i1 %cmp.not.i, label %entry.mlxsw_hwmon_get_attr_index.exit_crit_edge, label %if.then.i

entry.mlxsw_hwmon_get_attr_index.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_hwmon_get_attr_index.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = srem i32 %4, %conv
  %add.i = add nsw i32 %rem.i, 256
  br label %mlxsw_hwmon_get_attr_index.exit

mlxsw_hwmon_get_attr_index.exit:                  ; preds = %if.then.i, %entry.mlxsw_hwmon_get_attr_index.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %4, %entry.mlxsw_hwmon_get_attr_index.exit_crit_edge ]
  %conv1 = trunc i32 %retval.0.i to i16
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl, i16 noundef zeroext %conv1, i1 noundef zeroext false, i1 noundef zeroext false)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call3 = call i32 @mlxsw_reg_query(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %mlxsw_reg_mtmp_unpack.exit, label %do.end

do.end:                                           ; preds = %mlxsw_hwmon_get_attr_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_info, align 4
  %dev4 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34) #12
  br label %cleanup

mlxsw_reg_mtmp_unpack.exit:                       ; preds = %mlxsw_hwmon_get_attr_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mtmp_pl, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  %and4.i.i.i = and i32 %14, 65535
  %sext2.i = shl i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext2.i)
  %cmp.i = icmp sgt i32 %sext2.i, -65536
  %conv1.i = ashr exact i32 %sext2.i, 16
  %mul.i = mul nsw i32 %conv1.i, 125
  %sext3.i = mul i32 %and4.i.i.i, 8192000
  %conv8.i = ashr exact i32 %sext3.i, 16
  %cond.i = select i1 %cmp.i, i32 %mul.i, i32 %conv8.i
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %cond.i)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mtmp_unpack.exit, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %mlxsw_reg_mtmp_unpack.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_temp_max_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mtmp_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl) #8
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = call ptr @memset(ptr %mtmp_pl, i32 255, i32 32)
  %3 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_index, align 4
  %module_sensor_max = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %module_sensor_max to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %module_sensor_max, align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp.not.i = icmp slt i32 %4, %conv
  br i1 %cmp.not.i, label %entry.mlxsw_hwmon_get_attr_index.exit_crit_edge, label %if.then.i

entry.mlxsw_hwmon_get_attr_index.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_hwmon_get_attr_index.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = srem i32 %4, %conv
  %add.i = add nsw i32 %rem.i, 256
  br label %mlxsw_hwmon_get_attr_index.exit

mlxsw_hwmon_get_attr_index.exit:                  ; preds = %if.then.i, %entry.mlxsw_hwmon_get_attr_index.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %4, %entry.mlxsw_hwmon_get_attr_index.exit_crit_edge ]
  %conv1 = trunc i32 %retval.0.i to i16
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl, i16 noundef zeroext %conv1, i1 noundef zeroext false, i1 noundef zeroext false)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call3 = call i32 @mlxsw_reg_query(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %mlxsw_reg_mtmp_unpack.exit, label %do.end

do.end:                                           ; preds = %mlxsw_hwmon_get_attr_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus_info, align 4
  %dev4 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34) #12
  br label %cleanup

mlxsw_reg_mtmp_unpack.exit:                       ; preds = %mlxsw_hwmon_get_attr_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i19.i = getelementptr inbounds i32, ptr %mtmp_pl, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i19.i, align 4
  %and4.i.i25.i = and i32 %14, 65535
  %sext.i = shl i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext.i)
  %cmp16.i = icmp sgt i32 %sext.i, -65536
  %conv15.i = ashr exact i32 %sext.i, 16
  %mul20.i = mul nsw i32 %conv15.i, 125
  %sext1.i = mul i32 %and4.i.i25.i, 8192000
  %conv27.i = ashr exact i32 %sext1.i, 16
  %cond29.i = select i1 %cmp16.i, i32 %mul20.i, i32 %conv27.i
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %cond29.i)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mtmp_unpack.exit, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call6, %mlxsw_reg_mtmp_unpack.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_temp_rst_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %mtmp_pl = alloca [32 x i8], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl) #8
  %2 = call ptr @memset(ptr %mtmp_pl, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !223
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type_index, align 4
  %module_sensor_max = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %module_sensor_max to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %module_sensor_max, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not.i = icmp slt i32 %7, %conv
  br i1 %cmp.not.i, label %if.end2.mlxsw_reg_mtmp_sensor_index_set.exit_crit_edge, label %if.then.i

if.end2.mlxsw_reg_mtmp_sensor_index_set.exit_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlxsw_reg_mtmp_sensor_index_set.exit

if.then.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = srem i32 %7, %conv
  %add.i = add nsw i32 %rem.i, 256
  br label %mlxsw_reg_mtmp_sensor_index_set.exit

mlxsw_reg_mtmp_sensor_index_set.exit:             ; preds = %if.then.i, %if.end2.mlxsw_reg_mtmp_sensor_index_set.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %7, %if.end2.mlxsw_reg_mtmp_sensor_index_set.exit_crit_edge ]
  %and6.i.i = and i32 %retval.0.i, 4095
  %10 = ptrtoint ptr %mtmp_pl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtmp_pl, align 4
  %and7.i.i = and i32 %11, -4096
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %mtmp_pl, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call5 = call i32 @mlxsw_reg_query(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %mlxsw_reg_mtmp_mte_set.exit, label %mlxsw_reg_mtmp_sensor_index_set.exit.cleanup_crit_edge

mlxsw_reg_mtmp_sensor_index_set.exit.cleanup_crit_edge: ; preds = %mlxsw_reg_mtmp_sensor_index_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlxsw_reg_mtmp_mte_set.exit:                      ; preds = %mlxsw_reg_mtmp_sensor_index_set.exit
  %arrayidx.i.i56 = getelementptr inbounds i32, ptr %mtmp_pl, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i56, align 4
  %arrayidx.i.i84 = getelementptr inbounds i32, ptr %mtmp_pl, i32 2
  %or.i.i87 = or i32 %15, -1073741824
  %16 = ptrtoint ptr %arrayidx.i.i84 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i87, ptr %arrayidx.i.i84, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call13 = call i32 @mlxsw_reg_write(ptr noundef %18, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %mlxsw_reg_mtmp_mte_set.exit.cleanup_crit_edge, label %do.end

mlxsw_reg_mtmp_mte_set.exit.cleanup_crit_edge:    ; preds = %mlxsw_reg_mtmp_mte_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %mlxsw_reg_mtmp_mte_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus_info, align 4
  %dev16 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.47) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mlxsw_reg_mtmp_mte_set.exit.cleanup_crit_edge, %mlxsw_reg_mtmp_sensor_index_set.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %mlxsw_reg_mtmp_sensor_index_set.exit.cleanup_crit_edge ], [ %len, %mlxsw_reg_mtmp_mte_set.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_fan_rpm_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mfsm_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfsm_pl) #8
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_index, align 4
  %4 = ptrtoint ptr %mfsm_pl to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %mfsm_pl, align 8
  %spec.select.i.i.i = shl i32 %3, 24
  %and6.i.i.i = and i32 %spec.select.i.i.i, 251658240
  store i32 %and6.i.i.i, ptr %mfsm_pl, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_mfsm, ptr noundef nonnull %mfsm_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_mfsm_rpm_get.exit, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_info, align 4
  %dev2 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.49) #12
  br label %cleanup

mlxsw_reg_mfsm_rpm_get.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mfsm_pl, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %12, 65535
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %and4.i.i)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mfsm_rpm_get.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call5, %mlxsw_reg_mfsm_rpm_get.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfsm_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_fan_fault_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %fore_pl = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fore_pl) #8
  %2 = call ptr @memset(ptr %fore_pl, i32 255, i32 12)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %4, ptr noundef nonnull @mlxsw_reg_fore, ptr noundef nonnull %fore_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_info, align 4
  %dev1 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type_index, align 4
  %11 = ptrtoint ptr %fore_pl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fore_pl, align 4
  %shr.i.i.i = lshr i32 %12, 16
  %and4.i.i.i = and i32 %shr.i.i.i, 1023
  %conv2.i = and i32 %10, 255
  %13 = lshr i32 %and4.i.i.i, %conv2.i
  %14 = and i32 %13, 1
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call5, %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fore_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_pwm_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mfsc_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfsc_pl) #8
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %mfsc_pl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %mfsc_pl, align 8
  %3 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_index, align 4
  %conv = trunc i32 %4 to i8
  call fastcc void @mlxsw_reg_mfsc_pack(ptr noundef nonnull %mfsc_pl, i8 noundef zeroext %conv, i8 noundef zeroext 0)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_mfsc, ptr noundef nonnull %mfsc_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_mfsc_pwm_duty_cycle_get.exit, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_info, align 4
  %dev2 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.61) #12
  br label %cleanup

mlxsw_reg_mfsc_pwm_duty_cycle_get.exit:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr inbounds i32, ptr %mfsc_pl, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %12, 255
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %and4.i.i)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mfsc_pwm_duty_cycle_get.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call5, %mlxsw_reg_mfsc_pwm_duty_cycle_get.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfsc_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_pwm_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %mfsc_pl = alloca [8 x i8], align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mfsc_pl) #8
  %2 = ptrtoint ptr %mfsc_pl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %mfsc_pl, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !223
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp ugt i32 %5, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type_index, align 4
  %conv = trunc i32 %7 to i8
  %conv3 = trunc i32 %5 to i8
  call fastcc void @mlxsw_reg_mfsc_pack(ptr noundef nonnull %mfsc_pl, i8 noundef zeroext %conv, i8 noundef zeroext %conv3)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call5 = call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_mfsc, ptr noundef nonnull %mfsc_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end2.cleanup_crit_edge, label %do.end

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %bus_info = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus_info, align 4
  %dev8 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.68) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %len, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mfsc_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_module_temp_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !223
  %call = call fastcc i32 @mlxsw_hwmon_module_temp_get(ptr noundef %dev, ptr noundef %attr, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_module_temp_fault_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %mtbr_pl = alloca [204 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %mtbr_pl) #8
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_index, align 4
  %sensor_count = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor_count, align 4
  %6 = trunc i32 %3 to i8
  %conv1 = sub i8 %6, %5
  %conv2 = zext i8 %conv1 to i32
  %add = add nuw nsw i32 %conv2, 64
  %7 = call ptr @memset(ptr %mtbr_pl, i32 0, i32 204)
  %8 = ptrtoint ptr %mtbr_pl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtbr_pl, align 4
  %and7.i.i.i = and i32 %9, -4096
  %or.i.i.i = or i32 %add, %and7.i.i.i
  store i32 %or.i.i.i, ptr %mtbr_pl, align 4
  %arrayidx.i.i24.i = getelementptr inbounds i32, ptr %mtbr_pl, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i24.i, align 4
  %and7.i.i26.i = and i32 %11, -256
  %or.i.i27.i = or i32 %and7.i.i26.i, 1
  store i32 %or.i.i27.i, ptr %arrayidx.i.i24.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_mtbr, ptr noundef nonnull %mtbr_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_mtbr_temp_unpack.exit, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #12
  br label %cleanup

mlxsw_reg_mtbr_temp_unpack.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i34 = getelementptr inbounds i32, ptr %mtbr_pl, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i34, align 4
  %conv1.i40 = trunc i32 %15 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32765, i16 %conv1.i40)
  %cond = icmp eq i16 %conv1.i40, -32765
  %. = zext i1 %cond to i32
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mtbr_temp_unpack.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %mlxsw_reg_mtbr_temp_unpack.exit ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %mtbr_pl) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_module_temp_critical_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !223
  %hwmon.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %hwmon.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmon.i, align 4
  %type_index.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %type_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_index.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor_count.i, align 4
  %7 = trunc i32 %4 to i8
  %conv1.i = sub i8 %7, %6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %conv2.i = zext i8 %conv1.i to i32
  %call.i = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %9, i32 noundef %conv2.i, i32 noundef 4, ptr noundef nonnull %temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mlxsw_hwmon_module_temp_critical_get.exit

mlxsw_hwmon_module_temp_critical_get.exit:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlxsw_hwmon_module_temp_critical_get.exit
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %mlxsw_hwmon_module_temp_critical_get.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_module_temp_emergency_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !223
  %hwmon.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %hwmon.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwmon.i, align 4
  %type_index.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %type_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_index.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor_count.i, align 4
  %7 = trunc i32 %4 to i8
  %conv1.i = sub i8 %7, %6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %conv2.i = zext i8 %conv1.i to i32
  %call.i = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %9, i32 noundef %conv2.i, i32 noundef 0, ptr noundef nonnull %temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mlxsw_hwmon_module_temp_emergency_get.exit

mlxsw_hwmon_module_temp_emergency_get.exit:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlxsw_hwmon_module_temp_emergency_get.exit
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %mlxsw_hwmon_module_temp_emergency_get.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_module_temp_label_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type_index, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_gbox_temp_label_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type_index, align 4
  %module_sensor_max = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %module_sensor_max to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module_sensor_max, align 1
  %conv = zext i8 %5 to i32
  %sub = add i32 %3, 1
  %add = sub i32 %sub, %conv
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.87, i32 noundef %add)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_temp_critical_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  %emergency_temp = alloca i32, align 4
  %critic_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %emergency_temp) #8
  %1 = ptrtoint ptr %emergency_temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %emergency_temp, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %critic_temp) #8
  %2 = ptrtoint ptr %critic_temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %critic_temp, align 4, !annotation !223
  %call = call fastcc i32 @mlxsw_hwmon_module_temp_get(ptr noundef %dev, ptr noundef %attr, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef 0)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hwmon.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %hwmon.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmon.i, align 4
  %type_index.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %type_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_index.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sensor_count.i, align 4
  %11 = trunc i32 %8 to i8
  %conv1.i = sub i8 %11, %10
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %conv2.i = zext i8 %conv1.i to i32
  %call.i = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %13, i32 noundef %conv2.i, i32 noundef 0, ptr noundef nonnull %emergency_temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %mlxsw_hwmon_module_temp_emergency_get.exit

mlxsw_hwmon_module_temp_emergency_get.exit:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp, align 4
  %16 = ptrtoint ptr %emergency_temp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %emergency_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp8.not = icmp slt i32 %15, %17
  br i1 %cmp8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef 0)
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %hwmon.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmon.i, align 4
  %20 = ptrtoint ptr %type_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type_index.i, align 4
  %sensor_count.i34 = getelementptr inbounds %struct.mlxsw_hwmon, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %sensor_count.i34 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sensor_count.i34, align 4
  %24 = trunc i32 %21 to i8
  %conv1.i35 = sub i8 %24, %23
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %conv2.i36 = zext i8 %conv1.i35 to i32
  %call.i37 = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %26, i32 noundef %conv2.i36, i32 noundef 4, ptr noundef nonnull %critic_temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end15, label %mlxsw_hwmon_module_temp_critical_get.exit

mlxsw_hwmon_module_temp_critical_get.exit:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %temp, align 4
  %29 = ptrtoint ptr %critic_temp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %critic_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp16 = icmp sge i32 %28, %30
  %conv = zext i1 %cmp16 to i32
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %mlxsw_hwmon_module_temp_critical_get.exit, %if.then9, %mlxsw_hwmon_module_temp_emergency_get.exit, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call10, %if.then9 ], [ %call17, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %mlxsw_hwmon_module_temp_emergency_get.exit ], [ %call.i37, %mlxsw_hwmon_module_temp_critical_get.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %critic_temp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emergency_temp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_hwmon_temp_emergency_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  %emergency_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %emergency_temp) #8
  %1 = ptrtoint ptr %emergency_temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %emergency_temp, align 4, !annotation !223
  %call = call fastcc i32 @mlxsw_hwmon_module_temp_get(ptr noundef %dev, ptr noundef %attr, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef 0)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hwmon.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %hwmon.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwmon.i, align 4
  %type_index.i = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %type_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type_index.i, align 4
  %sensor_count.i = getelementptr inbounds %struct.mlxsw_hwmon, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %sensor_count.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sensor_count.i, align 4
  %10 = trunc i32 %7 to i8
  %conv1.i = sub i8 %10, %9
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %conv2.i = zext i8 %conv1.i to i32
  %call.i = call i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef %12, i32 noundef %conv2.i, i32 noundef 0, ptr noundef nonnull %emergency_temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7, label %mlxsw_hwmon_module_temp_emergency_get.exit

mlxsw_hwmon_module_temp_emergency_get.exit:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp, align 4
  %15 = ptrtoint ptr %emergency_temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %emergency_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp8 = icmp sge i32 %14, %16
  %conv = zext i1 %cmp8 to i32
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %mlxsw_hwmon_module_temp_emergency_get.exit, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ %call9, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %mlxsw_hwmon_module_temp_emergency_get.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emergency_temp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mtmp_pack(ptr nocapture noundef %payload, i16 noundef zeroext %sensor_index, i1 noundef zeroext %max_temp_enable, i1 noundef zeroext %max_temp_reset) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = call ptr @memset(ptr %payload, i32 0, i32 32)
  %1 = and i16 %sensor_index, 4095
  %and6.i.i = zext i16 %1 to i32
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %3, -4096
  %or.i.i = or i32 %and7.i.i, %and6.i.i
  store i32 %or.i.i, ptr %payload, align 4
  %spec.select.i.i28 = select i1 %max_temp_enable, i32 -2147483648, i32 0
  %arrayidx.i.i34 = getelementptr i32, ptr %payload, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i34, align 4
  %and7.i.i36 = and i32 %5, 1073741823
  %or.i.i37 = or i32 %spec.select.i.i28, %and7.i.i36
  %spec.select.i.i56 = select i1 %max_temp_reset, i32 1073741824, i32 0
  %arrayidx.i.i62 = getelementptr i32, ptr %payload, i32 2
  %or.i.i65 = or i32 %spec.select.i.i56, %or.i.i37
  %6 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i65, ptr %arrayidx.i.i62, align 4
  %arrayidx.i.i89 = getelementptr i32, ptr %payload, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i89 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i89, align 4
  %and7.i.i91 = and i32 %8, -65536
  %or.i.i92 = or i32 %and7.i.i91, 840
  store i32 %or.i.i92, ptr %arrayidx.i.i89, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_mfsc_pack(ptr nocapture noundef %payload, i8 noundef zeroext %pwm, i8 noundef zeroext %pwm_duty_cycle) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_hwmon_module_temp_get(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef writeonly %p_temp) unnamed_addr #0 align 64 {
entry:
  %mtmp_pl = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mtmp_pl) #8
  %type_index = getelementptr inbounds %struct.mlxsw_hwmon_attr, ptr %attr, i32 0, i32 2
  %2 = call ptr @memset(ptr %mtmp_pl, i32 255, i32 32)
  %3 = ptrtoint ptr %type_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type_index, align 4
  %sensor_count = getelementptr inbounds %struct.mlxsw_hwmon, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %sensor_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sensor_count, align 4
  %7 = trunc i32 %4 to i8
  %conv1 = sub i8 %7, %6
  %conv2 = zext i8 %conv1 to i16
  %add = add nuw nsw i16 %conv2, 64
  call fastcc void @mlxsw_reg_mtmp_pack(ptr noundef nonnull %mtmp_pl, i16 noundef zeroext %add, i1 noundef zeroext false, i1 noundef zeroext false)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_mtmp, ptr noundef nonnull %mtmp_pl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %p_temp, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %mlxsw_reg_mtmp_temperature_get.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlxsw_reg_mtmp_temperature_get.exit.i:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %mtmp_pl, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  %and4.i.i.i = and i32 %11, 65535
  %sext2.i = shl i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %sext2.i)
  %cmp.i = icmp sgt i32 %sext2.i, -65536
  %conv1.i = ashr exact i32 %sext2.i, 16
  %mul.i = mul nsw i32 %conv1.i, 125
  %sext3.i = mul i32 %and4.i.i.i, 8192000
  %conv8.i = ashr exact i32 %sext3.i, 16
  %cond.i = select i1 %cmp.i, i32 %mul.i, i32 %conv8.i
  %12 = ptrtoint ptr %p_temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %p_temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_mtmp_temperature_get.exit.i, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mtmp_pl) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_env_module_temp_thresholds_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_query_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !180, !181, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 786, i32 13}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 584, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlxsw_hwmon_temp_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlxsw_hwmon_temp_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 601, i32 4}
!12 = !{ptr @mlxsw_hwmon_temp_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlxsw_hwmon_temp_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9650, i32 1}
!16 = !{ptr @mlxsw_reg_mtcap, !15, !"mlxsw_reg_mtcap", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__mlxsw_item_offset._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @__mlxsw_item_offset._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9657, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_mtcap_sensor_count_item", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9678, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_mtmp_sensor_index_item", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9668, i32 1}
!31 = !{ptr @mlxsw_reg_mtmp, !30, !"mlxsw_reg_mtmp", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9705, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_mtmp_mte_item", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9711, i32 1}
!37 = distinct !{null, !36, !"mlxsw_reg_mtmp_mtr_item", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 475, i32 5}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 481, i32 5}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 487, i32 5}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 493, i32 5}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 499, i32 5}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 506, i32 5}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 519, i32 5}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 526, i32 5}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 533, i32 5}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 540, i32 5}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 554, i32 5}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 561, i32 5}
!62 = !{ptr @mlxsw_hwmon_attr_add.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 570, i32 2}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 72, i32 3}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mlxsw_hwmon_temp_show._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @mlxsw_hwmon_temp_show._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 76, i32 22}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9742, i32 1}
!73 = distinct !{null, !72, !"mlxsw_reg_mtmp_temperature_threshold_hi_item", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9699, i32 1}
!76 = distinct !{null, !75, !"mlxsw_reg_mtmp_temperature_item", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9718, i32 1}
!79 = distinct !{null, !78, !"mlxsw_reg_mtmp_max_temperature_item", i1 false, i1 false}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9692, i32 1}
!82 = distinct !{null, !81, !"mlxsw_reg_mtmp_max_operational_temperature_item", i1 false, i1 false}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9757, i32 1}
!85 = distinct !{null, !84, !"mlxsw_reg_mtmp_sensor_name_item", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 95, i32 3}
!88 = !{ptr @mlxsw_hwmon_temp_max_show._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mlxsw_hwmon_temp_max_show._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 131, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mlxsw_hwmon_temp_rst_store._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mlxsw_hwmon_temp_rst_store._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 150, i32 3}
!97 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mlxsw_hwmon_fan_rpm_show._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mlxsw_hwmon_fan_rpm_show._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 153, i32 22}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9551, i32 1}
!104 = distinct !{null, !103, !"mlxsw_reg_mfsm_tacho_item", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9545, i32 1}
!107 = !{ptr @mlxsw_reg_mfsm, !106, !"mlxsw_reg_mfsm", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9557, i32 1}
!110 = distinct !{null, !109, !"mlxsw_reg_mfsm_rpm_item", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 169, i32 3}
!113 = !{ptr @mlxsw_hwmon_fan_fault_show._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mlxsw_hwmon_fan_fault_show._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9621, i32 1}
!117 = !{ptr @mlxsw_reg_fore, !116, !"mlxsw_reg_fore", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9629, i32 1}
!120 = distinct !{null, !119, !"mlxsw_reg_fore_fan_under_limit_item", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 190, i32 3}
!123 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mlxsw_hwmon_pwm_show._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @mlxsw_hwmon_pwm_show._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9520, i32 1}
!128 = distinct !{null, !127, !"mlxsw_reg_mfsc_pwm_item", i1 false, i1 false}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9527, i32 1}
!131 = distinct !{null, !130, !"mlxsw_reg_mfsc_pwm_duty_cycle_item", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9514, i32 1}
!134 = !{ptr @mlxsw_reg_mfsc, !133, !"mlxsw_reg_mfsc", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 217, i32 3}
!137 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mlxsw_hwmon_pwm_store._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mlxsw_hwmon_pwm_store._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 239, i32 3}
!142 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mlxsw_hwmon_module_temp_get._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mlxsw_hwmon_module_temp_get._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 277, i32 3}
!147 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mlxsw_hwmon_module_temp_fault_show._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @mlxsw_hwmon_module_temp_fault_show._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9834, i32 1}
!152 = distinct !{null, !151, !"mlxsw_reg_mtbr_base_sensor_index_item", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9843, i32 1}
!155 = distinct !{null, !154, !"mlxsw_reg_mtbr_num_rec_item", i1 false, i1 false}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9827, i32 1}
!158 = !{ptr @mlxsw_reg_mtbr, !157, !"mlxsw_reg_mtbr", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9858, i32 1}
!161 = distinct !{null, !160, !"mlxsw_reg_mtbr_rec_temp_item", i1 false, i1 false}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9850, i32 1}
!164 = distinct !{null, !163, !"mlxsw_reg_mtbr_rec_max_temp_item", i1 false, i1 false}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 316, i32 3}
!167 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @mlxsw_hwmon_module_temp_critical_get._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @mlxsw_hwmon_module_temp_critical_get._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 350, i32 3}
!172 = !{ptr @mlxsw_hwmon_module_temp_emergency_get._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @mlxsw_hwmon_module_temp_emergency_get._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 379, i32 22}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 394, i32 22}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 627, i32 3}
!180 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @mlxsw_hwmon_fans_init._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @mlxsw_hwmon_fans_init._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9454, i32 1}
!185 = !{ptr @mlxsw_reg_mfcr, !184, !"mlxsw_reg_mfcr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9471, i32 1}
!188 = distinct !{null, !187, !"mlxsw_reg_mfcr_pwm_frequency_item", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9479, i32 1}
!191 = distinct !{null, !190, !"mlxsw_reg_mfcr_tacho_active_item", i1 false, i1 false}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9487, i32 1}
!194 = distinct !{null, !193, !"mlxsw_reg_mfcr_pwm_active_item", i1 false, i1 false}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11267, i32 1}
!197 = !{ptr @mlxsw_reg_mgpir, !196, !"mlxsw_reg_mgpir", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11289, i32 1}
!200 = distinct !{null, !199, !"mlxsw_reg_mgpir_num_of_devices_item", i1 false, i1 false}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11277, i32 1}
!203 = distinct !{null, !202, !"mlxsw_reg_mgpir_device_type_item", i1 false, i1 false}
!204 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11283, i32 1}
!206 = distinct !{null, !205, !"mlxsw_reg_mgpir_devices_per_flash_item", i1 false, i1 false}
!207 = !{ptr @.str.104, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 11295, i32 1}
!209 = distinct !{null, !208, !"mlxsw_reg_mgpir_num_of_modules_item", i1 false, i1 false}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlxsw/core_hwmon.c", i32 731, i32 4}
!212 = !{ptr @mlxsw_hwmon_gearbox_init._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @mlxsw_hwmon_gearbox_init._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"auto-init"}
