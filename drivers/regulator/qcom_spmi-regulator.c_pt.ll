; ModuleID = '/llk/IR_all_yes/drivers/regulator/qcom_spmi-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom_spmi-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spmi_regulator_mapping = type { i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.spmi_voltage_set_points = type { ptr, i32, i32 }
%struct.spmi_voltage_range = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.spmi_regulator_data = type { ptr, i16, ptr, ptr, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spmi_regulator = type { %struct.regulator_desc, ptr, %struct.delayed_work, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i16, %struct.list_head }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.spmi_regulator_init_data = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_qcom_spmi_regulator__294_2270_qcom_spmi_regulator_driver_init6 = internal global ptr @qcom_spmi_regulator_driver_init, section ".initcall6.init", align 4
@qcom_spmi_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_spmi_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_spmi_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_spmi_regulator_driver_exit = internal global ptr @qcom_spmi_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [68 x i8] c"qcom_spmi_regulator.description=Qualcomm SPMI PMIC regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [63 x i8] c"qcom_spmi_regulator.file=drivers/regulator/qcom_spmi-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [35 x i8] c"qcom_spmi_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [55 x i8] c"qcom_spmi_regulator.alias=platform:qcom-spmi-regulator\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom-spmi-regulator\00", [44 x i8] zeroinitializer }, align 32
@qcom_spmi_regulator_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8004-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8004_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8005-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8005_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8226-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8226_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8841-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8841_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8916_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8941_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8950-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8950_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8994-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8994_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8994-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmi8994_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm660_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660l-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm660l_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pms405-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pms405_regulators }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,saw-reg\00", [19 x i8] zeroinitializer }, align 32
@saw_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@qcom_spmi_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR reading SAW regmap\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_spmi_regulator_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/regulator/qcom_spmi-regulator.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_spmi_regulator_probe._entry_ptr = internal global ptr @qcom_spmi_regulator_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,saw-slave\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,saw-leader\00", [16 x i8] zeroinitializer }, align 32
@spmi_saw_ops = internal global { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@qcom_spmi_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 2252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_spmi_regulator_probe._entry_ptr.11 = internal global ptr @qcom_spmi_regulator_probe._entry.9, section ".printk_index", align 4
@spmi_regulator_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1810, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"common initialization failed, ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spmi_regulator_of_parse\00", [40 x i8] zeroinitializer }, align 32
@spmi_regulator_of_parse._entry_ptr = internal global ptr @spmi_regulator_of_parse._entry, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ocp\00", [28 x i8] zeroinitializer }, align 32
@spmi_regulator_of_parse._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.4, i32 1848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request irq %d, ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@spmi_regulator_of_parse._entry_ptr.17 = internal global ptr @spmi_regulator_of_parse._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,ocp-max-retries\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,ocp-retry-delay\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,pin-ctrl-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,pin-ctrl-hpm\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom,vs-soft-start-strength\00", [36 x i8] zeroinitializer }, align 32
@spmi_regulator_init_slew_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1621, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spmi read failed, ret=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spmi_regulator_init_slew_rate\00", [34 x i8] zeroinitializer }, align 32
@spmi_regulator_init_slew_rate._entry_ptr = internal global ptr @spmi_regulator_init_slew_rate._entry, section ".printk_index", align 4
@spmi_regulator_init_slew_rate_ftsmps426._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.4, i32 1666, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"spmi_regulator_init_slew_rate_ftsmps426\00", [56 x i8] zeroinitializer }, align 32
@spmi_regulator_init_slew_rate_ftsmps426._entry_ptr = internal global ptr @spmi_regulator_init_slew_rate_ftsmps426._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spmi_regulator_vs_ocp_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"OCP triggered %d times; no further retries\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spmi_regulator_vs_ocp_isr\00", [38 x i8] zeroinitializer }, align 32
@spmi_regulator_vs_ocp_isr._entry_ptr = internal global ptr @spmi_regulator_vs_ocp_isr._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@devm_delayed_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&(w)->work)\00", [34 x i8] zeroinitializer }, align 32
@devm_delayed_work_autocancel.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&(w)->timer\00", [20 x i8] zeroinitializer }, align 32
@spmi_regulator_match.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 1, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_spmi_regulator\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spmi_regulator_match\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not read version registers\0A\00", [62 x i8] zeroinitializer }, align 32
@supported_regulators = internal constant { [61 x %struct.spmi_regulator_mapping], [480 x i8] } { [61 x %struct.spmi_regulator_mapping] [%struct.spmi_regulator_mapping { i32 3, i32 8, i32 0, i32 0, i32 255, ptr @spmi_smps_ops, ptr @smps_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 3, i32 10, i32 11, i32 0, i32 255, ptr @spmi_hfs430_ops, ptr @hfs430_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 3, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @nldo1_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 4, i32 1, i32 0, i32 0, ptr @spmi_ldo_ops, ptr @nldo2_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 5, i32 1, i32 0, i32 0, ptr @spmi_ldo_ops, ptr @nldo2_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 4, i32 1, i32 1, i32 255, ptr @spmi_ldo_ops, ptr @nldo3_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 5, i32 1, i32 1, i32 255, ptr @spmi_ldo_ops, ptr @nldo3_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 6, i32 1, i32 0, i32 0, ptr @spmi_ldo_ops, ptr @nldo2_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 7, i32 1, i32 0, i32 0, ptr @spmi_ldo_ops, ptr @nldo2_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 6, i32 1, i32 1, i32 255, ptr @spmi_ldo_ops, ptr @nldo3_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 7, i32 1, i32 1, i32 255, ptr @spmi_ldo_ops, ptr @nldo3_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 8, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 5000 }, %struct.spmi_regulator_mapping { i32 4, i32 9, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 10, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 11, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 12, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 16, i32 6, i32 0, i32 255, ptr @spmi_ln_ldo_ops, ptr @ln_ldo_set_points, i32 0 }, %struct.spmi_regulator_mapping { i32 4, i32 40, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 5000 }, %struct.spmi_regulator_mapping { i32 4, i32 41, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 42, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 43, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 44, i32 1, i32 0, i32 255, ptr @spmi_ldo_ops, ptr @pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 48, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_nldo_set_points, i32 30000 }, %struct.spmi_regulator_mapping { i32 4, i32 49, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_nldo_set_points, i32 30000 }, %struct.spmi_regulator_mapping { i32 4, i32 50, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_nldo_set_points, i32 30000 }, %struct.spmi_regulator_mapping { i32 4, i32 59, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_lvpldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 60, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_lvpldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 66, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @nldo660_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 67, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @nldo660_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 70, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @pldo660_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 71, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @pldo660_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 73, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @pldo660_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 77, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_lvpldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 4, i32 79, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ht_lvpldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 5, i32 1, i32 2, i32 0, i32 255, ptr @spmi_vs_ops, ptr null, i32 0 }, %struct.spmi_regulator_mapping { i32 5, i32 2, i32 2, i32 0, i32 255, ptr @spmi_vs_ops, ptr null, i32 0 }, %struct.spmi_regulator_mapping { i32 5, i32 8, i32 2, i32 0, i32 255, ptr @spmi_vs_ops, ptr null, i32 0 }, %struct.spmi_regulator_mapping { i32 5, i32 9, i32 2, i32 0, i32 255, ptr @spmi_vs_ops, ptr null, i32 0 }, %struct.spmi_regulator_mapping { i32 5, i32 16, i32 2, i32 0, i32 255, ptr @spmi_vs_ops, ptr null, i32 0 }, %struct.spmi_regulator_mapping { i32 5, i32 17, i32 2, i32 0, i32 255, ptr @spmi_vs_ops, ptr null, i32 0 }, %struct.spmi_regulator_mapping { i32 27, i32 1, i32 3, i32 0, i32 255, ptr @spmi_boost_ops, ptr @boost_set_points, i32 0 }, %struct.spmi_regulator_mapping { i32 28, i32 8, i32 4, i32 0, i32 255, ptr @spmi_ftsmps_ops, ptr @ftsmps_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 28, i32 9, i32 4, i32 0, i32 255, ptr @spmi_ftsmps_ops, ptr @ftsmps2p5_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 28, i32 10, i32 10, i32 0, i32 255, ptr @spmi_ftsmps426_ops, ptr @ftsmps426_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 31, i32 1, i32 5, i32 0, i32 255, ptr @spmi_boost_ops, ptr @boost_byp_set_points, i32 0 }, %struct.spmi_regulator_mapping { i32 34, i32 13, i32 7, i32 0, i32 255, ptr @spmi_ult_lo_smps_ops, ptr @ult_lo_smps_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 34, i32 14, i32 7, i32 0, i32 255, ptr @spmi_ult_lo_smps_ops, ptr @ult_lo_smps_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 34, i32 15, i32 7, i32 0, i32 255, ptr @spmi_ult_lo_smps_ops, ptr @ult_lo_smps_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 34, i32 16, i32 8, i32 0, i32 255, ptr @spmi_ult_ho_smps_ops, ptr @ult_ho_smps_set_points, i32 100000 }, %struct.spmi_regulator_mapping { i32 33, i32 21, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_nldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 6, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_nldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 20, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_nldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 7, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_nldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 40, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 41, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 42, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 45, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 11, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 10, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 9, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 10000 }, %struct.spmi_regulator_mapping { i32 33, i32 8, i32 9, i32 0, i32 255, ptr @spmi_ult_ldo_ops, ptr @ult_pldo_set_points, i32 5000 }], [480 x i8] zeroinitializer }, align 32
@spmi_regulator_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 1593, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"unsupported regulator: name=%s type=0x%02X, subtype=0x%02X, dig major rev=0x%02X\0A\00", [46 x i8] zeroinitializer }, align 32
@spmi_regulator_match._entry_ptr = internal global ptr @spmi_regulator_match._entry, section ".printk_index", align 4
@spmi_smps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_common_map_voltage, ptr @spmi_regulator_common_set_voltage, ptr null, ptr @spmi_regulator_common_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@smps_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @smps_ranges, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_hfs430_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_single_map_voltage, ptr @spmi_regulator_ftsmps426_set_voltage, ptr null, ptr @spmi_regulator_ftsmps426_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_ftsmps426_set_mode, ptr @spmi_regulator_ftsmps426_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@hfs430_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @hfs430_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_common_map_voltage, ptr @spmi_regulator_common_set_voltage, ptr null, ptr @spmi_regulator_common_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_soft_start, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr @spmi_regulator_common_set_bypass, ptr @spmi_regulator_common_get_bypass, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@nldo1_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @nldo1_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nldo2_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @nldo2_ranges, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nldo3_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @nldo3_ranges, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pldo_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @pldo_ranges, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ln_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_common_map_voltage, ptr @spmi_regulator_common_set_voltage, ptr null, ptr @spmi_regulator_common_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_bypass, ptr @spmi_regulator_common_get_bypass, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ln_ldo_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ln_ldo_ranges, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ftsmps426_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_single_map_voltage, ptr @spmi_regulator_ftsmps426_set_voltage, ptr null, ptr @spmi_regulator_ftsmps426_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_ftsmps426_set_mode, ptr @spmi_regulator_ftsmps426_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@ht_nldo_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ht_nldo_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ht_lvpldo_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ht_lvpldo_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nldo660_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @nldo660_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@pldo660_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @pldo660_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_vs_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_vs_ocp, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_vs_enable, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_soft_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@spmi_boost_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_single_map_voltage, ptr @spmi_regulator_single_range_set_voltage, ptr null, ptr @spmi_regulator_single_range_get_voltage, ptr null, ptr null, ptr @spmi_regulator_set_ilim, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@boost_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @boost_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ftsmps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_common_map_voltage, ptr @spmi_regulator_common_set_voltage, ptr null, ptr @spmi_regulator_common_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@ftsmps_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ftsmps_ranges, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ftsmps2p5_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ftsmps2p5_ranges, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ftsmps426_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ftsmps426_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@boost_byp_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @boost_byp_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ult_lo_smps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr null, ptr @spmi_regulator_ult_lo_smps_set_voltage, ptr null, ptr @spmi_regulator_ult_lo_smps_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@ult_lo_smps_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ult_lo_smps_ranges, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ult_ho_smps_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_single_map_voltage, ptr @spmi_regulator_single_range_set_voltage, ptr null, ptr @spmi_regulator_single_range_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@ult_ho_smps_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ult_ho_smps_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_ult_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @spmi_regulator_common_list_voltage, ptr null, ptr @spmi_regulator_single_map_voltage, ptr @spmi_regulator_single_range_set_voltage, ptr null, ptr @spmi_regulator_single_range_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @spmi_regulator_common_set_mode, ptr @spmi_regulator_common_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_soft_start, ptr null, ptr null, ptr @spmi_regulator_common_set_load, ptr @spmi_regulator_common_set_bypass, ptr @spmi_regulator_common_get_bypass, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_regulator_common_set_pull_down }, [48 x i8] zeroinitializer }, align 32
@ult_nldo_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ult_nldo_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ult_pldo_set_points = internal global { %struct.spmi_voltage_set_points, [20 x i8] } { %struct.spmi_voltage_set_points { ptr @ult_pldo_ranges, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@spmi_regulator_select_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 629, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"request v=[%d, %d] is outside possible v=[%d, %d]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spmi_regulator_select_voltage\00", [34 x i8] zeroinitializer }, align 32
@spmi_regulator_select_voltage._entry_ptr = internal global ptr @spmi_regulator_select_voltage._entry, section ".printk_index", align 4
@spmi_regulator_select_voltage._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"request v=[%d, %d] cannot be met by any set point; next set point: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@spmi_regulator_select_voltage._entry_ptr.39 = internal global ptr @spmi_regulator_select_voltage._entry.37, section ".printk_index", align 4
@smps_ranges = internal global { [2 x %struct.spmi_voltage_range], [40 x i8] } { [2 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 375000, i32 1562500, i32 12500, i32 375000, i32 1562500, i32 0, i8 0 }, %struct.spmi_voltage_range { i32 1550000, i32 3125000, i32 25000, i32 1575000, i32 3125000, i32 0, i8 1 }], [40 x i8] zeroinitializer }, align 32
@hfs430_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 320000, i32 2040000, i32 8000, i32 320000, i32 2040000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@nldo1_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 750000, i32 1537500, i32 12500, i32 750000, i32 1537500, i32 0, i8 2 }], [36 x i8] zeroinitializer }, align 32
@nldo2_ranges = internal global { [3 x %struct.spmi_voltage_range], [44 x i8] } { [3 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 375000, i32 1537500, i32 12500, i32 0, i32 0, i32 0, i8 0 }, %struct.spmi_voltage_range { i32 375000, i32 768750, i32 6250, i32 375000, i32 768750, i32 0, i8 1 }, %struct.spmi_voltage_range { i32 750000, i32 1537500, i32 12500, i32 775000, i32 1537500, i32 0, i8 2 }], [44 x i8] zeroinitializer }, align 32
@nldo3_ranges = internal global { [3 x %struct.spmi_voltage_range], [44 x i8] } { [3 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 375000, i32 1537500, i32 12500, i32 375000, i32 1537500, i32 0, i8 0 }, %struct.spmi_voltage_range { i32 375000, i32 1537500, i32 12500, i32 0, i32 0, i32 0, i8 1 }, %struct.spmi_voltage_range { i32 750000, i32 1537500, i32 12500, i32 0, i32 0, i32 0, i8 2 }], [44 x i8] zeroinitializer }, align 32
@pldo_ranges = internal global { [3 x %struct.spmi_voltage_range], [44 x i8] } { [3 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 750000, i32 1537500, i32 12500, i32 750000, i32 1537500, i32 0, i8 2 }, %struct.spmi_voltage_range { i32 1500000, i32 3075000, i32 25000, i32 1550000, i32 3075000, i32 0, i8 3 }, %struct.spmi_voltage_range { i32 1750000, i32 4900000, i32 50000, i32 3100000, i32 4900000, i32 0, i8 4 }], [44 x i8] zeroinitializer }, align 32
@ln_ldo_ranges = internal global { [2 x %struct.spmi_voltage_range], [40 x i8] } { [2 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 690000, i32 1110000, i32 60000, i32 690000, i32 1110000, i32 0, i8 1 }, %struct.spmi_voltage_range { i32 1380000, i32 2220000, i32 120000, i32 1380000, i32 2220000, i32 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@ht_nldo_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 312000, i32 1304000, i32 8000, i32 312000, i32 1304000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@ht_lvpldo_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 1504000, i32 2000000, i32 8000, i32 1504000, i32 2000000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@nldo660_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 320000, i32 1304000, i32 8000, i32 320000, i32 1304000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@pldo660_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 1504000, i32 3544000, i32 8000, i32 1504000, i32 3544000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@boost_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 4000000, i32 5550000, i32 50000, i32 4000000, i32 5550000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@ftsmps_ranges = internal global { [2 x %struct.spmi_voltage_range], [40 x i8] } { [2 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 0, i32 1275000, i32 5000, i32 350000, i32 1275000, i32 0, i8 0 }, %struct.spmi_voltage_range { i32 0, i32 2040000, i32 10000, i32 1280000, i32 2040000, i32 0, i8 1 }], [40 x i8] zeroinitializer }, align 32
@ftsmps2p5_ranges = internal global { [2 x %struct.spmi_voltage_range], [40 x i8] } { [2 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 80000, i32 1355000, i32 5000, i32 350000, i32 1355000, i32 0, i8 0 }, %struct.spmi_voltage_range { i32 160000, i32 2200000, i32 10000, i32 1360000, i32 2200000, i32 0, i8 1 }], [40 x i8] zeroinitializer }, align 32
@ftsmps426_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 0, i32 1352000, i32 4000, i32 320000, i32 1352000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@boost_byp_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 2500000, i32 5650000, i32 50000, i32 2500000, i32 5200000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@ult_lo_smps_ranges = internal global { [2 x %struct.spmi_voltage_range], [40 x i8] } { [2 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 375000, i32 1562500, i32 12500, i32 375000, i32 1562500, i32 0, i8 0 }, %struct.spmi_voltage_range { i32 750000, i32 1525000, i32 25000, i32 0, i32 0, i32 0, i8 1 }], [40 x i8] zeroinitializer }, align 32
@ult_ho_smps_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 1550000, i32 2325000, i32 25000, i32 1550000, i32 2325000, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@ult_nldo_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 375000, i32 1537500, i32 12500, i32 375000, i32 1537500, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@ult_pldo_ranges = internal global { [1 x %struct.spmi_voltage_range], [36 x i8] } { [1 x %struct.spmi_voltage_range] [%struct.spmi_voltage_range { i32 1750000, i32 3337500, i32 12500, i32 1750000, i32 3337500, i32 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@spmi_regulator_saw_set_voltage.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 1, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spmi_regulator_saw_set_voltage\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"range_sel = %02X voltage_sel = %02X\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pm8004_regulators = internal constant { [3 x %struct.spmi_regulator_data], [36 x i8] } { [3 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [36 x i8] zeroinitializer }, align 32
@pm8005_regulators = internal constant { [5 x %struct.spmi_regulator_data], [60 x i8] } { [5 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pm8226_regulators = internal constant { [35 x %struct.spmi_regulator_data], [164 x i8] } { [35 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.53, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.53, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.56, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.57, i16 17152, ptr @.str.53, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.53, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.60, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.60, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.60, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.60, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.65, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.66, i16 18944, ptr @.str.65, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.67, i16 19200, ptr @.str.68, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.69, i16 19456, ptr @.str.65, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.70, i16 19712, ptr @.str.68, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.71, i16 19968, ptr @.str.72, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.73, i16 20224, ptr @.str.72, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.74, i16 20480, ptr @.str.72, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.75, i16 20736, ptr @.str.72, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.76, i16 20992, ptr @.str.77, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.78, i16 21248, ptr @.str.77, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.79, i16 21504, ptr @.str.77, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.80, i16 21760, ptr @.str.77, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.81, i16 22016, ptr @.str.77, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.82, i16 22272, ptr @.str.56, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.83, i16 22528, ptr @.str.84, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.85, i16 22784, ptr @.str.56, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.86, i16 23040, ptr @.str.60, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.87, i16 23296, ptr @.str.77, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.88, i16 -32768, ptr @.str.89, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [164 x i8] zeroinitializer }, align 32
@pm8841_regulators = internal constant { [9 x %struct.spmi_regulator_data], [44 x i8] } { [9 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 7176 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 7176 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 7176 }, %struct.spmi_regulator_data { ptr @.str.90, i16 8960, ptr @.str.91, ptr null, i16 7176 }, %struct.spmi_regulator_data { ptr @.str.92, i16 9728, ptr @.str.93, ptr null, i16 7176 }, %struct.spmi_regulator_data { ptr @.str.94, i16 10496, ptr @.str.95, ptr null, i16 7176 }, %struct.spmi_regulator_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@pm8916_regulators = internal constant { [23 x %struct.spmi_regulator_data], [116 x i8] } { [23 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.96, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.97, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.96, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.57, i16 17152, ptr @.str.98, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.98, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.98, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.99, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.100, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.101, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.101, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.66, i16 18944, ptr @.str.100, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.67, i16 19200, ptr @.str.101, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.69, i16 19456, ptr @.str.101, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.70, i16 19712, ptr @.str.100, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.71, i16 19968, ptr @.str.100, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.73, i16 20224, ptr @.str.100, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.74, i16 20480, ptr @.str.101, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.75, i16 20736, ptr @.str.101, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [116 x i8] zeroinitializer }, align 32
@pm8941_regulators = internal constant { [34 x %struct.spmi_regulator_data], [184 x i8] } { [34 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 -24576, ptr null, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.96, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.102, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.96, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.57, i16 17152, ptr @.str.103, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.104, ptr null, i16 1040 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.105, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.104, ptr null, i16 1040 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.106, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.107, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.107, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.66, i16 18944, ptr @.str.103, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.67, i16 19200, ptr @.str.105, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.69, i16 19456, ptr @.str.108, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.70, i16 19712, ptr @.str.105, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.71, i16 19968, ptr @.str.105, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.73, i16 20224, ptr @.str.106, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.74, i16 20480, ptr @.str.107, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.75, i16 20736, ptr @.str.106, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.76, i16 20992, ptr @.str.106, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.78, i16 21248, ptr @.str.108, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.79, i16 21504, ptr @.str.109, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.80, i16 21760, ptr @.str.107, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.81, i16 22016, ptr @.str.108, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.82, i16 22272, ptr @.str.108, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.88, i16 -32768, ptr @.str.102, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.110, i16 -32512, ptr @.str.102, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.111, i16 -32256, ptr @.str.102, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.112, i16 -32000, ptr @.str.113, ptr @.str.114, i16 0 }, %struct.spmi_regulator_data { ptr @.str.115, i16 -31744, ptr @.str.113, ptr @.str.116, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [184 x i8] zeroinitializer }, align 32
@pm8950_regulators = internal constant { [30 x %struct.spmi_regulator_data], [136 x i8] } { [30 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.90, i16 8960, ptr @.str.91, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.117, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.118, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.119, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.57, i16 17152, ptr @.str.120, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.120, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.120, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.120, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.121, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.122, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.122, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.66, i16 18944, ptr @.str.121, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.67, i16 19200, ptr @.str.121, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.69, i16 19456, ptr @.str.122, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.70, i16 19712, ptr @.str.122, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.71, i16 19968, ptr @.str.122, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.73, i16 20224, ptr @.str.120, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.74, i16 20480, ptr @.str.121, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.75, i16 20736, ptr @.str.122, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.76, i16 20992, ptr @.str.117, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.78, i16 21248, ptr @.str.123, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.79, i16 21504, ptr @.str.109, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.80, i16 21760, ptr @.str.121, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.81, i16 22016, ptr @.str.118, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [136 x i8] zeroinitializer }, align 32
@pm8994_regulators = internal constant { [47 x %struct.spmi_regulator_data], [244 x i8] } { [47 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.90, i16 8960, ptr @.str.91, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.92, i16 9728, ptr @.str.93, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.94, i16 10496, ptr @.str.95, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.124, i16 11264, ptr @.str.125, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.126, i16 12032, ptr @.str.127, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.128, i16 12800, ptr @.str.129, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.130, i16 13568, ptr @.str.131, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.132, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.133, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.134, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.57, i16 17152, ptr @.str.135, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.104, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.136, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.104, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.137, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.138, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.138, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.66, i16 18944, ptr @.str.134, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.67, i16 19200, ptr @.str.136, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.69, i16 19456, ptr @.str.139, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.70, i16 19712, ptr @.str.140, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.71, i16 19968, ptr @.str.140, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.73, i16 20224, ptr @.str.137, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.74, i16 20480, ptr @.str.141, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.75, i16 20736, ptr @.str.138, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.76, i16 20992, ptr @.str.139, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.78, i16 21248, ptr @.str.142, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.79, i16 21504, ptr @.str.142, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.80, i16 21760, ptr @.str.138, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.81, i16 22016, ptr @.str.139, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.82, i16 22272, ptr @.str.139, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.83, i16 22528, ptr @.str.84, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.85, i16 22784, ptr @.str.133, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.86, i16 23040, ptr @.str.135, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.87, i16 23296, ptr @.str.133, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.143, i16 23552, ptr @.str.141, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.144, i16 23808, ptr @.str.137, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.145, i16 24064, ptr @.str.135, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.146, i16 24320, ptr @.str.136, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.88, i16 -32768, ptr @.str.147, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.110, i16 -32512, ptr @.str.147, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [244 x i8] zeroinitializer }, align 32
@pmi8994_regulators = internal constant { [5 x %struct.spmi_regulator_data], [60 x i8] } { [5 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.132, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pm660_regulators = internal constant { [25 x %struct.spmi_regulator_data], [108 x i8] } { [25 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.90, i16 8960, ptr @.str.91, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.148, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.149, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.149, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.150, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.148, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.148, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.66, i16 18944, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.67, i16 19200, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.69, i16 19456, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.70, i16 19712, ptr @.str.151, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.71, i16 19968, ptr @.str.152, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.73, i16 20224, ptr @.str.152, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.74, i16 20480, ptr @.str.152, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.75, i16 20736, ptr @.str.152, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.76, i16 20992, ptr @.str.152, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [108 x i8] zeroinitializer }, align 32
@pm660l_regulators = internal constant { [16 x %struct.spmi_regulator_data], [64 x i8] } { [16 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.46, i16 5120, ptr @.str.47, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.42, i16 5888, ptr @.str.43, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.50, i16 7424, ptr @.str.51, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.44, i16 8192, ptr @.str.45, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.52, i16 16384, ptr @.str.153, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.54, i16 16640, ptr @.str.97, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.55, i16 16896, ptr @.str.154, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.57, i16 17152, ptr @.str.155, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.58, i16 17408, ptr @.str.154, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.59, i16 17664, ptr @.str.155, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.61, i16 17920, ptr @.str.154, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.62, i16 18176, ptr @.str.154, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.63, i16 18432, ptr @.str.153, ptr null, i16 0 }, %struct.spmi_regulator_data { ptr @.str.64, i16 18688, ptr @.str.153, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [64 x i8] zeroinitializer }, align 32
@pms405_regulators = internal constant { [2 x %struct.spmi_regulator_data], [56 x i8] } { [2 x %struct.spmi_regulator_data] [%struct.spmi_regulator_data { ptr @.str.48, i16 6656, ptr @.str.49, ptr null, i16 0 }, %struct.spmi_regulator_data zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s2\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s2\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s5\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s5\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s1\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s3\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s3\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s4\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s4\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l1\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l1_l2_l4_l5\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l2\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l3\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l3_l24_l26\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l4\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l5\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l6\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l6_l7_l8_l9_l27\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l7\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l8\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l9\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l10\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l10_l11_l13\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l11\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l12\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l12_l14\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l13\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l14\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l15\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l15_l16_l17_l18\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l16\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l17\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l18\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l19\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vdd_l19_l20_l21_l22_l23_l28\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l20\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l21\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l22\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l23\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l24\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l25\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l25\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l26\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l27\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l28\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs1\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd_lvs1\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s6\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s6\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s7\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s7\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s8\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l1_l3\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l2\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd_l4_l5_l6\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l7\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd_l8_l11_l14_l15_l16\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vdd_l9_l10_l12_l13_l17_l18\00", [37 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdd_l2_lvs_1_2_3\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l4_l11\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l5_l7\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l6_l12_l14_l15\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vdd_l8_l16_l18_19\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l9_l10_l17_l22\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l13_l20_l23_l24\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l21\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs2\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs3\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5vs1\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_5vs\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ocp-5vs1\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5vs2\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ocp-5vs2\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l1_l19\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l2_l23\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l3\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l4_l5_l6_l7_l16\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd_l8_l11_l12_l17_l22\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vdd_l9_l10_l13_l14_l15_l18\00", [37 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l20\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s9\00", [29 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s9\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s10\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s10\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s11\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s11\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s12\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s12\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l1\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l2_l26_l28\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l3_l11\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l4_l27_l31\00", [17 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l6_l12_l32\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l8_l16_l30\00", [17 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l9_l10_l18_l22\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l13_l19_l23_l24\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l14_l15\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l17_l29\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l20_l21\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l29\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l30\00", [28 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l31\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l32\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_lvs_1_2\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd_l1_l6_l7\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l2_l3\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l5\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vdd_l8_l9_l10_l11_l12_l13_l14\00", [34 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdd_l15_l16_l17_l18_l19\00", [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_l1_l9_l10\00", [18 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l3_l5_l7_l8\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l4_l6\00", [22 x i8] zeroinitializer }, align 32
@switch.table.spmi_regulator_of_parse = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\E0\E0\EF\E0\E0\E0\E0\EF\EF\EF", [22 x i8] zeroinitializer }, align 32
@switch.table.spmi_regulator_of_parse.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\1F\1F\10\1F\1F\1F\1F\10\10\10", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 7, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"qcom_spmi_regulator_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2263, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2265, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"qcom_spmi_regulator_match\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2133, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2181, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant [11 x i8] c"saw_regmap\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1224, i32 23 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2186, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2193, i32 42 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2230, i32 42 }
@___asan_gen_.197 = private unnamed_addr constant [13 x i8] c"spmi_saw_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1299, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2252, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1810, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1844, i32 52 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1847, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1771, i32 29 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1773, i32 29 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1775, i32 29 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1777, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1778, i32 29 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1621, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1666, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1210, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 50, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1567, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [21 x i8] c"supported_regulators\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1459, i32 44 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1591, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [14 x i8] c"spmi_smps_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1301, i32 35 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"smps_set_points\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 552, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"spmi_hfs430_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1443, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"hfs430_set_points\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 566, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant [13 x i8] c"spmi_ldo_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1316, i32 35 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"nldo1_set_points\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 548, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"nldo2_set_points\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 549, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"nldo3_set_points\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 550, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant [16 x i8] c"pldo_set_points\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 547, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant [16 x i8] c"spmi_ln_ldo_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1333, i32 35 }
@___asan_gen_.323 = private unnamed_addr constant [18 x i8] c"ln_ldo_set_points\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 551, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant [19 x i8] c"spmi_ftsmps426_ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1428, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"ht_nldo_set_points\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 565, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant [21 x i8] c"ht_lvpldo_set_points\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 564, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"nldo660_set_points\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 563, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant [19 x i8] c"pldo660_set_points\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 562, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant [12 x i8] c"spmi_vs_ops\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1345, i32 35 }
@___asan_gen_.344 = private unnamed_addr constant [15 x i8] c"spmi_boost_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1356, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"boost_set_points\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 556, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant [16 x i8] c"spmi_ftsmps_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1367, i32 35 }
@___asan_gen_.353 = private unnamed_addr constant [18 x i8] c"ftsmps_set_points\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 553, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant [21 x i8] c"ftsmps2p5_set_points\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 554, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant [21 x i8] c"ftsmps426_set_points\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 555, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant [21 x i8] c"boost_byp_set_points\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 557, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant [21 x i8] c"spmi_ult_lo_smps_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1382, i32 35 }
@___asan_gen_.368 = private unnamed_addr constant [23 x i8] c"ult_lo_smps_set_points\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 558, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant [21 x i8] c"spmi_ult_ho_smps_ops\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1396, i32 35 }
@___asan_gen_.374 = private unnamed_addr constant [23 x i8] c"ult_ho_smps_set_points\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 559, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"spmi_ult_ldo_ops\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1411, i32 35 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c"ult_nldo_set_points\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 560, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c"ult_pldo_set_points\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 561, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 627, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 651, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [12 x i8] c"smps_ranges\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 483, i32 34 }
@___asan_gen_.404 = private unnamed_addr constant [14 x i8] c"hfs430_ranges\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 543, i32 34 }
@___asan_gen_.407 = private unnamed_addr constant [13 x i8] c"nldo1_ranges\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 462, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant [13 x i8] c"nldo2_ranges\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 466, i32 34 }
@___asan_gen_.413 = private unnamed_addr constant [13 x i8] c"nldo3_ranges\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 472, i32 34 }
@___asan_gen_.416 = private unnamed_addr constant [12 x i8] c"pldo_ranges\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 456, i32 34 }
@___asan_gen_.419 = private unnamed_addr constant [14 x i8] c"ln_ldo_ranges\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 478, i32 34 }
@___asan_gen_.422 = private unnamed_addr constant [15 x i8] c"ht_nldo_ranges\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 539, i32 34 }
@___asan_gen_.425 = private unnamed_addr constant [17 x i8] c"ht_lvpldo_ranges\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 535, i32 34 }
@___asan_gen_.428 = private unnamed_addr constant [15 x i8] c"nldo660_ranges\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 531, i32 34 }
@___asan_gen_.431 = private unnamed_addr constant [15 x i8] c"pldo660_ranges\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 527, i32 34 }
@___asan_gen_.434 = private unnamed_addr constant [13 x i8] c"boost_ranges\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 502, i32 34 }
@___asan_gen_.437 = private unnamed_addr constant [14 x i8] c"ftsmps_ranges\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 488, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"ftsmps2p5_ranges\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 493, i32 34 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"ftsmps426_ranges\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 498, i32 34 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"boost_byp_ranges\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 506, i32 34 }
@___asan_gen_.449 = private unnamed_addr constant [19 x i8] c"ult_lo_smps_ranges\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 510, i32 34 }
@___asan_gen_.452 = private unnamed_addr constant [19 x i8] c"ult_ho_smps_ranges\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 515, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant [16 x i8] c"ult_nldo_ranges\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 519, i32 34 }
@___asan_gen_.458 = private unnamed_addr constant [16 x i8] c"ult_pldo_ranges\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 523, i32 34 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1289, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant [18 x i8] c"pm8004_regulators\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2114, i32 41 }
@___asan_gen_.470 = private unnamed_addr constant [18 x i8] c"pm8005_regulators\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2120, i32 41 }
@___asan_gen_.473 = private unnamed_addr constant [18 x i8] c"pm8226_regulators\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1898, i32 41 }
@___asan_gen_.476 = private unnamed_addr constant [18 x i8] c"pm8841_regulators\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1936, i32 41 }
@___asan_gen_.479 = private unnamed_addr constant [18 x i8] c"pm8916_regulators\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1948, i32 41 }
@___asan_gen_.482 = private unnamed_addr constant [18 x i8] c"pm8941_regulators\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1861, i32 41 }
@___asan_gen_.485 = private unnamed_addr constant [18 x i8] c"pm8950_regulators\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1974, i32 41 }
@___asan_gen_.488 = private unnamed_addr constant [18 x i8] c"pm8994_regulators\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2007, i32 41 }
@___asan_gen_.491 = private unnamed_addr constant [19 x i8] c"pmi8994_regulators\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2057, i32 41 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"pm660_regulators\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2065, i32 41 }
@___asan_gen_.497 = private unnamed_addr constant [18 x i8] c"pm660l_regulators\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2094, i32 41 }
@___asan_gen_.500 = private unnamed_addr constant [18 x i8] c"pms405_regulators\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2128, i32 41 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2115, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2115, i32 18 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2116, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2116, i32 18 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2121, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2121, i32 18 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2123, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2123, i32 18 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2124, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2124, i32 18 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1904, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1904, i32 18 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1905, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1906, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1906, i32 18 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1907, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1908, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1909, i32 4 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1909, i32 18 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1910, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1911, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1912, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1913, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1913, i32 19 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1914, i32 4 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1915, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1915, i32 19 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1916, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1917, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1918, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1918, i32 19 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1919, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1920, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1921, i32 4 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1922, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1922, i32 19 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1923, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1924, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1925, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1926, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1927, i32 4 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1928, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1928, i32 19 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1929, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1930, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1931, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1932, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1932, i32 20 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1942, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1942, i32 18 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1943, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1943, i32 18 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1944, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1944, i32 18 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1953, i32 18 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1954, i32 18 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1956, i32 18 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1959, i32 18 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1960, i32 18 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1961, i32 18 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1867, i32 18 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1869, i32 18 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1870, i32 18 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1871, i32 18 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1873, i32 18 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1874, i32 18 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1878, i32 19 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1886, i32 19 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1891, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1892, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1893, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1893, i32 20 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1893, i32 31 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1894, i32 4 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1894, i32 31 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1981, i32 18 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1982, i32 18 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1983, i32 18 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1984, i32 18 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1988, i32 18 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 1989, i32 18 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2000, i32 19 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2016, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2016, i32 18 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2017, i32 4 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2017, i32 19 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2018, i32 4 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2018, i32 19 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2019, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2019, i32 19 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2020, i32 18 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2021, i32 18 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2022, i32 18 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2023, i32 18 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2025, i32 18 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2027, i32 18 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2028, i32 18 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2032, i32 19 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2033, i32 19 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2036, i32 19 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2039, i32 19 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2048, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2049, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2050, i32 4 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2051, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2052, i32 20 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2072, i32 18 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2073, i32 18 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2076, i32 18 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2079, i32 18 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2086, i32 19 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2100, i32 18 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2102, i32 18 }
@___asan_gen_.842 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.843 = private constant [43 x i8] c"../drivers/regulator/qcom_spmi-regulator.c\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.843, i32 2103, i32 18 }
@___asan_gen_.845 = private unnamed_addr constant [37 x i8] c"switch.table.spmi_regulator_of_parse\00", align 1
@___asan_gen_.846 = private unnamed_addr constant [41 x i8] c"switch.table.spmi_regulator_of_parse.156\00", align 1
@llvm.compiler.used = appending global [248 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_qcom_spmi_regulator_driver_exit, ptr @__initcall__kmod_qcom_spmi_regulator__294_2270_qcom_spmi_regulator_driver_init6, ptr @qcom_spmi_regulator_driver_exit, ptr @qcom_spmi_regulator_probe._entry, ptr @qcom_spmi_regulator_probe._entry.9, ptr @qcom_spmi_regulator_probe._entry_ptr, ptr @qcom_spmi_regulator_probe._entry_ptr.11, ptr @spmi_regulator_init_slew_rate._entry, ptr @spmi_regulator_init_slew_rate._entry_ptr, ptr @spmi_regulator_init_slew_rate_ftsmps426._entry, ptr @spmi_regulator_init_slew_rate_ftsmps426._entry_ptr, ptr @spmi_regulator_match._entry, ptr @spmi_regulator_match._entry_ptr, ptr @spmi_regulator_of_parse._entry, ptr @spmi_regulator_of_parse._entry.15, ptr @spmi_regulator_of_parse._entry_ptr, ptr @spmi_regulator_of_parse._entry_ptr.17, ptr @spmi_regulator_select_voltage._entry, ptr @spmi_regulator_select_voltage._entry.37, ptr @spmi_regulator_select_voltage._entry_ptr, ptr @spmi_regulator_select_voltage._entry_ptr.39, ptr @spmi_regulator_vs_ocp_isr._entry, ptr @spmi_regulator_vs_ocp_isr._entry_ptr, ptr @qcom_spmi_regulator_driver, ptr @.str, ptr @qcom_spmi_regulator_match, ptr @.str.1, ptr @saw_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @spmi_saw_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @devm_delayed_work_autocancel.__key, ptr @.str.28, ptr @devm_delayed_work_autocancel.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @supported_regulators, ptr @.str.34, ptr @spmi_smps_ops, ptr @smps_set_points, ptr @spmi_hfs430_ops, ptr @hfs430_set_points, ptr @spmi_ldo_ops, ptr @nldo1_set_points, ptr @nldo2_set_points, ptr @nldo3_set_points, ptr @pldo_set_points, ptr @spmi_ln_ldo_ops, ptr @ln_ldo_set_points, ptr @spmi_ftsmps426_ops, ptr @ht_nldo_set_points, ptr @ht_lvpldo_set_points, ptr @nldo660_set_points, ptr @pldo660_set_points, ptr @spmi_vs_ops, ptr @spmi_boost_ops, ptr @boost_set_points, ptr @spmi_ftsmps_ops, ptr @ftsmps_set_points, ptr @ftsmps2p5_set_points, ptr @ftsmps426_set_points, ptr @boost_byp_set_points, ptr @spmi_ult_lo_smps_ops, ptr @ult_lo_smps_set_points, ptr @spmi_ult_ho_smps_ops, ptr @ult_ho_smps_set_points, ptr @spmi_ult_ldo_ops, ptr @ult_nldo_set_points, ptr @ult_pldo_set_points, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @smps_ranges, ptr @hfs430_ranges, ptr @nldo1_ranges, ptr @nldo2_ranges, ptr @nldo3_ranges, ptr @pldo_ranges, ptr @ln_ldo_ranges, ptr @ht_nldo_ranges, ptr @ht_lvpldo_ranges, ptr @nldo660_ranges, ptr @pldo660_ranges, ptr @boost_ranges, ptr @ftsmps_ranges, ptr @ftsmps2p5_ranges, ptr @ftsmps426_ranges, ptr @boost_byp_ranges, ptr @ult_lo_smps_ranges, ptr @ult_ho_smps_ranges, ptr @ult_nldo_ranges, ptr @ult_pldo_ranges, ptr @.str.40, ptr @.str.41, ptr @pm8004_regulators, ptr @pm8005_regulators, ptr @pm8226_regulators, ptr @pm8841_regulators, ptr @pm8916_regulators, ptr @pm8941_regulators, ptr @pm8950_regulators, ptr @pm8994_regulators, ptr @pmi8994_regulators, ptr @pm660_regulators, ptr @pm660l_regulators, ptr @pms405_regulators, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @switch.table.spmi_regulator_of_parse, ptr @switch.table.spmi_regulator_of_parse.156], section "llvm.metadata"
@0 = internal global [231 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_spmi_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_spmi_regulator_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saw_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_spmi_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_saw_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_spmi_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_of_parse._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_init_slew_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_init_slew_rate_ftsmps426._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_vs_ocp_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_regulators to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_smps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_hfs430_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs430_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo1_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo2_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo3_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pldo_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ln_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ln_ldo_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ftsmps426_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_nldo_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_lvpldo_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo660_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pldo660_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_vs_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_boost_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ftsmps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps2p5_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps426_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_byp_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ult_lo_smps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_lo_smps_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ult_ho_smps_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_ho_smps_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_ult_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_nldo_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_pldo_set_points to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_select_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_regulator_select_voltage._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs430_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo1_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo2_ranges to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo3_ranges to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pldo_ranges to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ln_ldo_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_nldo_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ht_lvpldo_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nldo660_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pldo660_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps2p5_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftsmps426_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_byp_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_lo_smps_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_ho_smps_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_nldo_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ult_pldo_ranges to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8004_regulators to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8005_regulators to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8226_regulators to i32), i32 700, i32 864, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8841_regulators to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_regulators to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_regulators to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_regulators to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_regulators to i32), i32 940, i32 1184, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8994_regulators to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_regulators to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660l_regulators to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_regulators to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spmi_regulator_of_parse to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spmi_regulator_of_parse.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_spmi_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_spmi_regulator_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_spmi_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_spmi_regulator_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_spmi_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %config = alloca %struct.regulator_config, align 4
  %lenp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #8
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lenp) #8
  %3 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lenp, align 4, !annotation !465
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %prev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %call3 = tail call ptr @dev_get_regmap(ptr noundef %8, ptr noundef null) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_match_device(ptr noundef nonnull @qcom_spmi_regulator_match, ptr noundef %dev1) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %lenp) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %9 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i182 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.of_parse_phandle.exit_crit_edge

if.then14.of_parse_phandle.exit_crit_edge:        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then14.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ null, %if.then14.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %call16 = call ptr @syscon_node_to_regmap(ptr noundef %retval.0.i) #8
  store ptr %call16, ptr @saw_regmap, align 4
  call void @of_node_put(ptr noundef %retval.0.i) #8
  %12 = load ptr, ptr @saw_regmap, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %of_parse_phandle.exit.if.end20_crit_edge

of_parse_phandle.exit.if.end20_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end, %of_parse_phandle.exit.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool22.not186 = icmp eq ptr %16, null
  br i1 %tobool22.not186, label %if.end20.cleanup_crit_edge, label %for.body.lr.ph

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end20
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap88 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %17 = phi ptr [ %16, %for.body.lr.ph ], [ %75, %for.inc.for.body_crit_edge ]
  %reg.0187 = phi ptr [ %14, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %18 = load ptr, ptr @saw_regmap, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %for.body.if.end31_crit_edge, label %if.then24

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then24:                                        ; preds = %for.body
  %call26 = call ptr @of_get_child_by_name(ptr noundef %2, ptr noundef nonnull %17) #8
  %call27 = call ptr @of_find_property(ptr noundef %call26, ptr noundef nonnull @.str.7, ptr noundef nonnull %lenp) #8
  call void @of_node_put(ptr noundef %call26) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then24.if.end31_crit_edge, label %if.then24.for.inc_crit_edge

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end31:                                         ; preds = %if.then24.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %call.i183 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 408, i32 noundef 3520) #8
  %tobool33.not = icmp eq ptr %call.i183, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %dev36 = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 1
  %19 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %dev36, align 4
  %base = getelementptr inbounds %struct.spmi_regulator_data, ptr %reg.0187, i32 0, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base, align 4
  %base37 = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 13
  %22 = ptrtoint ptr %base37 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %base37, align 8
  %regmap38 = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 3
  %23 = ptrtoint ptr %regmap38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call3, ptr %regmap38, align 4
  %ocp = getelementptr inbounds %struct.spmi_regulator_data, ptr %reg.0187, i32 0, i32 3
  %24 = ptrtoint ptr %ocp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ocp, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %if.end35.if.end47_crit_edge, label %if.then40

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then40:                                        ; preds = %if.end35
  %call42 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull %25) #8
  %ocp_irq = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 6
  %26 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call42, ptr %ocp_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.then40.cleanup_crit_edge, label %if.then40.if.end47_crit_edge

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.then40.if.end47_crit_edge, %if.end35.if.end47_crit_edge
  %id = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 6
  %27 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %id, align 8
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 13
  %28 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 12
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type, align 8
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %base, align 4
  %conv = zext i16 %31 to i32
  %add = add nuw nsw i32 %conv, 70
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 34
  %32 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add, ptr %enable_reg, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 35
  %33 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %enable_mask, align 4
  %enable_val = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 36
  %34 = ptrtoint ptr %enable_val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 128, ptr %enable_val, align 8
  %35 = ptrtoint ptr %reg.0187 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg.0187, align 4
  %37 = ptrtoint ptr %call.i183 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %call.i183, align 8
  %supply = getelementptr inbounds %struct.spmi_regulator_data, ptr %reg.0187, i32 0, i32 2
  %38 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %supply, align 4
  %supply_name = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 1
  %40 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %supply_name, align 4
  %41 = load ptr, ptr %reg.0187, align 4
  %of_match = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 2
  %42 = ptrtoint ptr %of_match to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %of_match, align 8
  %of_parse_cb = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 5
  %43 = ptrtoint ptr %of_parse_cb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @spmi_regulator_of_parse, ptr %of_parse_cb, align 4
  %of_map_mode = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 60
  %44 = ptrtoint ptr %of_map_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @spmi_regulator_of_map_mode, ptr %of_map_mode, align 8
  %force_type = getelementptr inbounds %struct.spmi_regulator_data, ptr %reg.0187, i32 0, i32 4
  %45 = ptrtoint ptr %force_type to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %force_type, align 4
  %call62 = call fastcc i32 @spmi_regulator_match(ptr noundef nonnull %call.i183, i16 noundef zeroext %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end47.for.inc_crit_edge

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end65:                                         ; preds = %if.end47
  %47 = load ptr, ptr @saw_regmap, align 4
  %tobool66.not = icmp eq ptr %47, null
  br i1 %tobool66.not, label %if.end65.if.end77_crit_edge, label %if.then67

if.end65.if.end77_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then67:                                        ; preds = %if.end65
  %48 = ptrtoint ptr %reg.0187 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg.0187, align 4
  %call69 = call ptr @of_get_child_by_name(ptr noundef %2, ptr noundef %49) #8
  %call70 = call ptr @of_find_property(ptr noundef %call69, ptr noundef nonnull @.str.8, ptr noundef nonnull %lenp) #8
  call void @of_node_put(ptr noundef %call69) #8
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.then67.if.end77_crit_edge, label %if.then72

if.then67.if.end77_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 10
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 8
  %52 = call ptr @memcpy(ptr @spmi_saw_ops, ptr %51, i32 144)
  store ptr @spmi_regulator_saw_set_voltage, ptr getelementptr inbounds (%struct.regulator_ops, ptr @spmi_saw_ops, i32 0, i32 3), align 4
  store ptr @spmi_saw_ops, ptr %ops, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.then67.if.end77_crit_edge, %if.end65.if.end77_crit_edge
  %set_points = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 4
  %53 = ptrtoint ptr %set_points to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_points, align 8
  %tobool78.not = icmp eq ptr %54, null
  br i1 %tobool78.not, label %if.end77.if.end86_crit_edge, label %land.lhs.true

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end77
  %count = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp80 = icmp eq i32 %56, 1
  br i1 %cmp80, label %if.then82, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then82:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %step_uV = getelementptr inbounds %struct.spmi_voltage_range, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %step_uV, align 4
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %call.i183, i32 0, i32 15
  %61 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %uV_step, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %land.lhs.true.if.end86_crit_edge, %if.end77.if.end86_crit_edge
  %62 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev1, ptr %config, align 4
  %63 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i183, ptr %driver_data, align 4
  %64 = ptrtoint ptr %regmap88 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call3, ptr %regmap88, align 4
  %call90 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull %call.i183, ptr noundef nonnull %config) #8
  %cmp.i184 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end95, label %if.end97

do.end95:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef %36) #11
  %65 = ptrtoint ptr %call90 to i32
  br label %cleanup

if.end97:                                         ; preds = %if.end86
  %node98 = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 14
  %66 = ptrtoint ptr %node98 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %node98, ptr %node98, align 4
  %prev.i185 = getelementptr inbounds %struct.spmi_regulator, ptr %call.i183, i32 0, i32 14, i32 1
  %67 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %node98, ptr %prev.i185, align 4
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node98, ptr noundef nonnull %call.i, ptr noundef %69) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end97.for.inc_crit_edge

if.end97.for.inc_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %node98, ptr %prev1.i.i, align 4
  %71 = ptrtoint ptr %node98 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %node98, align 4
  %72 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %prev.i185, align 4
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %node98, ptr %call.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end97.for.inc_crit_edge, %if.end47.for.inc_crit_edge, %if.then24.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.spmi_regulator_data, ptr %reg.0187, i32 1
  %74 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %incdec.ptr, align 4
  %tobool22.not = icmp eq ptr %75, null
  br i1 %tobool22.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end95, %if.then40.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %65, %do.end95 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ %call42, %if.then40.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lenp) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_of_parse(ptr noundef %node, ptr nocapture noundef readnone %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %reg.i111 = alloca i8, align 1
  %reg.i95 = alloca i8, align 1
  %range_sel.i.i = alloca i8, align 1
  %reg.i = alloca i8, align 1
  %ctrl_reg.i = alloca [8 x i8], align 8
  %data = alloca %struct.spmi_regulator_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #8
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %data, align 4
  %pin_ctrl_hpm.i = getelementptr inbounds %struct.spmi_regulator_init_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %pin_ctrl_hpm.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %pin_ctrl_hpm.i, align 4
  %vs_soft_start_strength.i = getelementptr inbounds %struct.spmi_regulator_init_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %vs_soft_start_strength.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %vs_soft_start_strength.i, align 4
  %ocp_max_retries.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 8
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.18, ptr noundef %ocp_max_retries.i, i32 noundef 1, i32 noundef 0) #8
  %ocp_retry_delay_ms.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 9
  %call.i.i18.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.19, ptr noundef %ocp_retry_delay_ms.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i19.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef nonnull %data, i32 noundef 1, i32 noundef 0) #8
  %call.i.i20.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.21, ptr noundef %pin_ctrl_hpm.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i21.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.22, ptr noundef %vs_soft_start_strength.i, i32 noundef 1, i32 noundef 0) #8
  %7 = ptrtoint ptr %ocp_max_retries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ocp_max_retries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ocp_max_retries.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %ocp_max_retries.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %ocp_retry_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocp_retry_delay_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ocp_retry_delay_ms.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %ocp_retry_delay_ms.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl_reg.i) #8
  %13 = getelementptr inbounds [8 x i8], ptr %ctrl_reg.i, i32 0, i32 5
  %14 = getelementptr inbounds [8 x i8], ptr %ctrl_reg.i, i32 0, i32 6
  %logical_type.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %ctrl_reg.i, align 8
  %16 = ptrtoint ptr %logical_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logical_type.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %21 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %add.i.i, ptr noundef nonnull %ctrl_reg.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.spmi_regulator_init_registers.exit.thread138_crit_edge

if.end6.spmi_regulator_init_registers.exit.thread138_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_init_registers.exit.thread138

if.end.i:                                         ; preds = %if.end6
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data, align 4
  %and.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %switch.i = icmp ult i32 %17, 3
  %or.cond.i = select i1 %tobool1.not.i, i1 %switch.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %14, align 2
  %26 = and i8 %25, -16
  %27 = trunc i32 %23 to i8
  %28 = and i8 %27, 15
  %conv9.i = or i8 %26, %28
  store i8 %conv9.i, ptr %14, align 2
  br label %if.end10.i

if.end10.i:                                       ; preds = %sw.bb.i, %if.end.i.if.end10.i_crit_edge
  %29 = ptrtoint ptr %pin_ctrl_hpm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pin_ctrl_hpm.i, align 4
  %and11.i = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %31 = icmp ult i32 %17, 10
  %or.cond = select i1 %tobool12.not.i, i1 %31, i1 false
  br i1 %or.cond, label %switch.hole_check, label %if.end10.i.if.end38.i_crit_edge

if.end10.i.if.end38.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

switch.hole_check:                                ; preds = %if.end10.i
  %switch.maskindex = trunc i32 %17 to i16
  %switch.shifted = lshr i16 903, %switch.maskindex
  %32 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %switch.lobit.not = icmp eq i16 %32, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end38.i_crit_edge, label %switch.lookup

switch.hole_check.if.end38.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.spmi_regulator_of_parse, i32 0, i32 %17
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %33)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep148 = getelementptr inbounds [10 x i8], ptr @switch.table.spmi_regulator_of_parse.156, i32 0, i32 %17
  %34 = ptrtoint ptr %switch.gep148 to i32
  call void @__asan_load1_noabort(i32 %34)
  %switch.load149 = load i8, ptr %switch.gep148, align 1
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %13, align 1
  %37 = and i8 %36, %switch.load
  %38 = trunc i32 %30 to i8
  %39 = and i8 %switch.load149, %38
  %conv24.i = or i8 %37, %39
  store i8 %conv24.i, ptr %13, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %switch.lookup, %switch.hole_check.if.end38.i_crit_edge, %if.end10.i.if.end38.i_crit_edge
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %base.i.i, align 8
  %conv.i75.i = zext i16 %43 to i32
  %add.i76.i = add nuw nsw i32 %conv.i75.i, 64
  %call.i77.i = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef %add.i76.i, ptr noundef nonnull %ctrl_reg.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool41.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end38.i.spmi_regulator_init_registers.exit.thread138_crit_edge

if.end38.i.spmi_regulator_init_registers.exit.thread138_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_init_registers.exit.thread138

if.end43.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.then45.i, label %if.end43.i.spmi_regulator_init_registers.exit.thread_crit_edge

if.end43.i.spmi_regulator_init_registers.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_init_registers.exit.thread

if.then45.i:                                      ; preds = %if.end43.i
  %44 = ptrtoint ptr %vs_soft_start_strength.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vs_soft_start_strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp46.not.i = icmp eq i32 %45, 4
  br i1 %cmp46.not.i, label %if.then45.i.spmi_regulator_init_registers.exit.thread_crit_edge, label %spmi_regulator_init_registers.exit

if.then45.i.spmi_regulator_init_registers.exit.thread_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_init_registers.exit.thread

spmi_regulator_init_registers.exit.thread:        ; preds = %if.then45.i.spmi_regulator_init_registers.exit.thread_crit_edge, %if.end43.i.spmi_regulator_init_registers.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl_reg.i) #8
  br label %if.end9

