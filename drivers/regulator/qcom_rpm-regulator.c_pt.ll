; ModuleID = '/llk/IR_all_yes/drivers/regulator/qcom_rpm-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom_rpm-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpm_regulator_data = type { ptr, i32, ptr, ptr }
%struct.qcom_rpm_reg = type { ptr, %struct.mutex, ptr, %struct.regulator_desc, ptr, i32, [2 x i32], i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.rpm_reg_parts = type { %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, %struct.request_member, i32 }
%struct.request_member = type { i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_qcom_rpm_regulator__288_1002_rpm_reg_init4 = internal global ptr @rpm_reg_init, section ".initcall4.init", align 4
@rpm_reg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpm_reg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpm_reg_exit = internal global ptr @rpm_reg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [61 x i8] c"qcom_rpm_regulator.description=Qualcomm RPM regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [61 x i8] c"qcom_rpm_regulator.file=drivers/regulator/qcom_rpm-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [34 x i8] c"qcom_rpm_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom_rpm_reg\00", [19 x i8] zeroinitializer }, align 32
@rpm_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8018-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8018_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8058-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8058_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8901-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8901_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8921-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8921_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-smb208-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_smb208_regulators }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 948, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to retrieve handle to rpm\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpm_reg_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/qcom_rpm-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry_ptr = internal global ptr @rpm_reg_probe._entry, section ".printk_index", align 4
@rpm_reg_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry_ptr.8 = internal global ptr @rpm_reg_probe._entry.6, section ".printk_index", align 4
@rpm_reg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vreg->lock\00", [20 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry_ptr.12 = internal global ptr @rpm_reg_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bias-pull-down\00", [17 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s is invalid\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rpm_reg_of_parse\00", [47 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry_ptr = internal global ptr @rpm_reg_of_parse._entry, section ".printk_index", align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,power-mode-hysteretic\00", [37 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set power mode\0A\00", [38 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry_ptr.19 = internal global ptr @rpm_reg_of_parse._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,force-mode\00", [16 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to read %s\0A\00", [45 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry_ptr.23 = internal global ptr @rpm_reg_of_parse._entry.21, section ".printk_index", align 4
@rpm_reg_of_parse._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.3, i32 757, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid force mode\0A\00", [44 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry_ptr.26 = internal global ptr @rpm_reg_of_parse._entry.24, section ".printk_index", align 4
@rpm_reg_of_parse._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set force mode\0A\00", [38 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse._entry_ptr.29 = internal global ptr @rpm_reg_of_parse._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,switch-mode-frequency\00", [37 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regulator requires %s property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rpm_reg_of_parse_freq\00", [42 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse_freq._entry_ptr = internal global ptr @rpm_reg_of_parse_freq._entry, section ".printk_index", align 4
@rpm_reg_of_parse_freq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 672, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid frequency %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rpm_reg_of_parse_freq._entry_ptr.35 = internal global ptr @rpm_reg_of_parse_freq._entry.33, section ".printk_index", align 4
@rpm_pm8018_regulators = internal constant { [19 x %struct.rpm_regulator_data], [80 x i8] } { [19 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.36, i32 140, ptr @pm8018_smps, ptr @.str.37 }, %struct.rpm_regulator_data { ptr @.str.38, i32 141, ptr @pm8018_smps, ptr @.str.39 }, %struct.rpm_regulator_data { ptr @.str.40, i32 142, ptr @pm8018_smps, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.42, i32 143, ptr @pm8018_smps, ptr @.str.43 }, %struct.rpm_regulator_data { ptr @.str.44, i32 144, ptr @pm8018_smps, ptr @.str.45 }, %struct.rpm_regulator_data { ptr @.str.46, i32 146, ptr @pm8018_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.48, i32 147, ptr @pm8018_pldo, ptr @.str.49 }, %struct.rpm_regulator_data { ptr @.str.50, i32 148, ptr @pm8018_pldo, ptr @.str.51 }, %struct.rpm_regulator_data { ptr @.str.52, i32 149, ptr @pm8018_pldo, ptr @.str.53 }, %struct.rpm_regulator_data { ptr @.str.54, i32 150, ptr @pm8018_pldo, ptr @.str.55 }, %struct.rpm_regulator_data { ptr @.str.56, i32 151, ptr @pm8018_pldo, ptr @.str.55 }, %struct.rpm_regulator_data { ptr @.str.57, i32 152, ptr @pm8018_nldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.59, i32 153, ptr @pm8921_nldo1200, ptr @.str.60 }, %struct.rpm_regulator_data { ptr @.str.61, i32 154, ptr @pm8018_nldo, ptr @.str.60 }, %struct.rpm_regulator_data { ptr @.str.62, i32 155, ptr @pm8018_nldo, ptr @.str.60 }, %struct.rpm_regulator_data { ptr @.str.63, i32 156, ptr @pm8018_nldo, ptr @.str.60 }, %struct.rpm_regulator_data { ptr @.str.64, i32 158, ptr @pm8018_pldo, ptr @.str.65 }, %struct.rpm_regulator_data { ptr @.str.66, i32 159, ptr @pm8018_switch, ptr @.str.67 }, %struct.rpm_regulator_data zeroinitializer], [80 x i8] zeroinitializer }, align 32
@rpm_pm8058_regulators = internal constant { [35 x %struct.rpm_regulator_data], [144 x i8] } { [35 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.68, i32 21, ptr @pm8058_nldo, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.70, i32 22, ptr @pm8058_nldo, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.46, i32 23, ptr @pm8058_pldo, ptr @.str.71 }, %struct.rpm_regulator_data { ptr @.str.48, i32 24, ptr @pm8058_pldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.50, i32 25, ptr @pm8058_pldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.52, i32 26, ptr @pm8058_pldo, ptr @.str.72 }, %struct.rpm_regulator_data { ptr @.str.54, i32 27, ptr @pm8058_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.56, i32 28, ptr @pm8058_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.57, i32 29, ptr @pm8058_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.59, i32 30, ptr @pm8058_pldo, ptr @.str.74 }, %struct.rpm_regulator_data { ptr @.str.61, i32 31, ptr @pm8058_pldo, ptr @.str.75 }, %struct.rpm_regulator_data { ptr @.str.62, i32 32, ptr @pm8058_pldo, ptr @.str.71 }, %struct.rpm_regulator_data { ptr @.str.63, i32 33, ptr @pm8058_pldo, ptr @.str.71 }, %struct.rpm_regulator_data { ptr @.str.76, i32 34, ptr @pm8058_pldo, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.64, i32 35, ptr @pm8058_pldo, ptr @.str.78 }, %struct.rpm_regulator_data { ptr @.str.79, i32 36, ptr @pm8058_pldo, ptr @.str.78 }, %struct.rpm_regulator_data { ptr @.str.80, i32 37, ptr @pm8058_pldo, ptr @.str.77 }, %struct.rpm_regulator_data { ptr @.str.81, i32 38, ptr @pm8058_pldo, ptr @.str.82 }, %struct.rpm_regulator_data { ptr @.str.83, i32 39, ptr @pm8058_pldo, ptr @.str.82 }, %struct.rpm_regulator_data { ptr @.str.84, i32 40, ptr @pm8058_pldo, ptr @.str.85 }, %struct.rpm_regulator_data { ptr @.str.86, i32 41, ptr @pm8058_pldo, ptr @.str.85 }, %struct.rpm_regulator_data { ptr @.str.87, i32 42, ptr @pm8058_nldo, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.89, i32 43, ptr @pm8058_nldo, ptr @.str.90 }, %struct.rpm_regulator_data { ptr @.str.91, i32 44, ptr @pm8058_nldo, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.93, i32 45, ptr @pm8058_nldo, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.94, i32 46, ptr @pm8058_nldo, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.95, i32 50, ptr @pm8058_smps, ptr @.str.96 }, %struct.rpm_regulator_data { ptr @.str.36, i32 51, ptr @pm8058_smps, ptr @.str.37 }, %struct.rpm_regulator_data { ptr @.str.38, i32 52, ptr @pm8058_smps, ptr @.str.39 }, %struct.rpm_regulator_data { ptr @.str.40, i32 53, ptr @pm8058_smps, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.42, i32 54, ptr @pm8058_smps, ptr @.str.43 }, %struct.rpm_regulator_data { ptr @.str.97, i32 47, ptr @pm8058_switch, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.66, i32 48, ptr @pm8058_switch, ptr @.str.69 }, %struct.rpm_regulator_data { ptr @.str.98, i32 49, ptr @pm8058_ncp, ptr @.str.99 }, %struct.rpm_regulator_data zeroinitializer], [144 x i8] zeroinitializer }, align 32
@rpm_pm8901_regulators = internal constant { [18 x %struct.rpm_regulator_data], [64 x i8] } { [18 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.68, i32 58, ptr @pm8901_nldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.70, i32 59, ptr @pm8901_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.46, i32 60, ptr @pm8901_pldo, ptr @.str.47 }, %struct.rpm_regulator_data { ptr @.str.48, i32 61, ptr @pm8901_pldo, ptr @.str.49 }, %struct.rpm_regulator_data { ptr @.str.50, i32 62, ptr @pm8901_pldo, ptr @.str.51 }, %struct.rpm_regulator_data { ptr @.str.52, i32 63, ptr @pm8901_pldo, ptr @.str.53 }, %struct.rpm_regulator_data { ptr @.str.54, i32 64, ptr @pm8901_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.95, i32 70, ptr @pm8901_ftsmps, ptr @.str.96 }, %struct.rpm_regulator_data { ptr @.str.36, i32 71, ptr @pm8901_ftsmps, ptr @.str.37 }, %struct.rpm_regulator_data { ptr @.str.38, i32 72, ptr @pm8901_ftsmps, ptr @.str.39 }, %struct.rpm_regulator_data { ptr @.str.40, i32 73, ptr @pm8901_ftsmps, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.42, i32 74, ptr @pm8901_ftsmps, ptr @.str.43 }, %struct.rpm_regulator_data { ptr @.str.97, i32 65, ptr @pm8901_switch, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.66, i32 66, ptr @pm8901_switch, ptr @.str.67 }, %struct.rpm_regulator_data { ptr @.str.104, i32 67, ptr @pm8901_switch, ptr @.str.105 }, %struct.rpm_regulator_data { ptr @.str.106, i32 68, ptr @pm8901_switch, ptr @.str.107 }, %struct.rpm_regulator_data { ptr @.str.108, i32 69, ptr @pm8901_switch, ptr @.str.109 }, %struct.rpm_regulator_data zeroinitializer], [64 x i8] zeroinitializer }, align 32
@rpm_pm8921_regulators = internal constant { [43 x %struct.rpm_regulator_data], [176 x i8] } { [43 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.36, i32 115, ptr @pm8921_smps, ptr @.str.37 }, %struct.rpm_regulator_data { ptr @.str.38, i32 116, ptr @pm8921_smps, ptr @.str.39 }, %struct.rpm_regulator_data { ptr @.str.40, i32 117, ptr @pm8921_smps, ptr null }, %struct.rpm_regulator_data { ptr @.str.42, i32 118, ptr @pm8921_smps, ptr @.str.43 }, %struct.rpm_regulator_data { ptr @.str.110, i32 121, ptr @pm8921_smps, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.112, i32 122, ptr @pm8921_smps, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.70, i32 77, ptr @pm8921_nldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.46, i32 78, ptr @pm8921_nldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.48, i32 79, ptr @pm8921_pldo, ptr @.str.115 }, %struct.rpm_regulator_data { ptr @.str.50, i32 80, ptr @pm8921_pldo, ptr @.str.116 }, %struct.rpm_regulator_data { ptr @.str.52, i32 81, ptr @pm8921_pldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.54, i32 82, ptr @pm8921_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.56, i32 83, ptr @pm8921_pldo, ptr @.str.73 }, %struct.rpm_regulator_data { ptr @.str.57, i32 84, ptr @pm8921_pldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.59, i32 85, ptr @pm8921_pldo, ptr @.str.118 }, %struct.rpm_regulator_data { ptr @.str.61, i32 86, ptr @pm8921_pldo, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.62, i32 87, ptr @pm8921_pldo, ptr @.str.118 }, %struct.rpm_regulator_data { ptr @.str.63, i32 88, ptr @pm8921_nldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.64, i32 90, ptr @pm8921_pldo, ptr @.str.116 }, %struct.rpm_regulator_data { ptr @.str.79, i32 91, ptr @pm8921_pldo, ptr @.str.115 }, %struct.rpm_regulator_data { ptr @.str.80, i32 92, ptr @pm8921_pldo, ptr @.str.117 }, %struct.rpm_regulator_data { ptr @.str.81, i32 93, ptr @pm8921_pldo, ptr @.str.115 }, %struct.rpm_regulator_data { ptr @.str.83, i32 94, ptr @pm8921_nldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.87, i32 97, ptr @pm8921_pldo, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.89, i32 98, ptr @pm8921_pldo, ptr @.str.119 }, %struct.rpm_regulator_data { ptr @.str.91, i32 99, ptr @pm8921_pldo, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.93, i32 100, ptr @pm8921_nldo1200, ptr @.str.121 }, %struct.rpm_regulator_data { ptr @.str.94, i32 101, ptr @pm8921_nldo1200, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.123, i32 102, ptr @pm8921_nldo1200, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.125, i32 103, ptr @pm8921_nldo1200, ptr @.str.126 }, %struct.rpm_regulator_data { ptr @.str.127, i32 104, ptr @pm8921_nldo1200, ptr @.str.128 }, %struct.rpm_regulator_data { ptr @.str.129, i32 105, ptr @pm8921_pldo, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.66, i32 106, ptr @pm8921_switch, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.104, i32 107, ptr @pm8921_switch, ptr @.str.131 }, %struct.rpm_regulator_data { ptr @.str.106, i32 108, ptr @pm8921_switch, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.132, i32 109, ptr @pm8921_switch, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.134, i32 110, ptr @pm8921_switch, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.135, i32 111, ptr @pm8921_switch, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.136, i32 112, ptr @pm8921_switch, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.137, i32 132, ptr @pm8921_switch, ptr @.str.138 }, %struct.rpm_regulator_data { ptr @.str.139, i32 13, ptr @pm8921_switch, ptr @.str.138 }, %struct.rpm_regulator_data { ptr @.str.98, i32 114, ptr @pm8921_ncp, ptr @.str.99 }, %struct.rpm_regulator_data zeroinitializer], [176 x i8] zeroinitializer }, align 32
@rpm_smb208_regulators = internal constant { [5 x %struct.rpm_regulator_data], [48 x i8] } { [5 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.140, i32 136, ptr @smb208_smps, ptr @.str.141 }, %struct.rpm_regulator_data { ptr @.str.142, i32 137, ptr @smb208_smps, ptr @.str.143 }, %struct.rpm_regulator_data { ptr @.str.144, i32 138, ptr @smb208_smps, ptr @.str.145 }, %struct.rpm_regulator_data { ptr @.str.146, i32 139, ptr @smb208_smps, ptr @.str.147 }, %struct.rpm_regulator_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@pm8018_smps = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 154, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s1\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s2\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s2\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s3\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s3\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s4\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s4\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s5\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s5\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l2\00", [29 x i8] zeroinitializer }, align 32
@pm8018_pldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l2\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l3\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l3\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l4\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l4\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l5\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l5\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l6\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l7\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l7\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l8\00", [29 x i8] zeroinitializer }, align 32
@pm8018_nldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l8\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l9\00", [29 x i8] zeroinitializer }, align 32
@pm8921_nldo1200 = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 124, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo1200_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, [76 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l9_l10_l11_l12\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l10\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l11\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l12\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l14\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l14\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs1\00", [27 x i8] zeroinitializer }, align 32
@pm8018_switch = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvs1_in\00", [24 x i8] zeroinitializer }, align 32
@uV_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpm_reg_set_uV_sel, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_uV_enable, ptr @rpm_reg_uV_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@smps_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 29, i32 12500 }, %struct.linear_range { i32 750000, i32 30, i32 89, i32 12500 }, %struct.linear_range { i32 1500000, i32 90, i32 153, i32 25000 }], [48 x i8] zeroinitializer }, align 32
@rpm8960_smps_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388607, i32 0 }, %struct.request_member { i32 1, i32 1023, i32 0 }, %struct.request_member { i32 0, i32 8388608, i32 23 }, %struct.request_member { i32 1, i32 1047552, i32 10 }, %struct.request_member { i32 1, i32 7340032, i32 20 }, %struct.request_member { i32 1, i32 8388608, i32 23 }, %struct.request_member { i32 0, i32 251658240, i32 24 }, %struct.request_member { i32 0, i32 -268435456, i32 28 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 1, i32 520093696, i32 24 }, %struct.request_member { i32 1, i32 1610612736, i32 29 }, %struct.request_member zeroinitializer, i32 2 }, [52 x i8] zeroinitializer }, align 32
@pldo_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 59, i32 12500 }, %struct.linear_range { i32 1500000, i32 60, i32 123, i32 25000 }, %struct.linear_range { i32 3100000, i32 124, i32 160, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@rpm8960_ldo_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388607, i32 0 }, %struct.request_member { i32 1, i32 1023, i32 0 }, %struct.request_member { i32 0, i32 8388608, i32 23 }, %struct.request_member { i32 1, i32 1047552, i32 10 }, %struct.request_member { i32 1, i32 7340032, i32 20 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 251658240, i32 24 }, %struct.request_member { i32 0, i32 -268435456, i32 28 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 2 }, [52 x i8] zeroinitializer }, align 32
@nldo_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@nldo1200_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 59, i32 6250 }, %struct.linear_range { i32 750000, i32 60, i32 123, i32 12500 }], [32 x i8] zeroinitializer }, align 32
@switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_switch_enable, ptr @rpm_reg_switch_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rpm8960_switch_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 2, i32 1 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 60, i32 2 }, %struct.request_member { i32 0, i32 960, i32 6 }, %struct.request_member { i32 0, i32 1, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 3072, i32 10 }, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l0\00", [29 x i8] zeroinitializer }, align 32
@pm8058_nldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_l0_l1_lvs\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l1\00", [29 x i8] zeroinitializer }, align 32
@pm8058_pldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l2_l11_l12\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd_l3_l4_l5\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l6_l7\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l9\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l10\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l13\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l13_l16\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l14_l15\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l15\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l16\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l17\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l17_l18\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l18\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l19\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l19_l20\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l20\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l21\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l21\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l22\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l22\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l23\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l23_l24_l25\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l24\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l25\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s0\00", [29 x i8] zeroinitializer }, align 32
@pm8058_smps = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 154, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s0\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs0\00", [27 x i8] zeroinitializer }, align 32
@pm8058_switch = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ncp\00", [28 x i8] zeroinitializer }, align 32
@pm8058_ncp = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ncp_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ncp_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_ncp\00", [24 x i8] zeroinitializer }, align 32
@mV_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpm_reg_set_mV_sel, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_mV_enable, ptr @rpm_reg_mV_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rpm8660_ldo_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member { i32 0, i32 4095, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 16773120, i32 12 }, %struct.request_member { i32 1, i32 1, i32 0 }, %struct.request_member { i32 1, i32 8190, i32 1 }, %struct.request_member { i32 0, i32 50331648, i32 24 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 1006632960, i32 26 }, %struct.request_member { i32 0, i32 -1073741824, i32 30 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 2 }, [52 x i8] zeroinitializer }, align 32
@rpm8660_smps_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member { i32 0, i32 4095, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 16773120, i32 12 }, %struct.request_member { i32 1, i32 1, i32 0 }, %struct.request_member { i32 1, i32 8190, i32 1 }, %struct.request_member { i32 0, i32 50331648, i32 24 }, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 1006632960, i32 26 }, %struct.request_member { i32 0, i32 -1073741824, i32 30 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 1, i32 2088960, i32 13 }, %struct.request_member { i32 1, i32 6291456, i32 21 }, %struct.request_member zeroinitializer, i32 2 }, [52 x i8] zeroinitializer }, align 32
@rpm8660_switch_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 2, i32 1 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 60, i32 2 }, %struct.request_member { i32 0, i32 192, i32 6 }, %struct.request_member { i32 0, i32 1, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 768, i32 8 }, i32 1 }, [52 x i8] zeroinitializer }, align 32
@ncp_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 31, i32 50000 }], [16 x i8] zeroinitializer }, align 32
@rpm8660_ncp_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member { i32 0, i32 4095, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 4096, i32 12 }, %struct.request_member { i32 0, i32 8192, i32 13 }, %struct.request_member { i32 0, i32 4177920, i32 14 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 1 }, [52 x i8] zeroinitializer }, align 32
@pm8901_nldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, [76 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l0\00", [25 x i8] zeroinitializer }, align 32
@pm8901_pldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, [76 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l1\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l6\00", [25 x i8] zeroinitializer }, align 32
@pm8901_ftsmps = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 101, i32 0, ptr @mV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ftsmps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 1, i8 0 }, [76 x i8] zeroinitializer }, align 32
@pm8901_switch = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8660_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvs0_in\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs2\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvs2_in\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs3\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvs3_in\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mvs\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mvs_in\00", [25 x i8] zeroinitializer }, align 32
@ftsmps_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 6, i32 50000 }, %struct.linear_range { i32 700000, i32 7, i32 63, i32 12500 }, %struct.linear_range { i32 1500000, i32 64, i32 100, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@pm8921_smps = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 154, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smps_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 1, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s7\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s7\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s8\00", [25 x i8] zeroinitializer }, align 32
@pm8921_nldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @nldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, [76 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vdd_l1_l2_l12_l18\00", [46 x i8] zeroinitializer }, align 32
@pm8921_pldo = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 161, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @pldo_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ldo_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 1 }, [76 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l3_l15_l17\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l4_l14\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_l5_l8_l16\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l9_l11\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l10_l22\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l21_l23_l29\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l24\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l25\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l26\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l26\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l27\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l27\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l28\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l28\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l29\00", [28 x i8] zeroinitializer }, align 32
@pm8921_switch = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_switch_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vin_lvs1_3_6\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vin_lvs2\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs4\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vin_lvs4_5_7\00", [19 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs5\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs6\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs7\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb-switch\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_5vs\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi-switch\00", [20 x i8] zeroinitializer }, align 32
@pm8921_ncp = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ncp_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_ncp_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@rpm8960_ncp_parts = internal constant { %struct.rpm_reg_parts, [52 x i8] } { %struct.rpm_reg_parts { %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388607, i32 0 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, %struct.request_member { i32 0, i32 8388608, i32 23 }, %struct.request_member { i32 0, i32 16777216, i32 24 }, %struct.request_member { i32 0, i32 1040187392, i32 25 }, %struct.request_member zeroinitializer, %struct.request_member zeroinitializer, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s1a\00", [28 x i8] zeroinitializer }, align 32
@smb208_smps = internal constant { %struct.qcom_rpm_reg, [76 x i8] } { %struct.qcom_rpm_reg { ptr null, %struct.mutex zeroinitializer, ptr null, %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 235, i32 0, ptr @uV_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @smb208_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @rpm8960_smps_parts, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, i8 0, i8 0 }, [76 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_s1a\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s1b\00", [28 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_s1b\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s2a\00", [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_s2a\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s2b\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_s2b\00", [24 x i8] zeroinitializer }, align 32
@smb208_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 29, i32 12500 }, %struct.linear_range { i32 750000, i32 30, i32 89, i32 12500 }, %struct.linear_range { i32 1500000, i32 90, i32 153, i32 25000 }, %struct.linear_range { i32 3100000, i32 154, i32 234, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 1200000, i64 1280000, i64 1370000, i64 1480000, i64 1600000, i64 1750000, i64 1920000, i64 2130000, i64 2400000, i64 2740000, i64 3200000, i64 3840000, i64 4800000, i64 6400000, i64 9600000, i64 19200000]
@__sancov_gen_cov_switch_values.148 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"rpm_reg_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 990, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 993, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"rpm_of_match\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 926, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 948, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 954, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 964, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 982, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 688, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 692, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 704, i32 9 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 709, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 717, i32 9 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 722, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 757, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 763, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 658, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 661, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 672, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [22 x i8] c"rpm_pm8018_regulators\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 778, i32 40 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"rpm_pm8058_regulators\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 804, i32 40 }
@___asan_gen_.260 = private unnamed_addr constant [22 x i8] c"rpm_pm8901_regulators\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 845, i32 40 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"rpm_pm8921_regulators\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 869, i32 40 }
@___asan_gen_.266 = private unnamed_addr constant [22 x i8] c"rpm_smb208_regulators\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 918, i32 40 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 779, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant [12 x i8] c"pm8018_smps\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 465, i32 34 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 779, i32 48 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 780, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 780, i32 48 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 781, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 781, i32 48 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 782, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 782, i32 48 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 783, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 783, i32 48 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 785, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"pm8018_pldo\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 445, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 785, i32 48 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 786, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 786, i32 48 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 787, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 787, i32 48 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 788, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 788, i32 48 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 789, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 789, i32 48 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 790, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 791, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant [12 x i8] c"pm8018_nldo\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 455, i32 34 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 791, i32 48 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 792, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant [16 x i8] c"pm8921_nldo1200\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 587, i32 34 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 793, i32 13 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 794, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 795, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 796, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 797, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 797, i32 48 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 799, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant [14 x i8] c"pm8018_switch\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 475, i32 34 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 799, i32 50 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"uV_ops\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 410, i32 35 }
@___asan_gen_.383 = private unnamed_addr constant [12 x i8] c"smps_ranges\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 166, i32 34 }
@___asan_gen_.386 = private unnamed_addr constant [19 x i8] c"rpm8960_smps_parts\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 117, i32 35 }
@___asan_gen_.389 = private unnamed_addr constant [12 x i8] c"pldo_ranges\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 151, i32 34 }
@___asan_gen_.392 = private unnamed_addr constant [18 x i8] c"rpm8960_ldo_parts\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 106, i32 35 }
@___asan_gen_.395 = private unnamed_addr constant [12 x i8] c"nldo_ranges\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 157, i32 34 }
@___asan_gen_.398 = private unnamed_addr constant [16 x i8] c"nldo1200_ranges\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 161, i32 34 }
@___asan_gen_.401 = private unnamed_addr constant [11 x i8] c"switch_ops\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 436, i32 35 }
@___asan_gen_.404 = private unnamed_addr constant [21 x i8] c"rpm8960_switch_parts\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 131, i32 35 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 805, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant [12 x i8] c"pm8058_nldo\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 493, i32 34 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 805, i32 50 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 806, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant [12 x i8] c"pm8058_pldo\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 483, i32 34 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 807, i32 50 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 808, i32 50 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 811, i32 50 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 814, i32 50 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 815, i32 50 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 818, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 818, i32 50 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 819, i32 50 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 820, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 821, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 822, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 822, i32 50 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 823, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 824, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 824, i32 50 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 825, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 826, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 826, i32 50 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 827, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 827, i32 50 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 828, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 828, i32 50 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 829, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 830, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 832, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant [12 x i8] c"pm8058_smps\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 503, i32 34 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 832, i32 50 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 838, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant [14 x i8] c"pm8058_switch\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 521, i32 34 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 841, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant [11 x i8] c"pm8058_ncp\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 513, i32 34 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 841, i32 46 }
@___asan_gen_.518 = private unnamed_addr constant [7 x i8] c"mV_ops\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 423, i32 35 }
@___asan_gen_.521 = private unnamed_addr constant [18 x i8] c"rpm8660_ldo_parts\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 65, i32 35 }
@___asan_gen_.524 = private unnamed_addr constant [19 x i8] c"rpm8660_smps_parts\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 76, i32 35 }
@___asan_gen_.527 = private unnamed_addr constant [21 x i8] c"rpm8660_switch_parts\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 89, i32 35 }
@___asan_gen_.530 = private unnamed_addr constant [11 x i8] c"ncp_ranges\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 185, i32 34 }
@___asan_gen_.533 = private unnamed_addr constant [18 x i8] c"rpm8660_ncp_parts\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 98, i32 35 }
@___asan_gen_.536 = private unnamed_addr constant [12 x i8] c"pm8901_nldo\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 539, i32 34 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 846, i32 48 }
@___asan_gen_.542 = private unnamed_addr constant [12 x i8] c"pm8901_pldo\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 529, i32 34 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 847, i32 48 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 852, i32 48 }
@___asan_gen_.551 = private unnamed_addr constant [14 x i8] c"pm8901_ftsmps\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 549, i32 34 }
@___asan_gen_.554 = private unnamed_addr constant [14 x i8] c"pm8901_switch\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 559, i32 34 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 860, i32 50 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 862, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 862, i32 50 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 863, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 863, i32 50 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 865, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 865, i32 48 }
@___asan_gen_.578 = private unnamed_addr constant [14 x i8] c"ftsmps_ranges\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 172, i32 34 }
@___asan_gen_.581 = private unnamed_addr constant [12 x i8] c"pm8921_smps\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 597, i32 34 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 874, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 874, i32 48 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 875, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 875, i32 48 }
@___asan_gen_.596 = private unnamed_addr constant [12 x i8] c"pm8921_nldo\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 577, i32 34 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 877, i32 47 }
@___asan_gen_.602 = private unnamed_addr constant [12 x i8] c"pm8921_pldo\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 567, i32 34 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 879, i32 47 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 880, i32 47 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 881, i32 47 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 885, i32 47 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 886, i32 48 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 894, i32 48 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 897, i32 52 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 898, i32 52 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 899, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 899, i32 52 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 900, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 900, i32 52 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 901, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 901, i32 52 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 902, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant [14 x i8] c"pm8921_switch\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 615, i32 34 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 904, i32 50 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 905, i32 50 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 907, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 907, i32 50 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 908, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 909, i32 4 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 910, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 912, i32 4 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 912, i32 59 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 913, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant [11 x i8] c"pm8921_ncp\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 607, i32 34 }
@___asan_gen_.686 = private unnamed_addr constant [18 x i8] c"rpm8960_ncp_parts\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 140, i32 35 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 919, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant [12 x i8] c"smb208_smps\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 620, i32 34 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 919, i32 47 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 920, i32 4 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 920, i32 47 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 921, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 921, i32 47 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 922, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 922, i32 47 }
@___asan_gen_.716 = private unnamed_addr constant [14 x i8] c"smb208_ranges\00", align 1
@___asan_gen_.717 = private constant [42 x i8] c"../drivers/regulator/qcom_rpm-regulator.c\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 178, i32 34 }
@llvm.compiler.used = appending global [206 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_rpm_reg_exit, ptr @__initcall__kmod_qcom_rpm_regulator__288_1002_rpm_reg_init4, ptr @rpm_reg_exit, ptr @rpm_reg_of_parse._entry, ptr @rpm_reg_of_parse._entry.17, ptr @rpm_reg_of_parse._entry.21, ptr @rpm_reg_of_parse._entry.24, ptr @rpm_reg_of_parse._entry.27, ptr @rpm_reg_of_parse._entry_ptr, ptr @rpm_reg_of_parse._entry_ptr.19, ptr @rpm_reg_of_parse._entry_ptr.23, ptr @rpm_reg_of_parse._entry_ptr.26, ptr @rpm_reg_of_parse._entry_ptr.29, ptr @rpm_reg_of_parse_freq._entry, ptr @rpm_reg_of_parse_freq._entry.33, ptr @rpm_reg_of_parse_freq._entry_ptr, ptr @rpm_reg_of_parse_freq._entry_ptr.35, ptr @rpm_reg_probe._entry, ptr @rpm_reg_probe._entry.10, ptr @rpm_reg_probe._entry.6, ptr @rpm_reg_probe._entry_ptr, ptr @rpm_reg_probe._entry_ptr.12, ptr @rpm_reg_probe._entry_ptr.8, ptr @rpm_reg_driver, ptr @.str, ptr @rpm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rpm_reg_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @rpm_pm8018_regulators, ptr @rpm_pm8058_regulators, ptr @rpm_pm8901_regulators, ptr @rpm_pm8921_regulators, ptr @rpm_smb208_regulators, ptr @.str.36, ptr @pm8018_smps, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @pm8018_pldo, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @pm8018_nldo, ptr @.str.58, ptr @.str.59, ptr @pm8921_nldo1200, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @pm8018_switch, ptr @.str.67, ptr @uV_ops, ptr @smps_ranges, ptr @rpm8960_smps_parts, ptr @pldo_ranges, ptr @rpm8960_ldo_parts, ptr @nldo_ranges, ptr @nldo1200_ranges, ptr @switch_ops, ptr @rpm8960_switch_parts, ptr @.str.68, ptr @pm8058_nldo, ptr @.str.69, ptr @.str.70, ptr @pm8058_pldo, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @pm8058_smps, ptr @.str.96, ptr @.str.97, ptr @pm8058_switch, ptr @.str.98, ptr @pm8058_ncp, ptr @.str.99, ptr @mV_ops, ptr @rpm8660_ldo_parts, ptr @rpm8660_smps_parts, ptr @rpm8660_switch_parts, ptr @ncp_ranges, ptr @rpm8660_ncp_parts, ptr @pm8901_nldo, ptr @.str.100, ptr @pm8901_pldo, ptr @.str.101, ptr @.str.102, ptr @pm8901_ftsmps, ptr @pm8901_switch, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @ftsmps_ranges, ptr @pm8921_smps, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @pm8921_nldo, ptr @.str.114, ptr @pm8921_pldo, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @pm8921_switch, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @pm8921_ncp, ptr @rpm8960_ncp_parts, ptr @.str.140, ptr @smb208_smps, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @smb208_ranges], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_of_parse_freq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8018_regulators to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8058_regulators to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8901_regulators to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8921_regulators to i32), i32 688, i32 864, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smb208_regulators to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8018_smps to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8018_pldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8018_nldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_nldo1200 to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8018_switch to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uV_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8960_smps_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pldo_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8960_ldo_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo1200_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8960_switch_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_nldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_pldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_smps to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_switch to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8058_ncp to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mV_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8660_ldo_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8660_smps_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8660_switch_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncp_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8660_ncp_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8901_nldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8901_pldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8901_ftsmps to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8901_switch to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_smps to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_nldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_pldo to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_switch to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8921_ncp to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm8960_ncp_parts to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb208_smps to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb208_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpm_reg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpm_reg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpm_reg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @rpm_of_match, ptr noundef %dev) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool11.not85 = icmp eq ptr %8, null
  br i1 %tobool11.not85, label %if.end10.cleanup_crit_edge, label %for.body.lr.ph

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %reg.086 = phi ptr [ %6, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call13 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3264) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %for.body.cleanup_crit_edge, label %if.end16

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %template = getelementptr inbounds %struct.rpm_regulator_data, ptr %reg.086, i32 0, i32 2
  %9 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %template, align 4
  %11 = call ptr @memcpy(ptr %call13, ptr %10, i32 372)
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @rpm_reg_probe.__key) #6
  %dev21 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 2
  %12 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev21, align 4
  %resource = getelementptr inbounds %struct.rpm_regulator_data, ptr %reg.086, i32 0, i32 1
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 4
  %resource22 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 5
  %15 = ptrtoint ptr %resource22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %resource22, align 4
  %16 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %4, ptr %call13, align 4
  %desc = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3
  %id = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %id, align 4
  %owner = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3, i32 13
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type, align 4
  %20 = ptrtoint ptr %reg.086 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.086, align 4
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %desc, align 4
  %supply = getelementptr inbounds %struct.rpm_regulator_data, ptr %reg.086, i32 0, i32 3
  %23 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %supply, align 4
  %supply_name = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %supply_name, align 4
  %26 = load ptr, ptr %reg.086, align 4
  %of_match = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %of_match to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %of_match, align 4
  %of_parse_cb = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call13, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %of_parse_cb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rpm_reg_of_parse, ptr %of_parse_cb, align 4
  %29 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %config, align 4
  %30 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13, ptr %driver_data, align 4
  %call37 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end42, label %for.inc