spmi_regulator_init_registers.exit.thread138:     ; preds = %if.end38.i.spmi_regulator_init_registers.exit.thread138_crit_edge, %if.end6.spmi_regulator_init_registers.exit.thread138_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i77.i, %if.end38.i.spmi_regulator_init_registers.exit.thread138_crit_edge ], [ %call.i.i, %if.end6.spmi_regulator_init_registers.exit.thread138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl_reg.i) #8
  br label %do.end

spmi_regulator_init_registers.exit:               ; preds = %if.then45.i
  %conv51.i = and i32 %45, 3
  %46 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i, align 4
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %base.i.i, align 8
  %conv.i80.i = zext i16 %49 to i32
  %add.i81.i = add nuw nsw i32 %conv.i80.i, 76
  %call.i.i.i82 = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %add.i81.i, i32 noundef 3, i32 noundef %conv51.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl_reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i82)
  %tobool7.not = icmp eq i32 %call.i.i.i82, 0
  br i1 %tobool7.not, label %spmi_regulator_init_registers.exit.if.end9_crit_edge, label %spmi_regulator_init_registers.exit.do.end_crit_edge

spmi_regulator_init_registers.exit.do.end_crit_edge: ; preds = %spmi_regulator_init_registers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

spmi_regulator_init_registers.exit.if.end9_crit_edge: ; preds = %spmi_regulator_init_registers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %spmi_regulator_init_registers.exit.do.end_crit_edge, %spmi_regulator_init_registers.exit.thread138
  %retval.0.i141 = phi i32 [ %retval.0.i.ph, %spmi_regulator_init_registers.exit.thread138 ], [ %call.i.i.i82, %spmi_regulator_init_registers.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i141) #11
  br label %cleanup