do.end42:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %reg.086 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.086, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %32) #9
  %33 = ptrtoint ptr %call37 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end16
  %incdec.ptr = getelementptr %struct.rpm_regulator_data, ptr %reg.086, i32 1
  %34 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %incdec.ptr, align 4
  %tobool11.not = icmp eq ptr %35, null
  br i1 %tobool11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end42, %for.body.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %33, %do.end42 ], [ -19, %do.end8 ], [ -19, %do.end ], [ 0, %if.end10.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_of_parse(ptr noundef %node, ptr nocapture noundef readnone %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %freq.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !393
  %call.i = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %parts = getelementptr inbounds %struct.qcom_rpm_reg, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parts, align 4
  %pd = getelementptr inbounds %struct.rpm_reg_parts, ptr %6, i32 0, i32 3
  %mask.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %6, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %lor.lhs.false.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then
  %shift.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %6, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift.i, align 4
  %shl.i = shl nuw i32 1, %10
  %11 = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.not = icmp eq i32 %11, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false.i.do.end_crit_edge, label %rpm_reg_set.exit

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

rpm_reg_set.exit:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %8, -1
  %12 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pd, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and4.i = and i32 %15, %neg.i
  store i32 %and4.i, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i, align 4
  %shl6.i = shl nuw i32 1, %17
  %18 = load i32, ptr %pd, align 4
  %arrayidx9.i = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %18
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9.i, align 4
  %or.i = or i32 %20, %shl6.i
  store i32 %or.i, ptr %arrayidx9.i, align 4
  br label %if.end4

do.end:                                           ; preds = %lor.lhs.false.i.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end4:                                          ; preds = %rpm_reg_set.exit, %entry.if.end4_crit_edge
  %parts5 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parts5, align 4
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %22, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not = icmp eq i32 %24, 0
  br i1 %tobool6.not, label %if.end4.if.end11_crit_edge, label %if.then7

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #6
  %25 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %freq.i, align 4, !annotation !393
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.30, ptr noundef nonnull %freq.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i127 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i127, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.then7
  %26 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freq.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %for.inc.15.i [
    i32 19200000, label %for.cond.preheader.i.if.then2.i_crit_edge
    i32 9600000, label %if.then2.fold.split.i
    i32 6400000, label %if.then2.fold.split21.i
    i32 4800000, label %if.then2.fold.split22.i
    i32 3840000, label %if.then2.fold.split23.i
    i32 3200000, label %if.then2.fold.split24.i
    i32 2740000, label %if.then2.fold.split25.i
    i32 2400000, label %if.then2.fold.split26.i
    i32 2130000, label %if.then2.fold.split27.i
    i32 1920000, label %if.then2.fold.split28.i
    i32 1750000, label %if.then2.fold.split29.i
    i32 1600000, label %if.then2.fold.split30.i
    i32 1480000, label %if.then2.fold.split31.i
    i32 1370000, label %if.then2.fold.split32.i
    i32 1280000, label %if.then2.fold.split33.i
    i32 1200000, label %if.then2.fold.split34.i
  ]

for.cond.preheader.i.if.then2.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #9
  br label %rpm_reg_of_parse_freq.exit

if.then2.fold.split.i:                            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split21.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split22.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split23.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split24.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split25.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split26.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split27.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split28.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split29.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split30.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split31.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split32.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split33.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.fold.split34.i:                          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then2.i:                                       ; preds = %if.then2.fold.split34.i, %if.then2.fold.split33.i, %if.then2.fold.split32.i, %if.then2.fold.split31.i, %if.then2.fold.split30.i, %if.then2.fold.split29.i, %if.then2.fold.split28.i, %if.then2.fold.split27.i, %if.then2.fold.split26.i, %if.then2.fold.split25.i, %if.then2.fold.split24.i, %if.then2.fold.split23.i, %if.then2.fold.split22.i, %if.then2.fold.split21.i, %if.then2.fold.split.i, %for.cond.preheader.i.if.then2.i_crit_edge
  %i.019.lcssa.i = phi i32 [ 1, %for.cond.preheader.i.if.then2.i_crit_edge ], [ 2, %if.then2.fold.split.i ], [ 3, %if.then2.fold.split21.i ], [ 4, %if.then2.fold.split22.i ], [ 5, %if.then2.fold.split23.i ], [ 6, %if.then2.fold.split24.i ], [ 7, %if.then2.fold.split25.i ], [ 8, %if.then2.fold.split26.i ], [ 9, %if.then2.fold.split27.i ], [ 10, %if.then2.fold.split28.i ], [ 11, %if.then2.fold.split29.i ], [ 12, %if.then2.fold.split30.i ], [ 13, %if.then2.fold.split31.i ], [ 14, %if.then2.fold.split32.i ], [ 15, %if.then2.fold.split33.i ], [ 16, %if.then2.fold.split34.i ]
  %29 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parts5, align 4
  %freq3.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %30, i32 0, i32 11
  %mask.i.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %30, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i, label %if.then2.i.rpm_reg_of_parse_freq.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.then2.i.rpm_reg_of_parse_freq.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpm_reg_of_parse_freq.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.then2.i
  %shift.i.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %30, i32 0, i32 11, i32 2
  %33 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %shift.i.i, align 4
  %shl.i.i = shl i32 %i.019.lcssa.i, %34
  %neg.i.i = xor i32 %32, -1
  %and.i.i = and i32 %shl.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rpm_reg_of_parse_freq.exit.thread_crit_edge

lor.lhs.false.i.i.rpm_reg_of_parse_freq.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpm_reg_of_parse_freq.exit.thread

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %freq3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %freq3.i, align 4
  %arrayidx.i.i = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %and4.i.i = and i32 %38, %neg.i.i
  store i32 %and4.i.i, ptr %arrayidx.i.i, align 4
  %39 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %shift.i.i, align 4
  %shl6.i.i = shl i32 %i.019.lcssa.i, %40
  %41 = load i32, ptr %freq3.i, align 4
  %arrayidx9.i.i = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %41
  %42 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i.i, align 4
  %or.i.i = or i32 %43, %shl6.i.i
  store i32 %or.i.i, ptr %arrayidx9.i.i, align 4
  br label %rpm_reg_of_parse_freq.exit.thread

for.inc.15.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %27) #9
  br label %rpm_reg_of_parse_freq.exit

rpm_reg_of_parse_freq.exit.thread:                ; preds = %if.end.i.i, %lor.lhs.false.i.i.rpm_reg_of_parse_freq.exit.thread_crit_edge, %if.then2.i.rpm_reg_of_parse_freq.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  br label %if.end11

rpm_reg_of_parse_freq.exit:                       ; preds = %for.inc.15.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  br label %cleanup

if.end11:                                         ; preds = %rpm_reg_of_parse_freq.exit.thread, %if.end4.if.end11_crit_edge
  %44 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parts5, align 4
  %mask13 = getelementptr inbounds %struct.rpm_reg_parts, ptr %45, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %mask13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool14.not = icmp eq i32 %47, 0
  br i1 %tobool14.not, label %if.end11.if.end27_crit_edge, label %if.then15

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then15:                                        ; preds = %if.end11
  %call.i129 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %tobool.i130.not = icmp eq ptr %call.i129, null
  %48 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parts5, align 4
  %pm18 = getelementptr inbounds %struct.rpm_reg_parts, ptr %49, i32 0, i32 6
  %conv = zext i1 %tobool.i130.not to i32
  %mask.i131 = getelementptr inbounds %struct.rpm_reg_parts, ptr %49, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %mask.i131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i132 = icmp eq i32 %51, 0
  br i1 %cmp.i132, label %if.then15.do.end25_crit_edge, label %lor.lhs.false.i138

if.then15.do.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

lor.lhs.false.i138:                               ; preds = %if.then15
  %shift.i133 = getelementptr inbounds %struct.rpm_reg_parts, ptr %49, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %shift.i133 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %shift.i133, align 4
  %shl.i134 = shl nuw i32 %conv, %53
  %neg.i135 = xor i32 %51, -1
  %and.i136 = and i32 %shl.i134, %neg.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %rpm_reg_set.exit146, label %lor.lhs.false.i138.do.end25_crit_edge

lor.lhs.false.i138.do.end25_crit_edge:            ; preds = %lor.lhs.false.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

rpm_reg_set.exit146:                              ; preds = %lor.lhs.false.i138
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %pm18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pm18, align 4
  %arrayidx.i139 = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %55
  %56 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i139, align 4
  %and4.i140 = and i32 %57, %neg.i135
  store i32 %and4.i140, ptr %arrayidx.i139, align 4
  %58 = ptrtoint ptr %shift.i133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %shift.i133, align 4
  %shl6.i141 = shl nuw i32 %conv, %59
  %60 = load i32, ptr %pm18, align 4
  %arrayidx9.i142 = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %60
  %61 = ptrtoint ptr %arrayidx9.i142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx9.i142, align 4
  %or.i143 = or i32 %62, %shl6.i141
  store i32 %or.i143, ptr %arrayidx9.i142, align 4
  br label %if.end27

do.end25:                                         ; preds = %lor.lhs.false.i138.do.end25_crit_edge, %if.then15.do.end25_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end27:                                         ; preds = %rpm_reg_set.exit146, %if.end11.if.end27_crit_edge
  %63 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parts5, align 4
  %mask29 = getelementptr inbounds %struct.rpm_reg_parts, ptr %64, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %mask29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mask29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool30.not = icmp eq i32 %66, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.then31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end27
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  %67 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %67)
  %cmp33 = icmp eq i32 %67, -22
  br i1 %cmp33, label %if.end43.thread, label %if.else