if.end9:                                          ; preds = %spmi_regulator_init_registers.exit.if.end9_crit_edge, %spmi_regulator_init_registers.exit.thread
  %50 = ptrtoint ptr %logical_type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %logical_type.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %if.end9.sw.epilog_crit_edge [
    i32 4, label %if.end9.sw.bb_crit_edge
    i32 7, label %if.end9.sw.bb_crit_edge152
    i32 8, label %if.end9.sw.bb_crit_edge153
    i32 0, label %if.end9.sw.bb_crit_edge154
    i32 10, label %sw.bb14
    i32 11, label %sw.bb19
  ]

if.end9.sw.bb_crit_edge154:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge153:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge152:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %if.end9.sw.bb_crit_edge152, %if.end9.sw.bb_crit_edge153, %if.end9.sw.bb_crit_edge154
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #8
  %53 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %reg.i, align 1
  %54 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i.i, align 4
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %base.i.i, align 8
  %conv.i.i85 = zext i16 %57 to i32
  %add.i.i86 = add nuw nsw i32 %conv.i.i85, 97
  %call.i.i87 = call i32 @regmap_bulk_read(ptr noundef %55, i32 noundef %add.i.i86, ptr noundef nonnull %reg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87)
  %tobool.not.i88 = icmp eq i32 %call.i.i87, 0
  br i1 %tobool.not.i88, label %if.end.i90, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.23, i32 noundef %call.i.i87) #11
  br label %spmi_regulator_init_slew_rate.exit.thread