if.end43.thread:                                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %val, align 4
  br label %if.end70

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp36 = icmp slt i32 %call.i.i, 0
  br i1 %cmp36, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end43:                                         ; preds = %if.else
  %69 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr = load i32, ptr %val, align 4
  %70 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %.pr, label %if.end43.do.end69_crit_edge [
    i32 0, label %if.end43.if.end70_crit_edge
    i32 1, label %sw.bb44
    i32 2, label %sw.bb45
    i32 3, label %sw.bb56
    i32 4, label %sw.epilog
  ]

if.end43.if.end70_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.end43.do.end69_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

sw.bb44:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

sw.bb45:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parts5, align 4
  %mask48 = getelementptr inbounds %struct.rpm_reg_parts, ptr %72, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %mask48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mask48, align 4
  %shift = getelementptr inbounds %struct.rpm_reg_parts, ptr %72, i32 0, i32 5, i32 2
  %75 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %shift, align 4
  %shr = lshr i32 %74, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp51 = icmp eq i32 %shr, 3
  %. = select i1 %cmp51, i32 2, i32 3
  br label %if.end70

sw.bb56:                                          ; preds = %if.end43
  %supports_force_mode_auto = getelementptr inbounds %struct.qcom_rpm_reg, ptr %1, i32 0, i32 9
  %77 = ptrtoint ptr %supports_force_mode_auto to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %supports_force_mode_auto, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool57.not = icmp eq i8 %78, 0
  br i1 %tobool57.not, label %sw.bb56.do.end69_crit_edge, label %sw.bb56.if.end70_crit_edge

sw.bb56.if.end70_crit_edge:                       ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

sw.bb56.do.end69_crit_edge:                       ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

sw.epilog:                                        ; preds = %if.end43
  %supports_force_mode_bypass = getelementptr inbounds %struct.qcom_rpm_reg, ptr %1, i32 0, i32 10
  %79 = ptrtoint ptr %supports_force_mode_bypass to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %supports_force_mode_bypass, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool61.not = icmp eq i8 %80, 0
  br i1 %tobool61.not, label %sw.epilog.do.end69_crit_edge, label %sw.epilog.if.end70_crit_edge

sw.epilog.if.end70_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

sw.epilog.do.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end69

do.end69:                                         ; preds = %sw.epilog.do.end69_crit_edge, %sw.bb56.do.end69_crit_edge, %if.end43.do.end69_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end70:                                         ; preds = %sw.epilog.if.end70_crit_edge, %sw.bb56.if.end70_crit_edge, %sw.bb45, %sw.bb44, %if.end43.if.end70_crit_edge, %if.end43.thread
  %force_mode.0173 = phi i32 [ 4, %sw.epilog.if.end70_crit_edge ], [ 2, %sw.bb56.if.end70_crit_edge ], [ %., %sw.bb45 ], [ 1, %sw.bb44 ], [ 0, %if.end43.thread ], [ %.pr, %if.end43.if.end70_crit_edge ]
  %81 = ptrtoint ptr %parts5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parts5, align 4
  %fm72 = getelementptr inbounds %struct.rpm_reg_parts, ptr %82, i32 0, i32 5
  %mask.i147 = getelementptr inbounds %struct.rpm_reg_parts, ptr %82, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %mask.i147 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i148 = icmp eq i32 %84, 0
  br i1 %cmp.i148, label %if.end70.do.end78_crit_edge, label %lor.lhs.false.i154