if.end.i90:                                       ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %range_sel.i.i) #8
  %60 = ptrtoint ptr %range_sel.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %range_sel.i.i, align 1, !annotation !465
  %set_points.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %set_points.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_points.i.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %count.i.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.spmi_voltage_range, ptr %64, i32 %66
  %67 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i.i, align 4
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %base.i.i, align 8
  %conv.i.i.i = zext i16 %70 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 64
  %call.i.i.i89 = call i32 @regmap_bulk_read(ptr noundef %68, i32 noundef %add.i.i.i, ptr noundef nonnull %range_sel.i.i, i32 noundef 1) #8
  %cmp15.i.i = icmp ult ptr %64, %add.ptr.i.i
  br i1 %cmp15.i.i, label %for.body.lr.ph.i.i, label %if.end.i90.spmi_regulator_find_range.exit.thread.i_crit_edge

if.end.i90.spmi_regulator_find_range.exit.thread.i_crit_edge: ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i90
  %71 = ptrtoint ptr %range_sel.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %range_sel.i.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %range.016.i.i = phi ptr [ %64, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %range_sel3.i.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %range_sel3.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %range_sel3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %72)
  %cmp5.i.i = icmp eq i8 %74, %72
  br i1 %cmp5.i.i, label %spmi_regulator_find_range.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.spmi_voltage_range, ptr %range.016.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.spmi_regulator_find_range.exit.thread.i_crit_edge

for.inc.i.i.spmi_regulator_find_range.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

spmi_regulator_find_range.exit.thread.i:          ; preds = %for.inc.i.i.spmi_regulator_find_range.exit.thread.i_crit_edge, %if.end.i90.spmi_regulator_find_range.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i.i) #8
  br label %spmi_regulator_init_slew_rate.exit.thread

spmi_regulator_find_range.exit.i:                 ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i.i) #8
  %tobool2.not.i = icmp eq ptr %range.016.i.i, null
  br i1 %tobool2.not.i, label %spmi_regulator_find_range.exit.i.spmi_regulator_init_slew_rate.exit.thread_crit_edge, label %spmi_regulator_init_slew_rate.exit

spmi_regulator_find_range.exit.i.spmi_regulator_init_slew_rate.exit.thread_crit_edge: ; preds = %spmi_regulator_find_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_init_slew_rate.exit.thread

spmi_regulator_init_slew_rate.exit.thread:        ; preds = %spmi_regulator_find_range.exit.i.spmi_regulator_init_slew_rate.exit.thread_crit_edge, %spmi_regulator_find_range.exit.thread.i, %do.end.i
  %retval.0.i94.ph = phi i32 [ -22, %spmi_regulator_find_range.exit.thread.i ], [ -22, %spmi_regulator_find_range.exit.i.spmi_regulator_init_slew_rate.exit.thread_crit_edge ], [ %call.i.i87, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #8
  br label %cleanup

spmi_regulator_init_slew_rate.exit:               ; preds = %spmi_regulator_find_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %logical_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %logical_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %76)
  %cond21.i = icmp eq i32 %76, 4
  %..i = select i1 %cond21.i, i32 8, i32 20
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reg.i, align 1
  %conv.i = zext i8 %78 to i32
  %and.i92 = lshr i32 %conv.i, 3
  %79 = and i32 %and.i92, 3
  %and6.i = and i32 %conv.i, 7
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %step_uV.i, align 4
  %mul.i = mul i32 %81, 19200
  %mul8.i = shl i32 %mul.i, %79
  %shl9.i = shl nuw nsw i32 %..i, %and6.i
  %mul10.i = mul nuw nsw i32 %shl9.i, 1000
  %div.i = sdiv i32 %mul8.i, %mul10.i
  %mul11.i = shl nsw i32 %div.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i)
  %cmp.i93 = icmp sgt i32 %div.i, 2
  %div12.i = sdiv i32 %mul11.i, 5
  %cond.i = select i1 %cmp.i93, i32 %div12.i, i32 1
  %slew_rate14.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 11
  %82 = ptrtoint ptr %slew_rate14.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond.i, ptr %slew_rate14.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #8
  br label %sw.epilogthread-pre-split

sw.bb14:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i95) #8
  %83 = ptrtoint ptr %reg.i95 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %reg.i95, align 1
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 4
  %84 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_points.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i.i, align 4
  %90 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %base.i.i, align 8
  %conv.i.i98 = zext i16 %91 to i32
  %add.i.i99 = add nuw nsw i32 %conv.i.i98, 97
  %call.i.i100 = call i32 @regmap_bulk_read(ptr noundef %89, i32 noundef %add.i.i99, ptr noundef nonnull %reg.i95, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool.not.i101 = icmp eq i32 %call.i.i100, 0
  br i1 %tobool.not.i101, label %spmi_regulator_init_slew_rate_ftsmps426.exit.thread, label %spmi_regulator_init_slew_rate_ftsmps426.exit

spmi_regulator_init_slew_rate_ftsmps426.exit.thread: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %reg.i95 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %reg.i95, align 1
  %94 = and i8 %93, 3
  %and.i104 = zext i8 %94 to i32
  %step_uV.i105 = getelementptr inbounds %struct.spmi_voltage_range, ptr %87, i32 0, i32 2
  %95 = ptrtoint ptr %step_uV.i105 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %step_uV.i105, align 4
  %mul.i106 = mul i32 %96, 4800
  %shl.i = shl nuw nsw i32 2, %and.i104
  %mul2.i = mul nuw nsw i32 %shl.i, 1000
  %div.i107 = sdiv i32 %mul.i106, %mul2.i
  %mul3.i = mul nsw i32 %div.i107, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %mul3.i)
  %cmp.i108 = icmp sgt i32 %mul3.i, 21
  %div4.i = sdiv i32 %mul3.i, 11
  %cond.i109 = select i1 %cmp.i108, i32 %div4.i, i32 1
  %slew_rate6.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 11
  %97 = ptrtoint ptr %slew_rate6.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond.i109, ptr %slew_rate6.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i95) #8
  br label %sw.epilogthread-pre-split

spmi_regulator_init_slew_rate_ftsmps426.exit:     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i102 = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 1
  %98 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i102, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.23, i32 noundef %call.i.i100) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i95) #8
  br label %cleanup

sw.bb19:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i111) #8
  %100 = ptrtoint ptr %reg.i111 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %reg.i111, align 1
  %set_points.i112 = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 4
  %101 = ptrtoint ptr %set_points.i112 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %set_points.i112, align 8
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %105 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i.i, align 4
  %107 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %base.i.i, align 8
  %conv.i.i115 = zext i16 %108 to i32
  %add.i.i116 = add nuw nsw i32 %conv.i.i115, 97
  %call.i.i117 = call i32 @regmap_bulk_read(ptr noundef %106, i32 noundef %add.i.i116, ptr noundef nonnull %reg.i111, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool.not.i118 = icmp eq i32 %call.i.i117, 0
  br i1 %tobool.not.i118, label %spmi_regulator_init_slew_rate_ftsmps426.exit133.thread, label %spmi_regulator_init_slew_rate_ftsmps426.exit133

spmi_regulator_init_slew_rate_ftsmps426.exit133.thread: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %reg.i111 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %reg.i111, align 1
  %111 = and i8 %110, 3
  %and.i121 = zext i8 %111 to i32
  %step_uV.i122 = getelementptr inbounds %struct.spmi_voltage_range, ptr %104, i32 0, i32 2
  %112 = ptrtoint ptr %step_uV.i122 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %step_uV.i122, align 4
  %mul.i123 = mul i32 %113, 1600
  %shl.i124 = shl nuw nsw i32 2, %and.i121
  %mul2.i125 = mul nuw nsw i32 %shl.i124, 1000
  %div.i126 = sdiv i32 %mul.i123, %mul2.i125
  %mul3.i127 = mul nsw i32 %div.i126, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %mul3.i127)
  %cmp.i128 = icmp sgt i32 %mul3.i127, 21
  %div4.i129 = sdiv i32 %mul3.i127, 11
  %cond.i130 = select i1 %cmp.i128, i32 %div4.i129, i32 1
  %slew_rate6.i131 = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 11
  %114 = ptrtoint ptr %slew_rate6.i131 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %cond.i130, ptr %slew_rate6.i131, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i111) #8
  br label %sw.epilogthread-pre-split

spmi_regulator_init_slew_rate_ftsmps426.exit133:  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i119 = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 1
  %115 = ptrtoint ptr %dev.i119 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.23, i32 noundef %call.i.i117) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i111) #8
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %spmi_regulator_init_slew_rate_ftsmps426.exit133.thread, %spmi_regulator_init_slew_rate_ftsmps426.exit.thread, %spmi_regulator_init_slew_rate.exit
  %117 = ptrtoint ptr %logical_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr = load i32, ptr %logical_type.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end9.sw.epilog_crit_edge
  %118 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %51, %if.end9.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp.not = icmp eq i32 %118, 2
  br i1 %cmp.not, label %sw.epilog.if.end26_crit_edge, label %if.then25

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %ocp_irq = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 6
  %119 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %ocp_irq, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.epilog.if.end26_crit_edge
  %ocp_irq27 = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 6
  %120 = ptrtoint ptr %ocp_irq27 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ocp_irq27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool28.not = icmp eq i32 %121, 0
  br i1 %tobool28.not, label %if.end26.if.end43_crit_edge, label %if.then29

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then29:                                        ; preds = %if.end26
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %121, ptr noundef nonnull @spmi_regulator_vs_ocp_isr, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp32 = icmp slt i32 %call.i, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %ocp_irq27 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ocp_irq27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %123, i32 noundef %call.i) #11
  br label %cleanup

if.end38:                                         ; preds = %if.then29
  %ocp_work = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 2
  call void @__init_work(ptr noundef %ocp_work, i32 noundef 0) #8
  %124 = ptrtoint ptr %ocp_work to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -64, ptr %ocp_work, align 4
  %lockdep_map.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @devm_delayed_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 2, i32 0, i32 1
  %125 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 1
  %126 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 2, i32 0, i32 2
  %127 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @spmi_regulator_vs_ocp_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.spmi_regulator, ptr %1, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.30, ptr noundef nonnull @devm_delayed_work_autocancel.__key.29) #8
  %call.i134 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %ocp_work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool40.not = icmp eq i32 %call.i134, 0
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.end38.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end38.cleanup_crit_edge, %do.end36, %spmi_regulator_init_slew_rate_ftsmps426.exit133, %spmi_regulator_init_slew_rate_ftsmps426.exit, %spmi_regulator_init_slew_rate.exit.thread, %do.end
  %retval.0 = phi i32 [ %retval.0.i141, %do.end ], [ %call.i, %do.end36 ], [ 0, %if.end43 ], [ %call.i.i100, %spmi_regulator_init_slew_rate_ftsmps426.exit ], [ %call.i.i117, %spmi_regulator_init_slew_rate_ftsmps426.exit133 ], [ %call.i134, %if.end38.cleanup_crit_edge ], [ %retval.0.i94.ph, %spmi_regulator_init_slew_rate.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spmi_regulator_of_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %switch.selectcmp5 = icmp eq i32 %mode, 1
  %switch.select6 = select i1 %switch.selectcmp5, i32 2, i32 %switch.select
  ret i32 %switch.select6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spmi_regulator_match(ptr nocapture noundef %vreg, i16 noundef zeroext %force_type) unnamed_addr #2 align 64 {
entry:
  %version = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %version) #8
  %0 = getelementptr inbounds [5 x i8], ptr %version, i32 0, i32 3
  %1 = getelementptr inbounds [5 x i8], ptr %version, i32 0, i32 4
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 3
  %2 = call ptr @memset(ptr %version, i32 255, i32 5)
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 13
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %version, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spmi_regulator_match.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spmi_regulator_match, %cleanup)) #8
          to label %if.then6 [label %cleanup], !srcloc !466

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spmi_regulator_match.__UNIQUE_ID_ddebug289, ptr noundef %8, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %version, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %force_type)
  %tobool8.not = icmp eq i16 %force_type, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  br label %if.end15

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %15 = lshr i16 %force_type, 8
  %conv13 = trunc i16 %15 to i8
  %conv14 = trunc i16 %force_type to i8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then9
  %type.0 = phi i8 [ %conv13, %if.else ], [ %12, %if.then9 ]
  %subtype.0 = phi i8 [ %conv14, %if.else ], [ %14, %if.then9 ]
  %conv19 = zext i8 %type.0 to i32
  %conv23 = zext i8 %subtype.0 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15
  %i.095 = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx17 = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv19)
  %cmp20 = icmp eq i32 %17, %conv19
  br i1 %cmp20, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %subtype22 = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 1
  %18 = ptrtoint ptr %subtype22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subtype22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv23)
  %cmp24 = icmp eq i32 %19, %conv23
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true
  %revision_min = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 3
  %20 = ptrtoint ptr %revision_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %revision_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp27.not = icmp ugt i32 %21, %conv
  br i1 %cmp27.not, label %land.lhs.true26.for.inc_crit_edge, label %land.lhs.true29

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %revision_max = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 4
  %22 = ptrtoint ptr %revision_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %revision_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp30.not = icmp ult i32 %23, %conv
  br i1 %cmp30.not, label %land.lhs.true29.for.inc_crit_edge, label %found

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true29.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 61
  br i1 %exitcond.not, label %do.end36, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end36:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %dev37 = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 1
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 4
  %26 = ptrtoint ptr %vreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vreg, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.34, ptr noundef %27, i32 noundef %conv19, i32 noundef %conv23, i32 noundef %conv) #11
  br label %cleanup

found:                                            ; preds = %land.lhs.true29
  %logical_type = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 2
  %28 = ptrtoint ptr %logical_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %logical_type, align 4
  %logical_type40 = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 5
  %30 = ptrtoint ptr %logical_type40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %logical_type40, align 4
  %set_points = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 6
  %31 = ptrtoint ptr %set_points to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_points, align 4
  %set_points41 = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 4
  %33 = ptrtoint ptr %set_points41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %set_points41, align 8
  %hpm_min_load = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 7
  %34 = ptrtoint ptr %hpm_min_load to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hpm_min_load, align 4
  %hpm_min_load42 = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 10
  %36 = ptrtoint ptr %hpm_min_load42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %hpm_min_load42, align 8
  %ops = getelementptr [61 x %struct.spmi_regulator_mapping], ptr @supported_regulators, i32 0, i32 %i.095, i32 5
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %ops44 = getelementptr inbounds %struct.regulator_desc, ptr %vreg, i32 0, i32 10
  %39 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %ops44, align 8
  %40 = add nsw i32 %i.095, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %tobool46.not = icmp ult i32 %40, 6
  br i1 %tobool46.not, label %found.cleanup_crit_edge, label %if.then47

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %found
  %n_voltages = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %32, i32 0, i32 2
  %41 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not = icmp eq i32 %42, 0
  br i1 %tobool49.not, label %if.then50, label %if.then47.if.end52_crit_edge

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %if.then47
  %43 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %32, align 4
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %32, i32 0, i32 1
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 4
  %add.ptr17.i = getelementptr %struct.spmi_voltage_range, ptr %44, i32 %46
  %cmp18.i = icmp ult ptr %44, %add.ptr17.i
  br i1 %cmp18.i, label %if.then50.for.body.i_crit_edge, label %if.then50.if.end52_crit_edge

if.then50.if.end52_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50.for.body.i_crit_edge:                   ; preds = %if.then50
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then50.for.body.i_crit_edge
  %range.019.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %44, %if.then50.for.body.i_crit_edge ]
  %set_point_max_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.019.i, i32 0, i32 4
  %47 = ptrtoint ptr %set_point_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %set_point_max_uV.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %set_point_min_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.019.i, i32 0, i32 3
  %49 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %set_point_min_uV.i, align 4
  %sub.i = sub i32 %48, %50
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.019.i, i32 0, i32 2
  %51 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %step_uV.i, align 4
  %div.i = udiv i32 %sub.i, %52
  %add.i92 = add i32 %div.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %n.0.i = phi i32 [ %add.i92, %if.then.i ], [ 0, %for.body.i.if.end.i_crit_edge ]
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.019.i, i32 0, i32 5
  %53 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %n.0.i, ptr %n_voltages.i, align 4
  %54 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_voltages, align 4
  %add5.i = add i32 %55, %n.0.i
  store i32 %add5.i, ptr %n_voltages, align 4
  %incdec.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %range.019.i, i32 1
  %56 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %32, align 4
  %58 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %count.i, align 4
  %add.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %57, i32 %59
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end52_crit_edge

if.end.i.if.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end52:                                         ; preds = %if.end.i.if.end52_crit_edge, %if.then50.if.end52_crit_edge, %if.then47.if.end52_crit_edge
  %60 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_voltages, align 4
  %n_voltages56 = getelementptr inbounds %struct.regulator_desc, ptr %vreg, i32 0, i32 8
  %62 = ptrtoint ptr %n_voltages56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %n_voltages56, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %found.cleanup_crit_edge, %do.end36, %if.then6, %do.body
  %retval.0 = phi i32 [ -19, %do.end36 ], [ %call.i, %if.then6 ], [ 0, %if.end52 ], [ 0, %found.cleanup_crit_edge ], [ %call.i, %do.body ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %version) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_saw_set_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %voltage_sel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %voltage_sel) #8
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_points.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %add.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %5
  %cmp23.i = icmp ult ptr %3, %add.ptr.i
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %range.025.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %selector.addr.024.i = phi i32 [ %sub6.i, %if.end.i.for.body.i_crit_edge ], [ %selector, %entry.for.body.i_crit_edge ]
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 5
  %6 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.024.i, i32 %7)
  %cmp3.i = icmp ult i32 %selector.addr.024.i, %7
  br i1 %cmp3.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %sub6.i = sub i32 %selector.addr.024.i, %7
  %incdec.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %range.025.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %set_point_min_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 3
  %8 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_point_min_uV.i, align 4
  %10 = ptrtoint ptr %range.025.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %range.025.i, align 4
  %sub.i = sub i32 %9, %11
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 2
  %12 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %step_uV.i, align 4
  %div.i = udiv i32 %sub.i, %13
  %add.i = add i32 %div.i, %selector.addr.024.i
  %conv.i = trunc i32 %add.i to i8
  %14 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %voltage_sel, align 1
  %range_sel4.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 6
  %15 = ptrtoint ptr %range_sel4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %range_sel4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not = icmp eq i8 %16, 0
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spmi_regulator_saw_set_voltage.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spmi_regulator_saw_set_voltage, %cleanup)) #8
          to label %if.then9 [label %cleanup], !srcloc !466

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %conv10 = zext i8 %16 to i32
  %17 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %voltage_sel, align 1
  %conv11 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spmi_regulator_saw_set_voltage.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %conv10, i32 noundef %conv11) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 @smp_call_function_single(i32 noundef 0, ptr noundef nonnull @spmi_saw_set_vdd, ptr noundef nonnull %voltage_sel, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %do.body, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -22, %if.then9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %voltage_sel) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_vs_ocp_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %vs_enable_time = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %vs_enable_time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vs_enable_time, align 8
  %sub.i = sub i64 %call, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #12, !srcloc !467
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !468
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 20000, i64 %cond213.i.i.i)
  %cmp = icmp sgt i64 %cond213.i.i.i, 20000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ocp_count = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %ocp_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ocp_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 19327320) #8
  %ocp_count2 = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 7
  %7 = ptrtoint ptr %ocp_count2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ocp_count2, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %ocp_count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 13
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %12 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 70
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add.i.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call1.i = tail call i64 @ktime_get() #8
  %13 = ptrtoint ptr %vs_enable_time to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call1.i, ptr %vs_enable_time, align 8
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %base.i.i, align 8
  %conv.i3.i = zext i16 %17 to i32
  %add.i4.i = add nuw nsw i32 %conv.i3.i, 70
  %call.i.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i4.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end15

if.else:                                          ; preds = %if.end
  %ocp_max_retries = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 8
  %18 = ptrtoint ptr %ocp_max_retries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ocp_max_retries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp8.not = icmp sgt i32 %inc, %19
  br i1 %cmp8.not, label %do.end, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ocp_work = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 2
  %ocp_retry_delay_ms = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 9
  %20 = ptrtoint ptr %ocp_retry_delay_ms to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ocp_retry_delay_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %21) #8
  %add = add i32 %call2.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %ocp_work, i32 noundef %add) #8
  br label %if.end15

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spmi_regulator, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.26, i32 noundef %inc) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then9, %if.then5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spmi_regulator_vs_ocp_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i.i = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 4
  %base.i.i = getelementptr i8, ptr %work, i32 144
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %3 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 70
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call1.i = tail call i64 @ktime_get() #8
  %vs_enable_time.i = getelementptr i8, ptr %work, i32 136
  %4 = ptrtoint ptr %vs_enable_time.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call1.i, ptr %vs_enable_time.i, align 8
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %base.i.i, align 8
  %conv.i3.i = zext i16 %8 to i32
  %add.i4.i = add nuw nsw i32 %conv.i3.i, 70
  %call.i.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add.i4.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %res) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %set_points = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %set_points to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_points, align 8
  %n_voltages = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp235 = icmp sgt i32 %5, 0
  br i1 %cmp235, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end13.for.body_crit_edge ]
  %selector.addr.036 = phi i32 [ %selector, %for.body.lr.ph ], [ %sub, %if.end13.for.body_crit_edge ]
  %n_voltages4 = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037, i32 5
  %8 = ptrtoint ptr %n_voltages4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_voltages4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.036, i32 %9)
  %cmp5 = icmp ult i32 %selector.addr.036, %9
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %step_uV = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037, i32 2
  %10 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %step_uV, align 4
  %mul = mul i32 %11, %selector.addr.036
  %set_point_min_uV = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037, i32 3
  %12 = ptrtoint ptr %set_point_min_uV to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_point_min_uV, align 4
  %add = add i32 %mul, %13
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %sub = sub i32 %selector.addr.036, %9
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %if.end13.cleanup_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %if.then6, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add, %if.then6 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_map_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV) #2 align 64 {
entry:
  %range_sel.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %range_sel.i.i) #8
  %0 = ptrtoint ptr %range_sel.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %range_sel.i.i, align 1, !annotation !465
  %set_points.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %set_points.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_points.i.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %count.i.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.spmi_voltage_range, ptr %4, i32 %6
  %regmap.i.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %base.i.i.i, align 8
  %conv.i.i.i = zext i16 %10 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 64
  %call.i.i.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %add.i.i.i, ptr noundef nonnull %range_sel.i.i, i32 noundef 1) #8
  %cmp15.i.i = icmp ult ptr %4, %add.ptr.i.i
  br i1 %cmp15.i.i, label %for.body.lr.ph.i.i, label %entry.spmi_regulator_find_range.exit.thread.i_crit_edge

entry.spmi_regulator_find_range.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %11 = ptrtoint ptr %range_sel.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %range_sel.i.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %range.016.i.i = phi ptr [ %4, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %range_sel3.i.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %range_sel3.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %range_sel3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %12)
  %cmp5.i.i = icmp eq i8 %14, %12
  br i1 %cmp5.i.i, label %spmi_regulator_find_range.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.spmi_voltage_range, ptr %range.016.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.spmi_regulator_find_range.exit.thread.i_crit_edge

for.inc.i.i.spmi_regulator_find_range.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

spmi_regulator_find_range.exit.thread.i:          ; preds = %for.inc.i.i.spmi_regulator_find_range.exit.thread.i_crit_edge, %entry.spmi_regulator_find_range.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i.i) #8
  br label %different_range.i

spmi_regulator_find_range.exit.i:                 ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i.i) #8
  %tobool.not.i = icmp eq ptr %range.016.i.i, null
  br i1 %tobool.not.i, label %spmi_regulator_find_range.exit.i.different_range.i_crit_edge, label %if.end.i

spmi_regulator_find_range.exit.i.different_range.i_crit_edge: ; preds = %spmi_regulator_find_range.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %different_range.i

if.end.i:                                         ; preds = %spmi_regulator_find_range.exit.i
  %15 = ptrtoint ptr %range.016.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %range.016.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %min_uV)
  %cmp.i = icmp sle i32 %16, %min_uV
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %max_uV)
  %cmp3.not.i = icmp sgt i32 %16, %max_uV
  %or.cond.i = or i1 %cmp.i, %cmp3.not.i
  %uV.0.i = select i1 %or.cond.i, i32 %min_uV, i32 %16
  call void @__sanitizer_cov_trace_cmp4(i32 %uV.0.i, i32 %16)
  %cmp8.i = icmp slt i32 %uV.0.i, %16
  br i1 %cmp8.i, label %if.end.i.different_range.i_crit_edge, label %lor.lhs.false.i

if.end.i.different_range.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %different_range.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %max_uV9.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %max_uV9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_uV9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uV.0.i, i32 %18)
  %cmp10.i = icmp sgt i32 %uV.0.i, %18
  br i1 %cmp10.i, label %lor.lhs.false.i.different_range.i_crit_edge, label %if.end12.i

lor.lhs.false.i.different_range.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %different_range.i

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %step_uV.i, align 4
  %sub.i = xor i32 %16, -1
  %add.i = add i32 %uV.0.i, %sub.i
  %sub14.i = add i32 %add.i, %20
  %21 = srem i32 %sub14.i, %20
  %mul.i = sub i32 %sub14.i, %21
  %add18.i = add i32 %mul.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %max_uV)
  %cmp19.i = icmp sgt i32 %add18.i, %max_uV
  br i1 %cmp19.i, label %if.end12.i.different_range.i_crit_edge, label %for.cond.preheader.i

if.end12.i.different_range.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %different_range.i

for.cond.preheader.i:                             ; preds = %if.end12.i
  %22 = ptrtoint ptr %set_points.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_points.i.i, align 8
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22105.i = icmp sgt i32 %25, 0
  br i1 %cmp22105.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end43.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %selector.0108.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add47.i, %if.end43.i.for.body.i_crit_edge ]
  %i.0106.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end43.i.for.body.i_crit_edge ]
  %set_point_min_uV.i = getelementptr %struct.spmi_voltage_range, ptr %27, i32 %i.0106.i, i32 3
  %28 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %set_point_min_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %29)
  %cmp25.not.i = icmp slt i32 %add18.i, %29
  br i1 %cmp25.not.i, label %for.body.i.if.end43.i_crit_edge, label %land.lhs.true26.i

for.body.i.if.end43.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

land.lhs.true26.i:                                ; preds = %for.body.i
  %set_point_max_uV.i = getelementptr %struct.spmi_voltage_range, ptr %27, i32 %i.0106.i, i32 4
  %30 = ptrtoint ptr %set_point_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %set_point_max_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %31)
  %cmp30.not.i = icmp sgt i32 %add18.i, %31
  br i1 %cmp30.not.i, label %land.lhs.true26.i.if.end43.i_crit_edge, label %if.then31.i

land.lhs.true26.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then31.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub36.i = sub i32 %add18.i, %29
  %step_uV40.i = getelementptr %struct.spmi_voltage_range, ptr %27, i32 %i.0106.i, i32 2
  %32 = ptrtoint ptr %step_uV40.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %step_uV40.i, align 4
  %div41.i = sdiv i32 %sub36.i, %33
  %add42.i = add i32 %div41.i, %selector.0108.i
  br label %for.end.i

if.end43.i:                                       ; preds = %land.lhs.true26.i.if.end43.i_crit_edge, %for.body.i.if.end43.i_crit_edge
  %n_voltages.i = getelementptr %struct.spmi_voltage_range, ptr %27, i32 %i.0106.i, i32 5
  %34 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_voltages.i, align 4
  %add47.i = add i32 %35, %selector.0108.i
  %inc.i = add nuw nsw i32 %i.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %if.end43.i.for.end.i_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end43.i.for.end.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end43.i.for.end.i_crit_edge, %if.then31.i, %for.cond.preheader.i.for.end.i_crit_edge
  %selector.1.i = phi i32 [ %add42.i, %if.then31.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add47.i, %if.end43.i.for.end.i_crit_edge ]
  %n_voltages49.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %23, i32 0, i32 2
  %36 = ptrtoint ptr %n_voltages49.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_voltages49.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.1.i, i32 %37)
  %cmp50.not.i = icmp ult i32 %selector.1.i, %37
  br i1 %cmp50.not.i, label %for.end.i.spmi_regulator_select_voltage_same_range.exit_crit_edge, label %for.end.i.different_range.i_crit_edge

for.end.i.different_range.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %different_range.i

for.end.i.spmi_regulator_select_voltage_same_range.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_select_voltage_same_range.exit

different_range.i:                                ; preds = %for.end.i.different_range.i_crit_edge, %if.end12.i.different_range.i_crit_edge, %lor.lhs.false.i.different_range.i_crit_edge, %if.end.i.different_range.i_crit_edge, %spmi_regulator_find_range.exit.i.different_range.i_crit_edge, %spmi_regulator_find_range.exit.thread.i
  %call53.i = call fastcc i32 @spmi_regulator_select_voltage(ptr noundef %call, i32 noundef %min_uV, i32 noundef %max_uV) #8
  br label %spmi_regulator_select_voltage_same_range.exit

spmi_regulator_select_voltage_same_range.exit:    ; preds = %different_range.i, %for.end.i.spmi_regulator_select_voltage_same_range.exit_crit_edge
  %retval.0.i = phi i32 [ %call53.i, %different_range.i ], [ %selector.1.i, %for.end.i.spmi_regulator_select_voltage_same_range.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_set_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_points.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %add.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %4, i32 %6
  %cmp23.i = icmp ult ptr %4, %add.ptr.i
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %range.025.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %4, %entry.for.body.i_crit_edge ]
  %selector.addr.024.i = phi i32 [ %sub6.i, %if.end.i.for.body.i_crit_edge ], [ %selector, %entry.for.body.i_crit_edge ]
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 5
  %7 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.024.i, i32 %8)
  %cmp3.i = icmp ult i32 %selector.addr.024.i, %8
  br i1 %cmp3.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %sub6.i = sub i32 %selector.addr.024.i, %8
  %incdec.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %range.025.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %set_point_min_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 3
  %9 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %set_point_min_uV.i, align 4
  %11 = ptrtoint ptr %range.025.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %range.025.i, align 4
  %sub.i = sub i32 %10, %12
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 2
  %13 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %step_uV.i, align 4
  %div.i = udiv i32 %sub.i, %14
  %add.i = add i32 %div.i, %selector.addr.024.i
  %conv.i = trunc i32 %add.i to i8
  %range_sel4.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 6
  %15 = ptrtoint ptr %range_sel4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %range_sel4.i, align 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %buf, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %0, align 1
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %base.i, align 8
  %conv.i10 = zext i16 %22 to i32
  %add.i11 = add nuw nsw i32 %conv.i10, 64
  %call.i = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef %add.i11, ptr noundef nonnull %buf, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  %range_sel.i = alloca i8, align 1
  %voltage_sel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %voltage_sel) #8
  %0 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %voltage_sel, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 65
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %voltage_sel, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %range_sel.i) #8
  %5 = ptrtoint ptr %range_sel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %range_sel.i, align 1, !annotation !465
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_points.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %add.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %9, i32 %11
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base.i, align 8
  %conv.i.i = zext i16 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef %add.i.i, ptr noundef nonnull %range_sel.i, i32 noundef 1) #8
  %cmp15.i = icmp ult ptr %9, %add.ptr.i
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %entry.spmi_regulator_find_range.exit.thread_crit_edge