if.end70.do.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

lor.lhs.false.i154:                               ; preds = %if.end70
  %shift.i149 = getelementptr inbounds %struct.rpm_reg_parts, ptr %82, i32 0, i32 5, i32 2
  %85 = ptrtoint ptr %shift.i149 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %shift.i149, align 4
  %shl.i150 = shl i32 %force_mode.0173, %86
  %neg.i151 = xor i32 %84, -1
  %and.i152 = and i32 %shl.i150, %neg.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152)
  %tobool.not.i153 = icmp eq i32 %and.i152, 0
  br i1 %tobool.not.i153, label %rpm_reg_set.exit162, label %lor.lhs.false.i154.do.end78_crit_edge

lor.lhs.false.i154.do.end78_crit_edge:            ; preds = %lor.lhs.false.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

rpm_reg_set.exit162:                              ; preds = %lor.lhs.false.i154
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %fm72 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fm72, align 4
  %arrayidx.i155 = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %88
  %89 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i155, align 4
  %and4.i156 = and i32 %90, %neg.i151
  store i32 %and4.i156, ptr %arrayidx.i155, align 4
  %91 = ptrtoint ptr %shift.i149 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %shift.i149, align 4
  %shl6.i157 = shl i32 %force_mode.0173, %92
  %93 = load i32, ptr %fm72, align 4
  %arrayidx9.i158 = getelementptr %struct.qcom_rpm_reg, ptr %1, i32 0, i32 6, i32 %93
  %94 = ptrtoint ptr %arrayidx9.i158 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx9.i158, align 4
  %or.i159 = or i32 %95, %shl6.i157
  store i32 %or.i159, ptr %arrayidx9.i158, align 4
  br label %cleanup

do.end78:                                         ; preds = %lor.lhs.false.i154.do.end78_crit_edge, %if.end70.do.end78_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %rpm_reg_set.exit162, %do.end69, %do.end41, %if.end27.cleanup_crit_edge, %do.end25, %rpm_reg_of_parse_freq.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end25 ], [ -22, %do.end69 ], [ -22, %do.end78 ], [ %67, %do.end41 ], [ -22, %rpm_reg_of_parse_freq.exit ], [ 0, %rpm_reg_set.exit162 ], [ 0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_uV_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %uV = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @regulator_list_voltage_linear_range(ptr noundef %rdev, i32 noundef %selector) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end6.if.then11_crit_edge, label %if.then7

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then7:                                         ; preds = %if.end6
  %shift.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %call3, %7
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %shl.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end9, label %if.end9.thread34, !prof !395

if.end9.thread34:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 193, i32 noundef 9, ptr noundef null) #6
  br label %if.end13

if.end9:                                          ; preds = %if.then7
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uV, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %13, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift.i, align 4
  %shl27.i = shl i32 %call3, %15
  %16 = load i32, ptr %uV, align 4
  %arrayidx30.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %16
  %17 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30.i, align 4
  %or.i = or i32 %18, %shl27.i
  store i32 %or.i, ptr %arrayidx30.i, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 4
  %23 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %20, i32 noundef 0, i32 noundef %22, ptr noundef %val.i, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end9.if.then11_crit_edge, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %uV12 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %uV12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3, ptr %uV12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge, %if.end9.thread34
  %ret.032 = phi i32 [ 0, %if.then11 ], [ %call.i, %if.end9.if.end13_crit_edge ], [ -22, %if.end9.thread34 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.032, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %uV = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uV, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_uV_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %uV2 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %uV2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uV2, align 4
  %shift.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %5, %7
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %shl.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %rpm_reg_write.exit, label %rpm_reg_write.exit.thread, !prof !395

rpm_reg_write.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 193, i32 noundef 9, ptr noundef null) #6
  br label %if.end5

rpm_reg_write.exit:                               ; preds = %if.end
  %uV = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uV, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %13, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift.i, align 4
  %shl27.i = shl i32 %5, %15
  %16 = load i32, ptr %uV, align 4
  %arrayidx30.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %16
  %17 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30.i, align 4
  %or.i = or i32 %18, %shl27.i
  store i32 %or.i, ptr %arrayidx30.i, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 4
  %23 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %20, i32 noundef 0, i32 noundef %22, ptr noundef %val.i, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then4, label %rpm_reg_write.exit.if.end5_crit_edge

rpm_reg_write.exit.if.end5_crit_edge:             ; preds = %rpm_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %rpm_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %27 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %is_enabled, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %rpm_reg_write.exit.if.end5_crit_edge, %rpm_reg_write.exit.thread
  %retval.0.i19 = phi i32 [ -22, %rpm_reg_write.exit.thread ], [ 0, %if.then4 ], [ %call.i, %rpm_reg_write.exit.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i19, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_uV_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %uV = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 1
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %5, -1
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uV, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %9, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 4
  %14 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %11, i32 noundef 0, i32 noundef %13, ptr noundef %val.i, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %is_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_enabled, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_load(ptr noundef %rdev, i32 noundef %load_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %ia = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 4
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shift = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %shr = lshr i32 %3, %5
  %div = sdiv i32 %load_uA, 1000
  %6 = tail call i32 @llvm.smin.i32(i32 %div, i32 %shr)
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift, align 4
  %shl.i = shl i32 %6, %8
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %10, -1
  %and.i = and i32 %shl.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end22.i, label %do.end.i, !prof !395

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 193, i32 noundef 9, ptr noundef null) #6
  br label %rpm_reg_write.exit

if.end22.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %ia to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ia, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %14, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift, align 4
  %shl27.i = shl i32 %6, %16
  %17 = load i32, ptr %ia, align 4
  %arrayidx30.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %17
  %18 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx30.i, align 4
  %or.i = or i32 %19, %shl27.i
  store i32 %or.i, ptr %arrayidx30.i, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource.i, align 4
  %24 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %21, i32 noundef 0, i32 noundef %23, ptr noundef %val.i, i32 noundef %27) #6
  br label %rpm_reg_write.exit