entry.spmi_regulator_find_range.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %16 = ptrtoint ptr %range_sel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %range_sel.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %range.016.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %range_sel3.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 6
  %18 = ptrtoint ptr %range_sel3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %range_sel3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp5.i = icmp eq i8 %19, %17
  br i1 %cmp5.i, label %spmi_regulator_find_range.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %range.016.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.spmi_regulator_find_range.exit.thread_crit_edge

for.inc.i.spmi_regulator_find_range.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

spmi_regulator_find_range.exit.thread:            ; preds = %for.inc.i.spmi_regulator_find_range.exit.thread_crit_edge, %entry.spmi_regulator_find_range.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i) #8
  br label %cleanup

spmi_regulator_find_range.exit:                   ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i) #8
  %tobool.not = icmp eq ptr %range.016.i, null
  br i1 %tobool.not, label %spmi_regulator_find_range.exit.cleanup_crit_edge, label %if.end

spmi_regulator_find_range.exit.cleanup_crit_edge: ; preds = %spmi_regulator_find_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spmi_regulator_find_range.exit
  %20 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %voltage_sel, align 1
  %22 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_points.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %count.i10 = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %count.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i10, align 4
  %add.ptr.i11 = getelementptr %struct.spmi_voltage_range, ptr %25, i32 %27
  %cmp44.i = icmp ult ptr %25, %add.ptr.i11
  br i1 %cmp44.i, label %for.body.lr.ph.i12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i12:                               ; preds = %if.end
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 5
  br label %for.body.i13

for.body.i13:                                     ; preds = %if.end18.i.for.body.i13_crit_edge, %for.body.lr.ph.i12
  %r.047.i = phi ptr [ %25, %for.body.lr.ph.i12 ], [ %incdec.ptr.i16, %if.end18.i.for.body.i13_crit_edge ]
  %sw_sel.045.i = phi i32 [ 0, %for.body.lr.ph.i12 ], [ %add20.i, %if.end18.i.for.body.i13_crit_edge ]
  %cmp3.i = icmp eq ptr %r.047.i, %range.016.i
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i13.if.end18.i_crit_edge

for.body.i13.if.end18.i_crit_edge:                ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %for.body.i13
  %28 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %set_point_min_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 3
  %30 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %set_point_min_uV.i, align 4
  %32 = ptrtoint ptr %range.016.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %range.016.i, align 4
  %sub.i = sub i32 %31, %33
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 2
  %34 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %step_uV.i, align 4
  %div.i = udiv i32 %sub.i, %35
  %conv.i14 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv.i14)
  %cmp4.i = icmp ugt i32 %div.i, %conv.i14
  br i1 %cmp4.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %set_point_max_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 4
  %36 = ptrtoint ptr %set_point_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %set_point_max_uV.i, align 4
  %sub8.i = sub i32 %37, %33
  %div10.i = udiv i32 %sub8.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %conv.i14)
  %cmp12.i = icmp ult i32 %div10.i, %conv.i14
  br i1 %cmp12.i, label %if.end.i.cleanup_crit_edge, label %if.end15.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i15 = add i32 %sw_sel.045.i, %conv.i14
  %sub17.i = sub i32 %add.i15, %div.i
  br label %cleanup

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %for.body.i13.if.end18.i_crit_edge
  %n_voltages19.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %r.047.i, i32 0, i32 5
  %38 = ptrtoint ptr %n_voltages19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_voltages19.i, align 4
  %add20.i = add i32 %39, %sw_sel.045.i
  %incdec.ptr.i16 = getelementptr %struct.spmi_voltage_range, ptr %r.047.i, i32 1
  %cmp.i17 = icmp ult ptr %incdec.ptr.i16, %add.ptr.i11
  br i1 %cmp.i17, label %if.end18.i.for.body.i13_crit_edge, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i.for.body.i13_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i13

cleanup:                                          ; preds = %if.end18.i.cleanup_crit_edge, %if.end15.i, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %spmi_regulator_find_range.exit.cleanup_crit_edge, %spmi_regulator_find_range.exit.thread
  %retval.0 = phi i32 [ -22, %spmi_regulator_find_range.exit.cleanup_crit_edge ], [ -22, %spmi_regulator_find_range.exit.thread ], [ %sub17.i, %if.end15.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end18.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %voltage_sel) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch.selectcmp3 = icmp eq i32 %mode, 2
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 69
  %4 = select i1 %switch.selectcmp, i32 64, i32 0
  %conv3.i = select i1 %switch.selectcmp3, i32 128, i32 %4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef 192, i32 noundef %conv3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 69
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %reg, i32 noundef 1) #8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 1
  %7 = and i8 %6, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %7)
  %switch.selectcmp = icmp eq i8 %7, 64
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %7)
  %switch.selectcmp6 = icmp eq i8 %7, -128
  %switch.select7 = select i1 %switch.selectcmp6, i32 2, i32 %switch.select
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #8
  ret i32 %switch.select7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_selector, i32 noundef %new_selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_points.i, align 8
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_selector)
  %cmp.not.i = icmp ugt i32 %3, %new_selector
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.spmi_regulator_common_list_voltage.exit_crit_edge

entry.spmi_regulator_common_list_voltage.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit

for.cond.preheader.i:                             ; preds = %entry
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp235.i = icmp sgt i32 %5, 0
  br i1 %cmp235.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge

for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end13.i.for.body.i_crit_edge ]
  %selector.addr.036.i = phi i32 [ %new_selector, %for.body.lr.ph.i ], [ %sub.i, %if.end13.i.for.body.i_crit_edge ]
  %n_voltages4.i = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037.i, i32 5
  %8 = ptrtoint ptr %n_voltages4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_voltages4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.036.i, i32 %9)
  %cmp5.i = icmp ult i32 %selector.addr.036.i, %9
  br i1 %cmp5.i, label %if.then6.i, label %if.end13.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %step_uV.i = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037.i, i32 2
  %10 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %step_uV.i, align 4
  %mul.i = mul i32 %11, %selector.addr.036.i
  %set_point_min_uV.i = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037.i, i32 3
  %12 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_point_min_uV.i, align 4
  %add.i = add i32 %mul.i, %13
  br label %spmi_regulator_common_list_voltage.exit

if.end13.i:                                       ; preds = %for.body.i
  %sub.i = sub i32 %selector.addr.036.i, %9
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit

spmi_regulator_common_list_voltage.exit:          ; preds = %if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge, %if.then6.i, %for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge, %entry.spmi_regulator_common_list_voltage.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.spmi_regulator_common_list_voltage.exit_crit_edge ], [ %add.i, %if.then6.i ], [ 0, %for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge ], [ 0, %if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge ]
  %call.i11 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %set_points.i12 = getelementptr inbounds %struct.spmi_regulator, ptr %call.i11, i32 0, i32 4
  %14 = ptrtoint ptr %set_points.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_points.i12, align 8
  %n_voltages.i13 = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %n_voltages.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_voltages.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %old_selector)
  %cmp.not.i14 = icmp ugt i32 %17, %old_selector
  br i1 %cmp.not.i14, label %for.cond.preheader.i17, label %spmi_regulator_common_list_voltage.exit.spmi_regulator_common_list_voltage.exit34_crit_edge

spmi_regulator_common_list_voltage.exit.spmi_regulator_common_list_voltage.exit34_crit_edge: ; preds = %spmi_regulator_common_list_voltage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit34

for.cond.preheader.i17:                           ; preds = %spmi_regulator_common_list_voltage.exit
  %count.i15 = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %count.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp235.i16 = icmp sgt i32 %19, 0
  br i1 %cmp235.i16, label %for.body.lr.ph.i18, label %for.cond.preheader.i17.spmi_regulator_common_list_voltage.exit34_crit_edge

for.cond.preheader.i17.spmi_regulator_common_list_voltage.exit34_crit_edge: ; preds = %for.cond.preheader.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit34

for.body.lr.ph.i18:                               ; preds = %for.cond.preheader.i17
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %for.body.i23

for.body.i23:                                     ; preds = %if.end13.i32.for.body.i23_crit_edge, %for.body.lr.ph.i18
  %i.037.i19 = phi i32 [ 0, %for.body.lr.ph.i18 ], [ %inc.i30, %if.end13.i32.for.body.i23_crit_edge ]
  %selector.addr.036.i20 = phi i32 [ %old_selector, %for.body.lr.ph.i18 ], [ %sub.i29, %if.end13.i32.for.body.i23_crit_edge ]
  %n_voltages4.i21 = getelementptr %struct.spmi_voltage_range, ptr %21, i32 %i.037.i19, i32 5
  %22 = ptrtoint ptr %n_voltages4.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_voltages4.i21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.036.i20, i32 %23)
  %cmp5.i22 = icmp ult i32 %selector.addr.036.i20, %23
  br i1 %cmp5.i22, label %if.then6.i28, label %if.end13.i32

if.then6.i28:                                     ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  %step_uV.i24 = getelementptr %struct.spmi_voltage_range, ptr %21, i32 %i.037.i19, i32 2
  %24 = ptrtoint ptr %step_uV.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %step_uV.i24, align 4
  %mul.i25 = mul i32 %25, %selector.addr.036.i20
  %set_point_min_uV.i26 = getelementptr %struct.spmi_voltage_range, ptr %21, i32 %i.037.i19, i32 3
  %26 = ptrtoint ptr %set_point_min_uV.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %set_point_min_uV.i26, align 4
  %add.i27 = add i32 %mul.i25, %27
  br label %spmi_regulator_common_list_voltage.exit34

if.end13.i32:                                     ; preds = %for.body.i23
  %sub.i29 = sub i32 %selector.addr.036.i20, %23
  %inc.i30 = add nuw nsw i32 %i.037.i19, 1
  %exitcond.not.i31 = icmp eq i32 %inc.i30, %19
  br i1 %exitcond.not.i31, label %if.end13.i32.spmi_regulator_common_list_voltage.exit34_crit_edge, label %if.end13.i32.for.body.i23_crit_edge

if.end13.i32.for.body.i23_crit_edge:              ; preds = %if.end13.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i23

if.end13.i32.spmi_regulator_common_list_voltage.exit34_crit_edge: ; preds = %if.end13.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit34

spmi_regulator_common_list_voltage.exit34:        ; preds = %if.end13.i32.spmi_regulator_common_list_voltage.exit34_crit_edge, %if.then6.i28, %for.cond.preheader.i17.spmi_regulator_common_list_voltage.exit34_crit_edge, %spmi_regulator_common_list_voltage.exit.spmi_regulator_common_list_voltage.exit34_crit_edge
  %retval.0.i33 = phi i32 [ 0, %spmi_regulator_common_list_voltage.exit.spmi_regulator_common_list_voltage.exit34_crit_edge ], [ %add.i27, %if.then6.i28 ], [ 0, %for.cond.preheader.i17.spmi_regulator_common_list_voltage.exit34_crit_edge ], [ 0, %if.end13.i32.spmi_regulator_common_list_voltage.exit34_crit_edge ]
  %sub = sub i32 %retval.0.i, %retval.0.i33
  %28 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %slew_rate = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 11
  %29 = ptrtoint ptr %slew_rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %slew_rate, align 4
  %add = add i32 %30, -1
  %sub4 = add i32 %add, %28
  %div = sdiv i32 %sub4, %30
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_set_load(ptr noundef %rdev, i32 noundef %load_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %hpm_min_load = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %hpm_min_load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hpm_min_load, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %load_uA)
  %cmp.not.not = icmp sgt i32 %1, %load_uA
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %regmap.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.spmi_regulator, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base.i.i, align 8
  %conv.i.i = zext i16 %5 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 69
  %conv3.i.i = select i1 %cmp.not.not, i32 0, i32 128
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i.i, i32 noundef 192, i32 noundef %conv3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_set_pull_down(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 72
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spmi_regulator_select_voltage(ptr nocapture noundef readonly %vreg, i32 noundef %min_uV, i32 noundef %max_uV) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_points = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 4
  %0 = ptrtoint ptr %set_points to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_points, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_point_min_uV = getelementptr inbounds %struct.spmi_voltage_range, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_point_min_uV to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %set_point_min_uV, align 4
  %count = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %sub = add i32 %7, -1
  %set_point_max_uV = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %sub, i32 4
  %8 = ptrtoint ptr %set_point_max_uV to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_point_max_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_uV)
  %cmp = icmp sle i32 %5, %min_uV
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uV)
  %cmp6.not = icmp sgt i32 %5, %max_uV
  %or.cond = or i1 %cmp, %cmp6.not
  %uV.0 = select i1 %or.cond, i32 %min_uV, i32 %5
  call void @__sanitizer_cov_trace_cmp4(i32 %uV.0, i32 %5)
  %cmp7 = icmp slt i32 %uV.0, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %uV.0, i32 %9)
  %cmp8 = icmp sgt i32 %uV.0, %9
  %or.cond106 = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond106, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %smin = call i32 @llvm.smin.i32(i32 %sub, i32 0)
  br label %for.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35, i32 noundef %min_uV, i32 noundef %max_uV, i32 noundef %5, i32 noundef %9) #11
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %i.0.in = phi i32 [ %i.0, %for.body.for.cond_crit_edge ], [ %7, %for.cond.preheader ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp14 = icmp sgt i32 %i.0, 0
  br i1 %cmp14, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %sub17 = add i32 %i.0.in, -2
  %set_point_max_uV19 = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %sub17, i32 4
  %12 = ptrtoint ptr %set_point_max_uV19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_point_max_uV19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %uV.0, i32 %13)
  %cmp20 = icmp sgt i32 %uV.0, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp sgt i32 %13, 0
  %or.cond107 = and i1 %cmp20, %cmp22
  br i1 %or.cond107, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0, %for.body.for.end_crit_edge ], [ %smin, %for.cond.for.end_crit_edge ]
  %arrayidx27 = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %i.0.lcssa
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx27, align 4
  %step_uV = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %i.0.lcssa, i32 2
  %16 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %step_uV, align 4
  %18 = xor i32 %15, -1
  %add = add i32 %uV.0, %18
  %sub30 = add i32 %add, %17
  %19 = srem i32 %sub30, %17
  %mul = sub i32 %sub30, %19
  %add34 = add i32 %mul, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %max_uV)
  %cmp35 = icmp sgt i32 %add34, %max_uV
  br i1 %cmp35, label %do.end39, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp43108 = icmp sgt i32 %i.0.lcssa, 0
  br i1 %cmp43108, label %for.cond42.preheader.for.body44_crit_edge, label %for.cond42.preheader.for.end50_crit_edge

for.cond42.preheader.for.end50_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.cond42.preheader.for.body44_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body44

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.spmi_regulator, ptr %vreg, i32 0, i32 1
  %20 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.38, i32 noundef %min_uV, i32 noundef %max_uV, i32 noundef %add34) #11
  br label %cleanup

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.cond42.preheader.for.body44_crit_edge
  %selector.0110 = phi i32 [ %add48, %for.body44.for.body44_crit_edge ], [ 0, %for.cond42.preheader.for.body44_crit_edge ]
  %i.1109 = phi i32 [ %inc, %for.body44.for.body44_crit_edge ], [ 0, %for.cond42.preheader.for.body44_crit_edge ]
  %n_voltages = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %i.1109, i32 5
  %22 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_voltages, align 4
  %add48 = add i32 %23, %selector.0110
  %inc = add nuw nsw i32 %i.1109, 1
  %exitcond.not = icmp eq i32 %inc, %i.0.lcssa
  br i1 %exitcond.not, label %for.body44.for.end50_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

for.body44.for.end50_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.end50:                                        ; preds = %for.body44.for.end50_crit_edge, %for.cond42.preheader.for.end50_crit_edge
  %selector.0.lcssa = phi i32 [ 0, %for.cond42.preheader.for.end50_crit_edge ], [ %add48, %for.body44.for.end50_crit_edge ]
  %set_point_min_uV51 = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %i.0.lcssa, i32 3
  %24 = ptrtoint ptr %set_point_min_uV51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %set_point_min_uV51, align 4
  %sub52 = sub i32 %add34, %25
  %div54 = sdiv i32 %sub52, %17
  %add55 = add i32 %div54, %selector.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %do.end39, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end39 ], [ %add55, %for.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_single_map_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %call1 = tail call fastcc i32 @spmi_regulator_select_voltage(ptr noundef %call, i32 noundef %min_uV, i32 noundef %max_uV)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_ftsmps426_set_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_points.i, align 8
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not.i = icmp ugt i32 %3, %selector
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.spmi_regulator_common_list_voltage.exit_crit_edge

entry.spmi_regulator_common_list_voltage.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit

for.cond.preheader.i:                             ; preds = %entry
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp235.i = icmp sgt i32 %5, 0
  br i1 %cmp235.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge

for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end13.i.for.body.i_crit_edge ]
  %selector.addr.036.i = phi i32 [ %selector, %for.body.lr.ph.i ], [ %sub.i, %if.end13.i.for.body.i_crit_edge ]
  %n_voltages4.i = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037.i, i32 5
  %8 = ptrtoint ptr %n_voltages4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_voltages4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.036.i, i32 %9)
  %cmp5.i = icmp ult i32 %selector.addr.036.i, %9
  br i1 %cmp5.i, label %if.then6.i, label %if.end13.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %step_uV.i = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037.i, i32 2
  %10 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %step_uV.i, align 4
  %mul.i = mul i32 %11, %selector.addr.036.i
  %set_point_min_uV.i = getelementptr %struct.spmi_voltage_range, ptr %7, i32 %i.037.i, i32 3
  %12 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %set_point_min_uV.i, align 4
  %add.i = add i32 %mul.i, %13
  %phi.bo = sdiv i32 %add.i, 1000
  br label %spmi_regulator_common_list_voltage.exit

if.end13.i:                                       ; preds = %for.body.i
  %sub.i = sub i32 %selector.addr.036.i, %9
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_common_list_voltage.exit

spmi_regulator_common_list_voltage.exit:          ; preds = %if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge, %if.then6.i, %for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge, %entry.spmi_regulator_common_list_voltage.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.spmi_regulator_common_list_voltage.exit_crit_edge ], [ %phi.bo, %if.then6.i ], [ 0, %for.cond.preheader.i.spmi_regulator_common_list_voltage.exit_crit_edge ], [ 0, %if.end13.i.spmi_regulator_common_list_voltage.exit_crit_edge ]
  %14 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv = trunc i32 %retval.0.i to i8
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %buf, align 1
  %16 = lshr i32 %retval.0.i, 8
  %conv2 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv2, ptr %14, align 1
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %21 to i32
  %add.i7 = add nuw nsw i32 %conv.i, 64
  %call.i8 = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef %add.i7, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %call.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_ftsmps426_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !465
  %1 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %conv.i, 64
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %buf, i32 noundef 2) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %conv3 = zext i8 %10 to i32
  %or = or i32 %shl, %conv3
  %mul = mul nuw nsw i32 %or, 1000
  %set_points = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %set_points to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_points, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %set_point_min_uV = getelementptr inbounds %struct.spmi_voltage_range, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %set_point_min_uV to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %set_point_min_uV, align 4
  %sub = sub i32 %mul, %16
  %step_uV = getelementptr inbounds %struct.spmi_voltage_range, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %step_uV to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %step_uV, align 4
  %div = sdiv i32 %sub, %18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_ftsmps426_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 5, %sw.bb2 ], [ 6, %sw.bb1 ], [ 7, %entry.sw.epilog_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 69
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add.i, i32 noundef 7, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_ftsmps426_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 69
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %reg, i32 noundef 1) #8
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %switch.selectcmp = icmp eq i8 %6, 6
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %switch.selectcmp4 = icmp eq i8 %6, 7
  %switch.select5 = select i1 %switch.selectcmp4, i32 2, i32 %switch.select
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #8
  ret i32 %switch.select5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_set_soft_start(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 76
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_set_bypass(ptr noundef %rdev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv.i, 69
  %conv3.i = select i1 %enable, i32 32, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add.i, i32 noundef 32, i32 noundef %conv3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_common_get_bypass(ptr noundef %rdev, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 69
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %val, i32 noundef 1) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = lshr i8 %6, 5
  %.lobit = and i8 %7, 1
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.lobit, ptr %enable, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_vs_ocp(ptr noundef %rdev, i32 noundef %lim_uA, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %reg, align 1
  %1 = or i32 %severity, %lim_uA
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  %3 = and i1 %2, %enable
  br i1 %3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %7 to i32
  %add.i = add nuw nsw i32 %conv.i, 74
  %call.i = call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef %add.i, ptr noundef nonnull %reg, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_vs_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %ocp_irq = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ocp_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ocp_count = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %ocp_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ocp_count, align 4
  %call1 = tail call i64 @ktime_get() #8
  %vs_enable_time = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %vs_enable_time to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call1, ptr %vs_enable_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_single_range_set_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %sel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sel) #8
  %conv = trunc i32 %selector to i8
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %sel, align 1
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 65
  %call.i = call i32 @regmap_bulk_write(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %sel, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sel) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_single_range_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  %selector = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %selector) #8
  %0 = ptrtoint ptr %selector to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %selector, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 65
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %selector, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %selector, align 1
  %conv = zext i8 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %selector) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_set_ilim(ptr noundef %rdev, i32 noundef %ilim_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %0 = add i32 %ilim_uA, -4001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4000, i32 %0)
  %1 = icmp ult i32 %0, -4000
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %logical_type = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %logical_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logical_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %4 = trunc i32 %ilim_uA to i16
  %div18.lhs.trunc = add nsw i16 %4, -1
  %div1819 = udiv i16 %div18.lhs.trunc, 500
  %5 = or i16 %div1819, 128
  %conv6 = zext i16 %5 to i32
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %9 to i32
  %conv1.i = select i1 %cmp, i32 74, i32 75
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef 135, i32 noundef %conv6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_ult_lo_smps_set_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_points.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %add.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %3, i32 %5
  %cmp23.i = icmp ult ptr %3, %add.ptr.i
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %range.025.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %selector.addr.024.i = phi i32 [ %sub6.i, %if.end.i.for.body.i_crit_edge ], [ %selector, %entry.for.body.i_crit_edge ]
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 5
  %6 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %selector.addr.024.i, i32 %7)
  %cmp3.i = icmp ult i32 %selector.addr.024.i, %7
  br i1 %cmp3.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %sub6.i = sub i32 %selector.addr.024.i, %7
  %incdec.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %range.025.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %set_point_min_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 3
  %8 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_point_min_uV.i, align 4
  %10 = ptrtoint ptr %range.025.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %range.025.i, align 4
  %sub.i = sub i32 %9, %11
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 2
  %12 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %step_uV.i, align 4
  %div.i = udiv i32 %sub.i, %13
  %add.i = add i32 %div.i, %selector.addr.024.i
  %range_sel4.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.025.i, i32 0, i32 6
  %14 = ptrtoint ptr %range_sel4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %range_sel4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  %16 = or i32 %add.i, 96
  %spec.select = select i1 %cmp, i32 %16, i32 %add.i
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %base.i, align 8
  %conv.i13 = zext i16 %20 to i32
  %add.i14 = add nuw nsw i32 %conv.i13, 65
  %conv3.i = and i32 %spec.select, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add.i14, i32 noundef 255, i32 noundef %conv3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_regulator_ult_lo_smps_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  %range_sel.i = alloca i8, align 1
  %voltage_sel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %voltage_sel) #8
  %0 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %voltage_sel, align 1, !annotation !465
  %regmap.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %base.i, align 8
  %conv.i = zext i16 %4 to i32
  %add.i = add nuw nsw i32 %conv.i, 65
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %voltage_sel, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %range_sel.i) #8
  %5 = ptrtoint ptr %range_sel.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %range_sel.i, align 1, !annotation !465
  %set_points.i = getelementptr inbounds %struct.spmi_regulator, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_points.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %count.i = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %add.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %9, i32 %11
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base.i, align 8
  %conv.i.i = zext i16 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 64
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef %add.i.i, ptr noundef nonnull %range_sel.i, i32 noundef 1) #8
  %cmp15.i = icmp ult ptr %9, %add.ptr.i
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %entry.spmi_regulator_find_range.exit.thread_crit_edge

entry.spmi_regulator_find_range.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %16 = ptrtoint ptr %range_sel.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %range_sel.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %range.016.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %range_sel3.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 6
  %18 = ptrtoint ptr %range_sel3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %range_sel3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp5.i = icmp eq i8 %19, %17
  br i1 %cmp5.i, label %spmi_regulator_find_range.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.spmi_voltage_range, ptr %range.016.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.spmi_regulator_find_range.exit.thread_crit_edge

for.inc.i.spmi_regulator_find_range.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spmi_regulator_find_range.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

spmi_regulator_find_range.exit.thread:            ; preds = %for.inc.i.spmi_regulator_find_range.exit.thread_crit_edge, %entry.spmi_regulator_find_range.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i) #8
  br label %cleanup

spmi_regulator_find_range.exit:                   ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %range_sel.i) #8
  %tobool.not = icmp eq ptr %range.016.i, null
  br i1 %tobool.not, label %spmi_regulator_find_range.exit.cleanup_crit_edge, label %if.end

spmi_regulator_find_range.exit.cleanup_crit_edge: ; preds = %spmi_regulator_find_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spmi_regulator_find_range.exit
  %range_sel3.i.le = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 6
  %20 = ptrtoint ptr %range_sel3.i.le to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %range_sel3.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp = icmp eq i8 %21, 1
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %voltage_sel, align 1
  %24 = and i8 %23, -97
  store i8 %24, ptr %voltage_sel, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %25 = ptrtoint ptr %voltage_sel to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %voltage_sel, align 1
  %27 = ptrtoint ptr %set_points.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_points.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %count.i16 = getelementptr inbounds %struct.spmi_voltage_set_points, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %count.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i16, align 4
  %add.ptr.i17 = getelementptr %struct.spmi_voltage_range, ptr %30, i32 %32
  %cmp44.i = icmp ult ptr %30, %add.ptr.i17
  br i1 %cmp44.i, label %for.body.lr.ph.i18, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i18:                               ; preds = %if.end7
  %n_voltages.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 5
  br label %for.body.i19

for.body.i19:                                     ; preds = %if.end18.i.for.body.i19_crit_edge, %for.body.lr.ph.i18
  %r.047.i = phi ptr [ %30, %for.body.lr.ph.i18 ], [ %incdec.ptr.i22, %if.end18.i.for.body.i19_crit_edge ]
  %sw_sel.045.i = phi i32 [ 0, %for.body.lr.ph.i18 ], [ %add20.i, %if.end18.i.for.body.i19_crit_edge ]
  %cmp3.i = icmp eq ptr %r.047.i, %range.016.i
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i19.if.end18.i_crit_edge

for.body.i19.if.end18.i_crit_edge:                ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %for.body.i19
  %33 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %set_point_min_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 3
  %35 = ptrtoint ptr %set_point_min_uV.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %set_point_min_uV.i, align 4
  %37 = ptrtoint ptr %range.016.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %range.016.i, align 4
  %sub.i = sub i32 %36, %38
  %step_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 2
  %39 = ptrtoint ptr %step_uV.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %step_uV.i, align 4
  %div.i = udiv i32 %sub.i, %40
  %conv.i20 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv.i20)
  %cmp4.i = icmp ugt i32 %div.i, %conv.i20
  br i1 %cmp4.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %set_point_max_uV.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %range.016.i, i32 0, i32 4
  %41 = ptrtoint ptr %set_point_max_uV.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %set_point_max_uV.i, align 4
  %sub8.i = sub i32 %42, %38
  %div10.i = udiv i32 %sub8.i, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.i, i32 %conv.i20)
  %cmp12.i = icmp ult i32 %div10.i, %conv.i20
  br i1 %cmp12.i, label %if.end.i.cleanup_crit_edge, label %if.end15.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i21 = add i32 %sw_sel.045.i, %conv.i20
  %sub17.i = sub i32 %add.i21, %div.i
  br label %cleanup

if.end18.i:                                       ; preds = %land.lhs.true.i.if.end18.i_crit_edge, %for.body.i19.if.end18.i_crit_edge
  %n_voltages19.i = getelementptr inbounds %struct.spmi_voltage_range, ptr %r.047.i, i32 0, i32 5
  %43 = ptrtoint ptr %n_voltages19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_voltages19.i, align 4
  %add20.i = add i32 %44, %sw_sel.045.i
  %incdec.ptr.i22 = getelementptr %struct.spmi_voltage_range, ptr %r.047.i, i32 1
  %cmp.i23 = icmp ult ptr %incdec.ptr.i22, %add.ptr.i17
  br i1 %cmp.i23, label %if.end18.i.for.body.i19_crit_edge, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18.i.for.body.i19_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i19

cleanup:                                          ; preds = %if.end18.i.cleanup_crit_edge, %if.end15.i, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %spmi_regulator_find_range.exit.cleanup_crit_edge, %spmi_regulator_find_range.exit.thread
  %retval.0 = phi i32 [ -22, %spmi_regulator_find_range.exit.cleanup_crit_edge ], [ -22, %spmi_regulator_find_range.exit.thread ], [ %sub17.i, %if.end15.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end18.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %voltage_sel) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spmi_saw_set_vdd(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %vctl = alloca i32, align 4
  %data3 = alloca i32, align 4
  %avs_ctl = alloca i32, align 4
  %pmic_sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vctl) #8
  %0 = ptrtoint ptr %vctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vctl, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data3) #8
  %1 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data3, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avs_ctl) #8
  %2 = ptrtoint ptr %avs_ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %avs_ctl, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmic_sts) #8
  %3 = ptrtoint ptr %pmic_sts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pmic_sts, align 4, !annotation !465
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %6 = load ptr, ptr @saw_regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %avs_ctl) #8
  %7 = load ptr, ptr @saw_regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 28, ptr noundef nonnull %vctl) #8
  %8 = load ptr, ptr @saw_regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 76, ptr noundef nonnull %data3) #8
  %9 = ptrtoint ptr %vctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vctl, align 4
  %and = and i32 %10, -459008
  %conv = zext i8 %5 to i32
  %or = or i32 %and, %conv
  store i32 %or, ptr %vctl, align 4
  %11 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data3, align 4
  %and3 = and i32 %12, -459008
  %or5 = or i32 %and3, %conv
  store i32 %or5, ptr %data3, align 4
  %13 = ptrtoint ptr %avs_ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %avs_ctl, align 4
  %and6 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %14, -134217729
  %15 = ptrtoint ptr %avs_ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and8, ptr %avs_ctl, align 4
  %16 = load ptr, ptr @saw_regmap, align 4
  %call9 = call i32 @regmap_write(ptr noundef %16, i32 noundef 32, i32 noundef %and8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = load ptr, ptr @saw_regmap, align 4
  %call10 = call i32 @regmap_write(ptr noundef %17, i32 noundef 24, i32 noundef 1) #8
  %18 = load ptr, ptr @saw_regmap, align 4
  %19 = ptrtoint ptr %vctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vctl, align 4
  %call11 = call i32 @regmap_write(ptr noundef %18, i32 noundef 28, i32 noundef %20) #8
  %21 = load ptr, ptr @saw_regmap, align 4
  %22 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data3, align 4
  %call12 = call i32 @regmap_write(ptr noundef %21, i32 noundef 76, i32 noundef %23) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 100
  %spec.select.i.neg45 = select i1 %cmp.i, i32 -1073741822, i32 -1
  %add.neg = sub i32 %spec.select.i.neg45, %24
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %if.end
  %25 = load ptr, ptr @saw_regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %25, i32 noundef 20, ptr noundef nonnull %pmic_sts) #8
  %26 = ptrtoint ptr %pmic_sts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmic_sts, align 4
  %and15 = and i32 %27, 255
  store i32 %and15, ptr %pmic_sts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and15, i32 %conv)
  %cmp = icmp eq i32 %and15, %conv
  br i1 %cmp, label %do.body.do.end30_crit_edge, label %do.end

do.body.do.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end:                                           ; preds = %do.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !469
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !470
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %28
  %cmp28 = icmp slt i32 %sub, 0
  br i1 %cmp28, label %do.end.do.body_crit_edge, label %do.end.do.end30_crit_edge

do.end.do.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end30:                                         ; preds = %do.end.do.end30_crit_edge, %do.body.do.end30_crit_edge
  br i1 %tobool.not, label %do.end30.if.end41_crit_edge, label %if.then32

do.end30.if.end41_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then32:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %pmic_sts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pmic_sts, align 4
  %and33 = and i32 %30, 63
  store i32 %and33, ptr %pmic_sts, align 4
  %31 = ptrtoint ptr %avs_ctl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %avs_ctl, align 4
  %and34 = and i32 %32, -142539777
  %sub35 = shl nuw nsw i32 %and33, 10
  %shl = add nsw i32 %sub35, -4096
  %shl37 = shl nuw nsw i32 %and33, 17
  %or36 = or i32 %shl37, %shl
  %or38 = or i32 %or36, %and34
  %or39 = or i32 %or38, 134217728
  store i32 %or39, ptr %avs_ctl, align 4
  %33 = load ptr, ptr @saw_regmap, align 4
  %call40 = call i32 @regmap_write(ptr noundef %33, i32 noundef 32, i32 noundef %or39) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %do.end30.if.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmic_sts) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avs_ctl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vctl) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454}
!llvm.module.flags = !{!456, !457, !458, !459, !460, !461, !462, !463}
!llvm.ident = !{!464}