rpm_reg_write.exit:                               ; preds = %if.end22.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call.i, %if.end22.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %rpm_reg_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rpm_reg_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_switch_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %shift.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift.i, align 4
  %shl.i = shl nuw i32 1, %5
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %8 = and i32 %shl.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.not = icmp eq i32 %8, 0
  br i1 %tobool.not.i.not, label %rpm_reg_write.exit.thread, label %rpm_reg_write.exit, !prof !396

rpm_reg_write.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 193, i32 noundef 9, ptr noundef null) #6
  br label %if.end4

rpm_reg_write.exit:                               ; preds = %if.end
  %neg.i = xor i32 %7, -1
  %enable_state = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 9
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_state, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %12, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift.i, align 4
  %shl27.i = shl nuw i32 1, %14
  %15 = load i32, ptr %enable_state, align 4
  %arrayidx30.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %15
  %16 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx30.i, align 4
  %or.i = or i32 %17, %shl27.i
  store i32 %or.i, ptr %arrayidx30.i, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource.i, align 4
  %22 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %19, i32 noundef 0, i32 noundef %21, ptr noundef %val.i, i32 noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %rpm_reg_write.exit.if.end4_crit_edge

rpm_reg_write.exit.if.end4_crit_edge:             ; preds = %rpm_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %rpm_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %26 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %is_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rpm_reg_write.exit.if.end4_crit_edge, %rpm_reg_write.exit.thread
  %retval.0.i17 = phi i32 [ -22, %rpm_reg_write.exit.thread ], [ 0, %if.then3 ], [ %call.i, %rpm_reg_write.exit.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i17, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_switch_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_state = getelementptr inbounds %struct.rpm_reg_parts, ptr %1, i32 0, i32 9
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %5, -1
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_state, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %9, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 4
  %14 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %11, i32 noundef 0, i32 noundef %13, ptr noundef %val.i, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %is_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_mV_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.request_member, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @regulator_list_voltage_linear_range(ptr noundef %rdev, i32 noundef %selector) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end5.if.then10_crit_edge, label %if.then6

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then6:                                         ; preds = %if.end5
  %div36 = udiv i32 %call2, 1000
  %shift.i = getelementptr inbounds %struct.request_member, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %div36, %7
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %shl.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8, label %if.end8.thread33, !prof !395

if.end8.thread33:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 193, i32 noundef 9, ptr noundef null) #6
  br label %if.end12

if.end8:                                          ; preds = %if.then6
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %13, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift.i, align 4
  %shl27.i = shl i32 %div36, %15
  %16 = load i32, ptr %1, align 4
  %arrayidx30.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %16
  %17 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30.i, align 4
  %or.i = or i32 %18, %shl27.i
  store i32 %or.i, ptr %arrayidx30.i, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 4
  %23 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %20, i32 noundef 0, i32 noundef %22, ptr noundef %val.i, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end8.if.then10_crit_edge, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end5.if.then10_crit_edge
  %uV11 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %uV11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call2, ptr %uV11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge, %if.end8.thread33
  %ret.031 = phi i32 [ 0, %if.then10 ], [ %call.i, %if.end8.if.end12_crit_edge ], [ -22, %if.end8.thread33 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.031, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_mV_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.request_member, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %uV = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uV, align 4
  %div = sdiv i32 %5, 1000
  %shift.i = getelementptr inbounds %struct.request_member, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %div, %7
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %shl.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %rpm_reg_write.exit, label %rpm_reg_write.exit.thread, !prof !395

rpm_reg_write.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 193, i32 noundef 9, ptr noundef null) #6
  br label %if.end4

rpm_reg_write.exit:                               ; preds = %if.end
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %13, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift.i, align 4
  %shl27.i = shl i32 %div, %15
  %16 = load i32, ptr %1, align 4
  %arrayidx30.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %16
  %17 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx30.i, align 4
  %or.i = or i32 %18, %shl27.i
  store i32 %or.i, ptr %arrayidx30.i, align 4
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 4
  %23 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %20, i32 noundef 0, i32 noundef %22, ptr noundef %val.i, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %rpm_reg_write.exit.if.end4_crit_edge

rpm_reg_write.exit.if.end4_crit_edge:             ; preds = %rpm_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %rpm_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %27 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %is_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rpm_reg_write.exit.if.end4_crit_edge, %rpm_reg_write.exit.thread
  %retval.0.i18 = phi i32 [ -22, %rpm_reg_write.exit.thread ], [ 0, %if.then3 ], [ %call.i, %rpm_reg_write.exit.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_mV_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %parts1 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parts1, align 4
  %mask = getelementptr inbounds %struct.request_member, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %neg.i = xor i32 %5, -1
  %val.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and25.i = and i32 %9, %neg.i
  store i32 %and25.i, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %resource.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource.i, align 4
  %14 = ptrtoint ptr %parts1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parts1, align 4
  %request_len.i = getelementptr inbounds %struct.rpm_reg_parts, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %request_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %request_len.i, align 4
  %call.i = tail call i32 @qcom_rpm_write(ptr noundef %11, i32 noundef 0, i32 noundef %13, ptr noundef %val.i, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %is_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382}
!llvm.module.flags = !{!384, !385, !386, !387, !388, !389, !390, !391}
!llvm.ident = !{!392}

!0 = !{ptr @__initcall__kmod_qcom_rpm_regulator__288_1002_rpm_reg_init4, !1, !"__initcall__kmod_qcom_rpm_regulator__288_1002_rpm_reg_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 1002, i32 1}
!2 = !{ptr @__exitcall_rpm_reg_exit, !3, !"__exitcall_rpm_reg_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 1008, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 1010, i32 1}
!6 = !{ptr @__UNIQUE_ID_file290, !7, !"__UNIQUE_ID_file290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 1011, i32 1}
!8 = !{ptr @__UNIQUE_ID_license291, !7, !"__UNIQUE_ID_license291", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 993, i32 12}
!11 = !{ptr @rpm_reg_driver, !12, !"rpm_reg_driver", i1 false, i1 false}
!12 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 990, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 948, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rpm_reg_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @rpm_reg_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 954, i32 3}
!23 = !{ptr @rpm_reg_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @rpm_reg_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @rpm_reg_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 964, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 982, i32 4}
!30 = !{ptr @rpm_reg_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rpm_reg_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 688, i32 8}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 692, i32 4}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rpm_reg_of_parse._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rpm_reg_of_parse._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 704, i32 9}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 709, i32 4}
!43 = !{ptr @rpm_reg_of_parse._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rpm_reg_of_parse._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 717, i32 9}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 722, i32 4}
!49 = !{ptr @rpm_reg_of_parse._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rpm_reg_of_parse._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 757, i32 4}
!53 = !{ptr @rpm_reg_of_parse._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rpm_reg_of_parse._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 763, i32 4}
!57 = !{ptr @rpm_reg_of_parse._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rpm_reg_of_parse._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"freq_table", i1 false, i1 false}
!60 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 647, i32 19}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 658, i32 8}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 661, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rpm_reg_of_parse_freq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rpm_reg_of_parse_freq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 672, i32 2}
!70 = !{ptr @rpm_reg_of_parse_freq._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rpm_reg_of_parse_freq._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @rpm_of_match, !73, !"rpm_of_match", i1 false, i1 false}
!73 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 926, i32 34}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 779, i32 4}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 779, i32 48}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 780, i32 4}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 780, i32 48}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 781, i32 4}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 781, i32 48}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 782, i32 4}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 782, i32 48}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 783, i32 4}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 783, i32 48}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 785, i32 4}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 785, i32 48}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 786, i32 4}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 786, i32 48}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 787, i32 4}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 787, i32 48}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 788, i32 4}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 788, i32 48}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 789, i32 4}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 789, i32 48}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 790, i32 4}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 791, i32 4}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 791, i32 48}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 792, i32 4}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 793, i32 13}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 794, i32 4}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 795, i32 4}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 796, i32 4}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 797, i32 4}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 797, i32 48}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 799, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 799, i32 50}
!138 = !{ptr @rpm_pm8018_regulators, !139, !"rpm_pm8018_regulators", i1 false, i1 false}
!139 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 778, i32 40}
!140 = !{ptr @pm8018_smps, !141, !"pm8018_smps", i1 false, i1 false}
!141 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 465, i32 34}
!142 = !{ptr @uV_ops, !143, !"uV_ops", i1 false, i1 false}
!143 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 410, i32 35}
!144 = !{ptr @smps_ranges, !145, !"smps_ranges", i1 false, i1 false}
!145 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 166, i32 34}
!146 = !{ptr @rpm8960_smps_parts, !147, !"rpm8960_smps_parts", i1 false, i1 false}
!147 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 117, i32 35}
!148 = !{ptr @pm8018_pldo, !149, !"pm8018_pldo", i1 false, i1 false}
!149 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 445, i32 34}
!150 = !{ptr @pldo_ranges, !151, !"pldo_ranges", i1 false, i1 false}
!151 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 151, i32 34}
!152 = !{ptr @rpm8960_ldo_parts, !153, !"rpm8960_ldo_parts", i1 false, i1 false}
!153 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 106, i32 35}
!154 = !{ptr @pm8018_nldo, !155, !"pm8018_nldo", i1 false, i1 false}
!155 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 455, i32 34}
!156 = !{ptr @nldo_ranges, !157, !"nldo_ranges", i1 false, i1 false}
!157 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 157, i32 34}
!158 = !{ptr @pm8921_nldo1200, !159, !"pm8921_nldo1200", i1 false, i1 false}
!159 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 587, i32 34}
!160 = !{ptr @nldo1200_ranges, !161, !"nldo1200_ranges", i1 false, i1 false}
!161 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 161, i32 34}
!162 = !{ptr @pm8018_switch, !163, !"pm8018_switch", i1 false, i1 false}
!163 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 475, i32 34}
!164 = !{ptr @switch_ops, !165, !"switch_ops", i1 false, i1 false}
!165 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 436, i32 35}
!166 = !{ptr @rpm8960_switch_parts, !167, !"rpm8960_switch_parts", i1 false, i1 false}
!167 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 131, i32 35}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 805, i32 4}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 805, i32 50}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 806, i32 4}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 807, i32 50}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 808, i32 50}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 811, i32 50}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 814, i32 50}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 815, i32 50}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 818, i32 4}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 818, i32 50}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 819, i32 50}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 820, i32 4}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 821, i32 4}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 822, i32 4}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 822, i32 50}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 823, i32 4}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 824, i32 4}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 824, i32 50}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 825, i32 4}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 826, i32 4}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 826, i32 50}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 827, i32 4}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 827, i32 50}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 828, i32 4}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 828, i32 50}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 829, i32 4}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 830, i32 4}
!222 = !{ptr @.str.95, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 832, i32 4}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 832, i32 50}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 838, i32 4}
!228 = !{ptr @.str.98, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 841, i32 4}
!230 = !{ptr @.str.99, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 841, i32 46}
!232 = !{ptr @rpm_pm8058_regulators, !233, !"rpm_pm8058_regulators", i1 false, i1 false}
!233 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 804, i32 40}
!234 = !{ptr @pm8058_nldo, !235, !"pm8058_nldo", i1 false, i1 false}
!235 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 493, i32 34}
!236 = !{ptr @mV_ops, !237, !"mV_ops", i1 false, i1 false}
!237 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 423, i32 35}
!238 = !{ptr @rpm8660_ldo_parts, !239, !"rpm8660_ldo_parts", i1 false, i1 false}
!239 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 65, i32 35}
!240 = !{ptr @pm8058_pldo, !241, !"pm8058_pldo", i1 false, i1 false}
!241 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 483, i32 34}
!242 = !{ptr @pm8058_smps, !243, !"pm8058_smps", i1 false, i1 false}
!243 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 503, i32 34}
!244 = !{ptr @rpm8660_smps_parts, !245, !"rpm8660_smps_parts", i1 false, i1 false}
!245 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 76, i32 35}
!246 = !{ptr @pm8058_switch, !247, !"pm8058_switch", i1 false, i1 false}
!247 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 521, i32 34}
!248 = !{ptr @rpm8660_switch_parts, !249, !"rpm8660_switch_parts", i1 false, i1 false}
!249 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 89, i32 35}
!250 = !{ptr @pm8058_ncp, !251, !"pm8058_ncp", i1 false, i1 false}
!251 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 513, i32 34}
!252 = !{ptr @ncp_ranges, !253, !"ncp_ranges", i1 false, i1 false}
!253 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 185, i32 34}
!254 = !{ptr @rpm8660_ncp_parts, !255, !"rpm8660_ncp_parts", i1 false, i1 false}
!255 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 98, i32 35}
!256 = !{ptr @.str.100, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 846, i32 48}
!258 = !{ptr @.str.101, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 847, i32 48}
!260 = !{ptr @.str.102, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 852, i32 48}
!262 = !{ptr @.str.103, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 860, i32 50}
!264 = !{ptr @.str.104, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 862, i32 4}
!266 = !{ptr @.str.105, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 862, i32 50}
!268 = !{ptr @.str.106, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 863, i32 4}
!270 = !{ptr @.str.107, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 863, i32 50}
!272 = !{ptr @.str.108, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 865, i32 4}
!274 = !{ptr @.str.109, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 865, i32 48}
!276 = !{ptr @rpm_pm8901_regulators, !277, !"rpm_pm8901_regulators", i1 false, i1 false}
!277 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 845, i32 40}
!278 = !{ptr @pm8901_nldo, !279, !"pm8901_nldo", i1 false, i1 false}
!279 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 539, i32 34}
!280 = !{ptr @pm8901_pldo, !281, !"pm8901_pldo", i1 false, i1 false}
!281 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 529, i32 34}
!282 = !{ptr @pm8901_ftsmps, !283, !"pm8901_ftsmps", i1 false, i1 false}
!283 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 549, i32 34}
!284 = !{ptr @ftsmps_ranges, !285, !"ftsmps_ranges", i1 false, i1 false}
!285 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 172, i32 34}
!286 = !{ptr @pm8901_switch, !287, !"pm8901_switch", i1 false, i1 false}
!287 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 559, i32 34}
!288 = !{ptr @.str.110, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 874, i32 4}
!290 = !{ptr @.str.111, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 874, i32 48}
!292 = !{ptr @.str.112, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 875, i32 4}
!294 = !{ptr @.str.113, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 875, i32 48}
!296 = !{ptr @.str.114, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 877, i32 47}
!298 = !{ptr @.str.115, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 879, i32 47}
!300 = !{ptr @.str.116, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 880, i32 47}
!302 = !{ptr @.str.117, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 881, i32 47}
!304 = !{ptr @.str.118, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 885, i32 47}
!306 = !{ptr @.str.119, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 886, i32 48}
!308 = !{ptr @.str.120, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 894, i32 48}
!310 = !{ptr @.str.121, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 897, i32 52}
!312 = !{ptr @.str.122, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 898, i32 52}
!314 = !{ptr @.str.123, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 899, i32 4}
!316 = !{ptr @.str.124, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 899, i32 52}
!318 = !{ptr @.str.125, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 900, i32 4}
!320 = !{ptr @.str.126, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 900, i32 52}
!322 = !{ptr @.str.127, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 901, i32 4}
!324 = !{ptr @.str.128, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 901, i32 52}
!326 = !{ptr @.str.129, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 902, i32 4}
!328 = !{ptr @.str.130, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 904, i32 50}
!330 = !{ptr @.str.131, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 905, i32 50}
!332 = !{ptr @.str.132, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 907, i32 4}
!334 = !{ptr @.str.133, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 907, i32 50}
!336 = !{ptr @.str.134, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 908, i32 4}
!338 = !{ptr @.str.135, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 909, i32 4}
!340 = !{ptr @.str.136, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 910, i32 4}
!342 = !{ptr @.str.137, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 912, i32 4}
!344 = !{ptr @.str.138, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 912, i32 59}
!346 = !{ptr @.str.139, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 913, i32 4}
!348 = !{ptr @rpm_pm8921_regulators, !349, !"rpm_pm8921_regulators", i1 false, i1 false}
!349 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 869, i32 40}
!350 = !{ptr @pm8921_smps, !351, !"pm8921_smps", i1 false, i1 false}
!351 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 597, i32 34}
!352 = !{ptr @pm8921_nldo, !353, !"pm8921_nldo", i1 false, i1 false}
!353 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 577, i32 34}
!354 = !{ptr @pm8921_pldo, !355, !"pm8921_pldo", i1 false, i1 false}
!355 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 567, i32 34}
!356 = !{ptr @pm8921_switch, !357, !"pm8921_switch", i1 false, i1 false}
!357 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 615, i32 34}
!358 = !{ptr @pm8921_ncp, !359, !"pm8921_ncp", i1 false, i1 false}
!359 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 607, i32 34}
!360 = !{ptr @rpm8960_ncp_parts, !361, !"rpm8960_ncp_parts", i1 false, i1 false}
!361 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 140, i32 35}
!362 = !{ptr @.str.140, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 919, i32 4}
!364 = !{ptr @.str.141, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 919, i32 47}
!366 = !{ptr @.str.142, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 920, i32 4}
!368 = !{ptr @.str.143, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 920, i32 47}
!370 = !{ptr @.str.144, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 921, i32 4}
!372 = !{ptr @.str.145, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 921, i32 47}
!374 = !{ptr @.str.146, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 922, i32 4}
!376 = !{ptr @.str.147, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 922, i32 47}
!378 = !{ptr @rpm_smb208_regulators, !379, !"rpm_smb208_regulators", i1 false, i1 false}
!379 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 918, i32 40}
!380 = !{ptr @smb208_smps, !381, !"smb208_smps", i1 false, i1 false}
!381 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 620, i32 34}
!382 = !{ptr @smb208_ranges, !383, !"smb208_ranges", i1 false, i1 false}
!383 = !{!"../drivers/regulator/qcom_rpm-regulator.c", i32 178, i32 34}
!384 = !{i32 1, !"wchar_size", i32 2}
!385 = !{i32 1, !"min_enum_size", i32 4}
!386 = !{i32 8, !"branch-target-enforcement", i32 0}
!387 = !{i32 8, !"sign-return-address", i32 0}
!388 = !{i32 8, !"sign-return-address-all", i32 0}
!389 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!390 = !{i32 7, !"uwtable", i32 1}
!391 = !{i32 7, !"frame-pointer", i32 2}
!392 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!393 = !{!"auto-init"}
!394 = !{i8 0, i8 2}
!395 = !{!"branch_weights", i32 2000, i32 1}
!396 = !{!"branch_weights", i32 1, i32 2000}