!0 = !{ptr @__initcall__kmod_qcom_spmi_regulator__294_2270_qcom_spmi_regulator_driver_init6, !1, !"__initcall__kmod_qcom_spmi_regulator__294_2270_qcom_spmi_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2270, i32 1}
!2 = !{ptr @__exitcall_qcom_spmi_regulator_driver_exit, !1, !"__exitcall_qcom_spmi_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2272, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2273, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias298, !9, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!9 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2274, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2265, i32 11}
!12 = !{ptr @qcom_spmi_regulator_driver, !13, !"qcom_spmi_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2263, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2181, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2186, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qcom_spmi_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qcom_spmi_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2193, i32 42}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2230, i32 42}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2252, i32 4}
!30 = !{ptr @qcom_spmi_regulator_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qcom_spmi_regulator_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @saw_regmap, !33, !"saw_regmap", i1 false, i1 false}
!33 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1224, i32 23}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1810, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @spmi_regulator_of_parse._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @spmi_regulator_of_parse._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1844, i32 52}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1847, i32 4}
!43 = !{ptr @spmi_regulator_of_parse._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @spmi_regulator_of_parse._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1771, i32 29}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1773, i32 29}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1775, i32 29}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1777, i32 29}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1778, i32 29}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1621, i32 3}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @spmi_regulator_init_slew_rate._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @spmi_regulator_init_slew_rate._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1666, i32 3}
!62 = !{ptr @spmi_regulator_init_slew_rate_ftsmps426._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @spmi_regulator_init_slew_rate_ftsmps426._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1210, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @spmi_regulator_vs_ocp_isr._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @spmi_regulator_vs_ocp_isr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @devm_delayed_work_autocancel.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../include/linux/devm-helpers.h", i32 50, i32 2}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @devm_delayed_work_autocancel.__key.29, !70, !"__key", i1 false, i1 false}
!73 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1567, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @spmi_regulator_match.__UNIQUE_ID_ddebug289, !75, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1591, i32 2}
!81 = !{ptr @spmi_regulator_match._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @spmi_regulator_match._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @supported_regulators, !84, !"supported_regulators", i1 false, i1 false}
!84 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1459, i32 44}
!85 = !{ptr @spmi_smps_ops, !86, !"spmi_smps_ops", i1 false, i1 false}
!86 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1301, i32 35}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 627, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @spmi_regulator_select_voltage._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @spmi_regulator_select_voltage._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 651, i32 3}
!94 = !{ptr @spmi_regulator_select_voltage._entry.37, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @spmi_regulator_select_voltage._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @smps_set_points, !97, !"smps_set_points", i1 false, i1 false}
!97 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 552, i32 8}
!98 = !{ptr @smps_ranges, !99, !"smps_ranges", i1 false, i1 false}
!99 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 483, i32 34}
!100 = !{ptr @spmi_hfs430_ops, !101, !"spmi_hfs430_ops", i1 false, i1 false}
!101 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1443, i32 35}
!102 = !{ptr @hfs430_set_points, !103, !"hfs430_set_points", i1 false, i1 false}
!103 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 566, i32 8}
!104 = !{ptr @hfs430_ranges, !105, !"hfs430_ranges", i1 false, i1 false}
!105 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 543, i32 34}
!106 = !{ptr @spmi_ldo_ops, !107, !"spmi_ldo_ops", i1 false, i1 false}
!107 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1316, i32 35}
!108 = !{ptr @nldo1_set_points, !109, !"nldo1_set_points", i1 false, i1 false}
!109 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 548, i32 8}
!110 = !{ptr @nldo1_ranges, !111, !"nldo1_ranges", i1 false, i1 false}
!111 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 462, i32 34}
!112 = !{ptr @nldo2_set_points, !113, !"nldo2_set_points", i1 false, i1 false}
!113 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 549, i32 8}
!114 = !{ptr @nldo2_ranges, !115, !"nldo2_ranges", i1 false, i1 false}
!115 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 466, i32 34}
!116 = !{ptr @nldo3_set_points, !117, !"nldo3_set_points", i1 false, i1 false}
!117 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 550, i32 8}
!118 = !{ptr @nldo3_ranges, !119, !"nldo3_ranges", i1 false, i1 false}
!119 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 472, i32 34}
!120 = !{ptr @pldo_set_points, !121, !"pldo_set_points", i1 false, i1 false}
!121 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 547, i32 8}
!122 = !{ptr @pldo_ranges, !123, !"pldo_ranges", i1 false, i1 false}
!123 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 456, i32 34}
!124 = !{ptr @spmi_ln_ldo_ops, !125, !"spmi_ln_ldo_ops", i1 false, i1 false}
!125 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1333, i32 35}
!126 = !{ptr @ln_ldo_set_points, !127, !"ln_ldo_set_points", i1 false, i1 false}
!127 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 551, i32 8}
!128 = !{ptr @ln_ldo_ranges, !129, !"ln_ldo_ranges", i1 false, i1 false}
!129 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 478, i32 34}
!130 = !{ptr @spmi_ftsmps426_ops, !131, !"spmi_ftsmps426_ops", i1 false, i1 false}
!131 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1428, i32 35}
!132 = !{ptr @ht_nldo_set_points, !133, !"ht_nldo_set_points", i1 false, i1 false}
!133 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 565, i32 8}
!134 = !{ptr @ht_nldo_ranges, !135, !"ht_nldo_ranges", i1 false, i1 false}
!135 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 539, i32 34}
!136 = !{ptr @ht_lvpldo_set_points, !137, !"ht_lvpldo_set_points", i1 false, i1 false}
!137 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 564, i32 8}
!138 = !{ptr @ht_lvpldo_ranges, !139, !"ht_lvpldo_ranges", i1 false, i1 false}
!139 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 535, i32 34}
!140 = !{ptr @nldo660_set_points, !141, !"nldo660_set_points", i1 false, i1 false}
!141 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 563, i32 8}
!142 = !{ptr @nldo660_ranges, !143, !"nldo660_ranges", i1 false, i1 false}
!143 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 531, i32 34}
!144 = !{ptr @pldo660_set_points, !145, !"pldo660_set_points", i1 false, i1 false}
!145 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 562, i32 8}
!146 = !{ptr @pldo660_ranges, !147, !"pldo660_ranges", i1 false, i1 false}
!147 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 527, i32 34}
!148 = !{ptr @spmi_vs_ops, !149, !"spmi_vs_ops", i1 false, i1 false}
!149 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1345, i32 35}
!150 = !{ptr @spmi_boost_ops, !151, !"spmi_boost_ops", i1 false, i1 false}
!151 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1356, i32 35}
!152 = !{ptr @boost_set_points, !153, !"boost_set_points", i1 false, i1 false}
!153 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 556, i32 8}
!154 = !{ptr @boost_ranges, !155, !"boost_ranges", i1 false, i1 false}
!155 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 502, i32 34}
!156 = !{ptr @spmi_ftsmps_ops, !157, !"spmi_ftsmps_ops", i1 false, i1 false}
!157 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1367, i32 35}
!158 = !{ptr @ftsmps_set_points, !159, !"ftsmps_set_points", i1 false, i1 false}
!159 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 553, i32 8}
!160 = !{ptr @ftsmps_ranges, !161, !"ftsmps_ranges", i1 false, i1 false}
!161 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 488, i32 34}
!162 = !{ptr @ftsmps2p5_set_points, !163, !"ftsmps2p5_set_points", i1 false, i1 false}
!163 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 554, i32 8}
!164 = !{ptr @ftsmps2p5_ranges, !165, !"ftsmps2p5_ranges", i1 false, i1 false}
!165 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 493, i32 34}
!166 = !{ptr @ftsmps426_set_points, !167, !"ftsmps426_set_points", i1 false, i1 false}
!167 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 555, i32 8}
!168 = !{ptr @ftsmps426_ranges, !169, !"ftsmps426_ranges", i1 false, i1 false}
!169 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 498, i32 34}
!170 = !{ptr @boost_byp_set_points, !171, !"boost_byp_set_points", i1 false, i1 false}
!171 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 557, i32 8}
!172 = !{ptr @boost_byp_ranges, !173, !"boost_byp_ranges", i1 false, i1 false}
!173 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 506, i32 34}
!174 = !{ptr @spmi_ult_lo_smps_ops, !175, !"spmi_ult_lo_smps_ops", i1 false, i1 false}
!175 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1382, i32 35}
!176 = !{ptr @ult_lo_smps_set_points, !177, !"ult_lo_smps_set_points", i1 false, i1 false}
!177 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 558, i32 8}
!178 = !{ptr @ult_lo_smps_ranges, !179, !"ult_lo_smps_ranges", i1 false, i1 false}
!179 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 510, i32 34}
!180 = !{ptr @spmi_ult_ho_smps_ops, !181, !"spmi_ult_ho_smps_ops", i1 false, i1 false}
!181 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1396, i32 35}
!182 = !{ptr @ult_ho_smps_set_points, !183, !"ult_ho_smps_set_points", i1 false, i1 false}
!183 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 559, i32 8}
!184 = !{ptr @ult_ho_smps_ranges, !185, !"ult_ho_smps_ranges", i1 false, i1 false}
!185 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 515, i32 34}
!186 = !{ptr @spmi_ult_ldo_ops, !187, !"spmi_ult_ldo_ops", i1 false, i1 false}
!187 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1411, i32 35}
!188 = !{ptr @ult_nldo_set_points, !189, !"ult_nldo_set_points", i1 false, i1 false}
!189 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 560, i32 8}
!190 = !{ptr @ult_nldo_ranges, !191, !"ult_nldo_ranges", i1 false, i1 false}
!191 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 519, i32 34}
!192 = !{ptr @ult_pldo_set_points, !193, !"ult_pldo_set_points", i1 false, i1 false}
!193 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 561, i32 8}
!194 = !{ptr @ult_pldo_ranges, !195, !"ult_pldo_ranges", i1 false, i1 false}
!195 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 523, i32 34}
!196 = !{ptr @spmi_saw_ops, !197, !"spmi_saw_ops", i1 false, i1 false}
!197 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1299, i32 29}
!198 = !{ptr @.str.40, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1289, i32 3}
!200 = !{ptr @.str.41, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @spmi_regulator_saw_set_voltage.__UNIQUE_ID_ddebug288, !199, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!202 = !{ptr @qcom_spmi_regulator_match, !203, !"qcom_spmi_regulator_match", i1 false, i1 false}
!203 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2133, i32 34}
!204 = !{ptr @.str.42, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2115, i32 4}
!206 = !{ptr @.str.43, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2115, i32 18}
!208 = !{ptr @.str.44, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2116, i32 4}
!210 = !{ptr @.str.45, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2116, i32 18}
!212 = !{ptr @pm8004_regulators, !213, !"pm8004_regulators", i1 false, i1 false}
!213 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2114, i32 41}
!214 = !{ptr @.str.46, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2121, i32 4}
!216 = !{ptr @.str.47, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2121, i32 18}
!218 = !{ptr @.str.48, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2123, i32 4}
!220 = !{ptr @.str.49, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2123, i32 18}
!222 = !{ptr @.str.50, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2124, i32 4}
!224 = !{ptr @.str.51, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2124, i32 18}
!226 = !{ptr @pm8005_regulators, !227, !"pm8005_regulators", i1 false, i1 false}
!227 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2120, i32 41}
!228 = !{ptr @.str.52, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1904, i32 4}
!230 = !{ptr @.str.53, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1904, i32 18}
!232 = !{ptr @.str.54, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1905, i32 4}
!234 = !{ptr @.str.55, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1906, i32 4}
!236 = !{ptr @.str.56, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1906, i32 18}
!238 = !{ptr @.str.57, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1907, i32 4}
!240 = !{ptr @.str.58, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1908, i32 4}
!242 = !{ptr @.str.59, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1909, i32 4}
!244 = !{ptr @.str.60, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1909, i32 18}
!246 = !{ptr @.str.61, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1910, i32 4}
!248 = !{ptr @.str.62, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1911, i32 4}
!250 = !{ptr @.str.63, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1912, i32 4}
!252 = !{ptr @.str.64, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1913, i32 4}
!254 = !{ptr @.str.65, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1913, i32 19}
!256 = !{ptr @.str.66, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1914, i32 4}
!258 = !{ptr @.str.67, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1915, i32 4}
!260 = !{ptr @.str.68, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1915, i32 19}
!262 = !{ptr @.str.69, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1916, i32 4}
!264 = !{ptr @.str.70, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1917, i32 4}
!266 = !{ptr @.str.71, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1918, i32 4}
!268 = !{ptr @.str.72, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1918, i32 19}
!270 = !{ptr @.str.73, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1919, i32 4}
!272 = !{ptr @.str.74, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1920, i32 4}
!274 = !{ptr @.str.75, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1921, i32 4}
!276 = !{ptr @.str.76, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1922, i32 4}
!278 = !{ptr @.str.77, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1922, i32 19}
!280 = !{ptr @.str.78, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1923, i32 4}
!282 = !{ptr @.str.79, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1924, i32 4}
!284 = !{ptr @.str.80, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1925, i32 4}
!286 = !{ptr @.str.81, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1926, i32 4}
!288 = !{ptr @.str.82, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1927, i32 4}
!290 = !{ptr @.str.83, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1928, i32 4}
!292 = !{ptr @.str.84, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1928, i32 19}
!294 = !{ptr @.str.85, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1929, i32 4}
!296 = !{ptr @.str.86, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1930, i32 4}
!298 = !{ptr @.str.87, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1931, i32 4}
!300 = !{ptr @.str.88, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1932, i32 4}
!302 = !{ptr @.str.89, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1932, i32 20}
!304 = !{ptr @pm8226_regulators, !305, !"pm8226_regulators", i1 false, i1 false}
!305 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1898, i32 41}
!306 = !{ptr @.str.90, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1942, i32 4}
!308 = !{ptr @.str.91, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1942, i32 18}
!310 = !{ptr @.str.92, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1943, i32 4}
!312 = !{ptr @.str.93, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1943, i32 18}
!314 = !{ptr @.str.94, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1944, i32 4}
!316 = !{ptr @.str.95, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1944, i32 18}
!318 = !{ptr @pm8841_regulators, !319, !"pm8841_regulators", i1 false, i1 false}
!319 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1936, i32 41}
!320 = !{ptr @.str.96, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1953, i32 18}
!322 = !{ptr @.str.97, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1954, i32 18}
!324 = !{ptr @.str.98, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1956, i32 18}
!326 = !{ptr @.str.99, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1959, i32 18}
!328 = !{ptr @.str.100, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1960, i32 18}
!330 = !{ptr @.str.101, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1961, i32 18}
!332 = !{ptr @pm8916_regulators, !333, !"pm8916_regulators", i1 false, i1 false}
!333 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1948, i32 41}
!334 = !{ptr @.str.102, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1867, i32 18}
!336 = !{ptr @.str.103, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1869, i32 18}
!338 = !{ptr @.str.104, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1870, i32 18}
!340 = !{ptr @.str.105, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1871, i32 18}
!342 = !{ptr @.str.106, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1873, i32 18}
!344 = !{ptr @.str.107, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1874, i32 18}
!346 = !{ptr @.str.108, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1878, i32 19}
!348 = !{ptr @.str.109, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1886, i32 19}
!350 = !{ptr @.str.110, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1891, i32 4}
!352 = !{ptr @.str.111, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1892, i32 4}
!354 = !{ptr @.str.112, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1893, i32 4}
!356 = !{ptr @.str.113, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1893, i32 20}
!358 = !{ptr @.str.114, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1893, i32 31}
!360 = !{ptr @.str.115, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1894, i32 4}
!362 = !{ptr @.str.116, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1894, i32 31}
!364 = !{ptr @pm8941_regulators, !365, !"pm8941_regulators", i1 false, i1 false}
!365 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1861, i32 41}
!366 = !{ptr @.str.117, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1981, i32 18}
!368 = !{ptr @.str.118, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1982, i32 18}
!370 = !{ptr @.str.119, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1983, i32 18}
!372 = !{ptr @.str.120, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1984, i32 18}
!374 = !{ptr @.str.121, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1988, i32 18}
!376 = !{ptr @.str.122, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1989, i32 18}
!378 = !{ptr @.str.123, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2000, i32 19}
!380 = !{ptr @pm8950_regulators, !381, !"pm8950_regulators", i1 false, i1 false}
!381 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 1974, i32 41}
!382 = !{ptr @.str.124, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2016, i32 4}
!384 = !{ptr @.str.125, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2016, i32 18}
!386 = !{ptr @.str.126, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2017, i32 4}
!388 = !{ptr @.str.127, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2017, i32 19}
!390 = !{ptr @.str.128, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2018, i32 4}
!392 = !{ptr @.str.129, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2018, i32 19}
!394 = !{ptr @.str.130, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2019, i32 4}
!396 = !{ptr @.str.131, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2019, i32 19}
!398 = !{ptr @.str.132, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2020, i32 18}
!400 = !{ptr @.str.133, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2021, i32 18}
!402 = !{ptr @.str.134, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2022, i32 18}
!404 = !{ptr @.str.135, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2023, i32 18}
!406 = !{ptr @.str.136, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2025, i32 18}
!408 = !{ptr @.str.137, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2027, i32 18}
!410 = !{ptr @.str.138, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2028, i32 18}
!412 = !{ptr @.str.139, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2032, i32 19}
!414 = !{ptr @.str.140, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2033, i32 19}
!416 = !{ptr @.str.141, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2036, i32 19}
!418 = !{ptr @.str.142, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2039, i32 19}
!420 = !{ptr @.str.143, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2048, i32 4}
!422 = !{ptr @.str.144, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2049, i32 4}
!424 = !{ptr @.str.145, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2050, i32 4}
!426 = !{ptr @.str.146, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2051, i32 4}
!428 = !{ptr @.str.147, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2052, i32 20}
!430 = !{ptr @pm8994_regulators, !431, !"pm8994_regulators", i1 false, i1 false}
!431 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2007, i32 41}
!432 = !{ptr @pmi8994_regulators, !433, !"pmi8994_regulators", i1 false, i1 false}
!433 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2057, i32 41}
!434 = !{ptr @.str.148, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2072, i32 18}
!436 = !{ptr @.str.149, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2073, i32 18}
!438 = !{ptr @.str.150, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2076, i32 18}
!440 = !{ptr @.str.151, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2079, i32 18}
!442 = !{ptr @.str.152, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2086, i32 19}
!444 = !{ptr @pm660_regulators, !445, !"pm660_regulators", i1 false, i1 false}
!445 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2065, i32 41}
!446 = !{ptr @.str.153, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2100, i32 18}
!448 = !{ptr @.str.154, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2102, i32 18}
!450 = !{ptr @.str.155, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2103, i32 18}
!452 = !{ptr @pm660l_regulators, !453, !"pm660l_regulators", i1 false, i1 false}
!453 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2094, i32 41}
!454 = !{ptr @pms405_regulators, !455, !"pms405_regulators", i1 false, i1 false}
!455 = !{!"../drivers/regulator/qcom_spmi-regulator.c", i32 2128, i32 41}
!456 = !{i32 1, !"wchar_size", i32 2}
!457 = !{i32 1, !"min_enum_size", i32 4}
!458 = !{i32 8, !"branch-target-enforcement", i32 0}
!459 = !{i32 8, !"sign-return-address", i32 0}
!460 = !{i32 8, !"sign-return-address-all", i32 0}
!461 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!462 = !{i32 7, !"uwtable", i32 1}
!463 = !{i32 7, !"frame-pointer", i32 2}
!464 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!465 = !{!"auto-init"}
!466 = !{i64 2149024129, i64 2149024134, i64 2149024147, i64 2149024191, i64 2149024225, i64 2149024246}
!467 = !{i64 771632, i64 771659, i64 771681, i64 771709}
!468 = !{i64 772040, i64 772067, i64 772100, i64 772121, i64 772148, i64 772174}
!469 = !{i64 2155235269}
!470 = !{i64 2155235111}
