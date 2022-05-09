; ModuleID = '/llk/IR_all_yes/drivers/regulator/qcom_smd-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom_smd-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpm_regulator_data = type { ptr, i32, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.qcom_rpm_reg = type { ptr, ptr, i32, i32, %struct.regulator_desc, i32, i32, i32, i8 }
%struct.rpm_regulator_req = type { i32, i32, i32 }

@__initcall__kmod_qcom_smd_regulator__288_1346_rpm_reg_init4 = internal global ptr @rpm_reg_init, section ".initcall4.init", align 4
@rpm_reg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpm_reg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpm_reg_exit = internal global ptr @rpm_reg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [61 x i8] c"qcom_smd_regulator.description=Qualcomm RPM regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [61 x i8] c"qcom_smd_regulator.file=drivers/regulator/qcom_smd-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [34 x i8] c"qcom_smd_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom_rpm_smd_regulator\00", [41 x i8] zeroinitializer }, align 32
@rpm_of_match = internal constant { [17 x %struct.of_device_id], [860 x i8] } { [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-mp5496-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_mp5496_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8841-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8841_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8916-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8916_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8226-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8226_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8941-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8941_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8950-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8950_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8953-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8953_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8994-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8994_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm8998-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm8998_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm660-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm660_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm660l-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm660l_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pma8084-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pma8084_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pmi8994-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pmi8994_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pmi8998-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pmi8998_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pms405-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pms405_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpm-pm2250-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rpm_pm2250_regulators }, %struct.of_device_id zeroinitializer], [860 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to retrieve handle to rpm\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpm_reg_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/qcom_smd-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpm_reg_probe._entry_ptr = internal global ptr @rpm_reg_probe._entry, section ".printk_index", align 4
@rpm_regulator_init_vreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown regulator %pOFn\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpm_regulator_init_vreg\00", [40 x i8] zeroinitializer }, align 32
@rpm_regulator_init_vreg._entry_ptr = internal global ptr @rpm_regulator_init_vreg._entry, section ".printk_index", align 4
@rpm_regulator_init_vreg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 1292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%pOFn: devm_regulator_register() failed, ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@rpm_regulator_init_vreg._entry_ptr.10 = internal global ptr @rpm_regulator_init_vreg._entry.8, section ".printk_index", align 4
@rpm_mp5496_regulators = internal constant { [3 x %struct.rpm_regulator_data], [36 x i8] } { [3 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @mp5496_smpa2, ptr @.str.11 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @mp5496_ldoa2, ptr @.str.12 }, %struct.rpm_regulator_data zeroinitializer], [36 x i8] zeroinitializer }, align 32
@rpm_pm8841_regulators = internal constant { [9 x %struct.rpm_regulator_data], [44 x i8] } { [9 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1651535219, i32 1, ptr @pm8x41_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1651535219, i32 2, ptr @pm8841_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1651535219, i32 3, ptr @pm8x41_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1651535219, i32 4, ptr @pm8841_ftsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1651535219, i32 5, ptr @pm8841_ftsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1651535219, i32 6, ptr @pm8841_ftsmps, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1651535219, i32 7, ptr @pm8841_ftsmps, ptr @.str.26 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1651535219, i32 8, ptr @pm8841_ftsmps, ptr @.str.28 }, %struct.rpm_regulator_data zeroinitializer], [44 x i8] zeroinitializer }, align 32
@rpm_pm8916_regulators = internal constant { [23 x %struct.rpm_regulator_data], [116 x i8] } { [23 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8916_buck_lvo_smps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8916_buck_lvo_smps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8916_buck_lvo_smps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm8916_buck_hvo_smps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8916_nldo, ptr @.str.32 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8916_nldo, ptr @.str.32 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8916_nldo, ptr @.str.32 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8916_pldo, ptr @.str.35 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8916_pldo, ptr @.str.35 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8916_pldo, ptr @.str.35 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8916_pldo, ptr @.str.39 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8916_pldo, ptr @.str.41 }, %struct.rpm_regulator_data zeroinitializer], [116 x i8] zeroinitializer }, align 32
@rpm_pm8226_regulators = internal constant { [35 x %struct.rpm_regulator_data], [164 x i8] } { [35 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8226_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8226_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8226_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm8226_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pm8226_hfsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8226_nldo, ptr @.str.56 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8226_nldo, ptr @.str.56 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8226_nldo, ptr @.str.57 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8226_nldo, ptr @.str.56 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8226_nldo, ptr @.str.56 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8226_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8226_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8226_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8226_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8226_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8226_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8226_pldo, ptr @.str.60 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8226_pldo, ptr @.str.59 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8226_pldo, ptr @.str.60 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8226_pldo, ptr @.str.61 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8226_pldo, ptr @.str.61 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8226_pldo, ptr @.str.61 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8226_pldo, ptr @.str.61 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm8226_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pm8226_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pm8226_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pm8226_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 23, ptr @pm8226_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.68, i32 1634690156, i32 24, ptr @pm8226_nldo, ptr @.str.57 }, %struct.rpm_regulator_data { ptr @.str.69, i32 1634690156, i32 25, ptr @pm8226_pldo, ptr @.str.70 }, %struct.rpm_regulator_data { ptr @.str.71, i32 1634690156, i32 26, ptr @pm8226_nldo, ptr @.str.57 }, %struct.rpm_regulator_data { ptr @.str.72, i32 1634690156, i32 27, ptr @pm8226_pldo, ptr @.str.58 }, %struct.rpm_regulator_data { ptr @.str.73, i32 1634690156, i32 28, ptr @pm8226_pldo, ptr @.str.63 }, %struct.rpm_regulator_data { ptr @.str.74, i32 6386550, i32 1, ptr @pm8226_switch, ptr @.str.75 }, %struct.rpm_regulator_data zeroinitializer], [164 x i8] zeroinitializer }, align 32
@rpm_pm8941_regulators = internal constant { [34 x %struct.rpm_regulator_data], [184 x i8] } { [34 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8x41_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8x41_hfsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8x41_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1635021666, i32 1, ptr @pm8941_boost, ptr null }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8941_nldo, ptr @.str.80 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8941_nldo, ptr @.str.81 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8941_nldo, ptr @.str.80 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8941_nldo, ptr @.str.82 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8941_lnldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8941_pldo, ptr @.str.84 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8941_lnldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8941_pldo, ptr @.str.85 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8941_pldo, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8941_pldo, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8941_nldo, ptr @.str.82 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8941_pldo, ptr @.str.84 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8941_pldo, ptr @.str.87 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8941_pldo, ptr @.str.84 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8941_pldo, ptr @.str.84 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8941_pldo, ptr @.str.85 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8941_pldo, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8941_pldo, ptr @.str.85 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm8941_pldo, ptr @.str.85 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pm8941_pldo, ptr @.str.87 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pm8941_pldo, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pm8941_pldo, ptr @.str.86 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 23, ptr @pm8941_pldo, ptr @.str.87 }, %struct.rpm_regulator_data { ptr @.str.68, i32 1634690156, i32 24, ptr @pm8941_pldo, ptr @.str.87 }, %struct.rpm_regulator_data { ptr @.str.74, i32 6386550, i32 1, ptr @pm8941_switch, ptr @.str.81 }, %struct.rpm_regulator_data { ptr @.str.89, i32 6386550, i32 2, ptr @pm8941_switch, ptr @.str.81 }, %struct.rpm_regulator_data { ptr @.str.90, i32 6386550, i32 3, ptr @pm8941_switch, ptr @.str.81 }, %struct.rpm_regulator_data { ptr @.str.91, i32 6386550, i32 4, ptr @pm8941_switch, ptr @.str.92 }, %struct.rpm_regulator_data { ptr @.str.93, i32 6386550, i32 5, ptr @pm8941_switch, ptr @.str.92 }, %struct.rpm_regulator_data zeroinitializer], [184 x i8] zeroinitializer }, align 32
@rpm_pm8950_regulators = internal constant { [30 x %struct.rpm_regulator_data], [136 x i8] } { [30 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8950_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8950_hfsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8950_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm8950_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pm8950_ftsmps2p5, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634758003, i32 6, ptr @pm8950_hfsmps, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8950_ult_nldo, ptr @.str.97 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8950_ult_nldo, ptr @.str.98 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8950_ult_nldo, ptr @.str.99 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8950_ult_pldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8950_pldo_lv, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8950_pldo_lv, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8950_pldo_lv, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8950_ult_nldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8950_ult_pldo, ptr @.str.100 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8950_ult_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8950_ult_pldo, ptr @.str.102 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.97 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.101 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 18, ptr @pm8950_pldo, ptr @.str.98 }, %struct.rpm_regulator_data zeroinitializer], [136 x i8] zeroinitializer }, align 32
@rpm_pm8953_regulators = internal constant { [31 x %struct.rpm_regulator_data], [148 x i8] } { [31 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8998_hfsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8998_hfsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8998_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm8998_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pm8950_ftsmps2p5, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634758003, i32 6, ptr @pm8950_ftsmps2p5, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634758003, i32 7, ptr @pm8998_hfsmps, ptr @.str.26 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8953_ult_nldo, ptr @.str.110 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8953_ult_nldo, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8953_ult_nldo, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8950_ult_pldo, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8950_ult_pldo, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8950_ult_pldo, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8950_ult_pldo, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8950_ult_pldo, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8950_ult_pldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8950_ult_pldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8950_ult_pldo, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8950_ult_pldo, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8950_ult_pldo, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8950_ult_pldo, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8950_ult_pldo, ptr @.str.113 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8950_ult_pldo, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8950_ult_pldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8950_ult_pldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm8953_ult_nldo, ptr @.str.112 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pm8953_lnldo, ptr @.str.103 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pm8953_lnldo, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pm8950_ult_pldo, ptr @.str.114 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 23, ptr @pm8953_ult_nldo, ptr @.str.115 }, %struct.rpm_regulator_data zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rpm_pm8994_regulators = internal constant { [47 x %struct.rpm_regulator_data], [244 x i8] } { [47 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8994_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8994_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8994_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm8994_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pm8994_hfsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634758003, i32 6, ptr @pm8994_ftsmps, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634758003, i32 7, ptr @pm8994_hfsmps, ptr @.str.26 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634758003, i32 8, ptr @pm8994_ftsmps, ptr @.str.28 }, %struct.rpm_regulator_data { ptr @.str.119, i32 1634758003, i32 9, ptr @pm8994_ftsmps, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.121, i32 1634758003, i32 10, ptr @pm8994_ftsmps, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.123, i32 1634758003, i32 11, ptr @pm8994_ftsmps, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.125, i32 1634758003, i32 12, ptr @pm8994_ftsmps, ptr @.str.126 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8994_nldo, ptr @.str.110 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8994_nldo, ptr @.str.127 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8994_nldo, ptr @.str.128 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8994_nldo, ptr @.str.129 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8994_lnldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8994_pldo, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8994_lnldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8994_pldo, ptr @.str.131 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8994_pldo, ptr @.str.132 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8994_pldo, ptr @.str.132 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8994_nldo, ptr @.str.128 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8994_pldo, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8994_pldo, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8994_pldo, ptr @.str.134 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8994_pldo, ptr @.str.134 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8994_pldo, ptr @.str.131 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8994_pldo, ptr @.str.135 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8994_pldo, ptr @.str.132 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm8994_pldo, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pm8994_pldo, ptr @.str.136 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pm8994_pldo, ptr @.str.136 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pm8994_pldo, ptr @.str.132 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 23, ptr @pm8994_pldo, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.68, i32 1634690156, i32 24, ptr @pm8994_pldo, ptr @.str.133 }, %struct.rpm_regulator_data { ptr @.str.69, i32 1634690156, i32 25, ptr @pm8994_pldo, ptr @.str.70 }, %struct.rpm_regulator_data { ptr @.str.71, i32 1634690156, i32 26, ptr @pm8994_nldo, ptr @.str.127 }, %struct.rpm_regulator_data { ptr @.str.72, i32 1634690156, i32 27, ptr @pm8994_nldo, ptr @.str.129 }, %struct.rpm_regulator_data { ptr @.str.73, i32 1634690156, i32 28, ptr @pm8994_nldo, ptr @.str.127 }, %struct.rpm_regulator_data { ptr @.str.137, i32 1634690156, i32 29, ptr @pm8994_pldo, ptr @.str.135 }, %struct.rpm_regulator_data { ptr @.str.138, i32 1634690156, i32 30, ptr @pm8994_pldo, ptr @.str.131 }, %struct.rpm_regulator_data { ptr @.str.139, i32 1634690156, i32 31, ptr @pm8994_nldo, ptr @.str.129 }, %struct.rpm_regulator_data { ptr @.str.140, i32 1634690156, i32 32, ptr @pm8994_pldo, ptr @.str.130 }, %struct.rpm_regulator_data { ptr @.str.74, i32 6386550, i32 1, ptr @pm8994_switch, ptr @.str.141 }, %struct.rpm_regulator_data { ptr @.str.89, i32 6386550, i32 2, ptr @pm8994_switch, ptr @.str.141 }, %struct.rpm_regulator_data zeroinitializer], [244 x i8] zeroinitializer }, align 32
@rpm_pm8998_regulators = internal constant { [44 x %struct.rpm_regulator_data], [208 x i8] } { [44 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm8998_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm8998_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm8998_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm8998_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pm8998_hfsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634758003, i32 6, ptr @pm8998_ftsmps, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634758003, i32 7, ptr @pm8998_ftsmps, ptr @.str.26 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634758003, i32 8, ptr @pm8998_ftsmps, ptr @.str.28 }, %struct.rpm_regulator_data { ptr @.str.119, i32 1634758003, i32 9, ptr @pm8998_ftsmps, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.121, i32 1634758003, i32 10, ptr @pm8998_ftsmps, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.123, i32 1634758003, i32 11, ptr @pm8998_ftsmps, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.125, i32 1634758003, i32 12, ptr @pm8998_ftsmps, ptr @.str.126 }, %struct.rpm_regulator_data { ptr @.str.146, i32 1634758003, i32 13, ptr @pm8998_ftsmps, ptr @.str.147 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm8998_nldo, ptr @.str.148 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm8998_nldo, ptr @.str.149 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm8998_nldo, ptr @.str.128 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm8998_nldo, ptr @.str.150 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm8998_nldo, ptr @.str.150 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm8998_pldo, ptr @.str.151 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm8998_pldo_lv, ptr @.str.152 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm8998_nldo, ptr @.str.149 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm8998_pldo, ptr @.str.153 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm8998_pldo, ptr @.str.154 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm8998_nldo, ptr @.str.128 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm8998_pldo_lv, ptr @.str.152 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm8998_pldo, ptr @.str.155 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm8998_pldo_lv, ptr @.str.152 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm8998_pldo_lv, ptr @.str.152 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm8998_pldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm8998_nldo, ptr @.str.149 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm8998_pldo, ptr @.str.157 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm8998_pldo, ptr @.str.155 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pm8998_pldo, ptr @.str.158 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pm8998_pldo, ptr @.str.155 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pm8998_pldo, ptr @.str.157 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 23, ptr @pm8998_pldo, ptr @.str.154 }, %struct.rpm_regulator_data { ptr @.str.68, i32 1634690156, i32 24, ptr @pm8998_pldo, ptr @.str.158 }, %struct.rpm_regulator_data { ptr @.str.69, i32 1634690156, i32 25, ptr @pm8998_pldo, ptr @.str.154 }, %struct.rpm_regulator_data { ptr @.str.71, i32 1634690156, i32 26, ptr @pm8998_nldo, ptr @.str.159 }, %struct.rpm_regulator_data { ptr @.str.72, i32 1634690156, i32 27, ptr @pm8998_nldo, ptr @.str.148 }, %struct.rpm_regulator_data { ptr @.str.73, i32 1634690156, i32 28, ptr @pm8998_pldo, ptr @.str.156 }, %struct.rpm_regulator_data { ptr @.str.74, i32 6386550, i32 1, ptr @pm8998_switch, ptr @.str.160 }, %struct.rpm_regulator_data { ptr @.str.89, i32 6386550, i32 2, ptr @pm8998_switch, ptr @.str.160 }, %struct.rpm_regulator_data zeroinitializer], [208 x i8] zeroinitializer }, align 32
@rpm_pm660_regulators = internal constant { [25 x %struct.rpm_regulator_data], [108 x i8] } { [25 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm660_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm660_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm660_ftsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm660_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pm660_hfsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634758003, i32 6, ptr @pm660_hfsmps, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm660_nldo660, ptr @.str.165 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm660_ht_nldo, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm660_nldo660, ptr @.str.111 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm660_ht_nldo, ptr @.str.166 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm660_ht_nldo, ptr @.str.165 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm660_ht_nldo, ptr @.str.165 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm660_ht_lvpldo, ptr @.str.167 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm660_pldo660, ptr @.str.168 }, %struct.rpm_regulator_data zeroinitializer], [108 x i8] zeroinitializer }, align 32
@rpm_pm660l_regulators = internal constant { [16 x %struct.rpm_regulator_data], [64 x i8] } { [16 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1651535219, i32 1, ptr @pm660_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1651535219, i32 2, ptr @pm660_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 2019784562, i32 0, ptr @pm660_ftsmps, ptr @.str.175 }, %struct.rpm_regulator_data { ptr @.str.21, i32 2020439922, i32 0, ptr @pm660_ftsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1651467372, i32 1, ptr @pm660_nldo660, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1651467372, i32 2, ptr @pm660_pldo660, ptr @.str.177 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1651467372, i32 3, ptr @pm660_pldo660, ptr @.str.178 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1651467372, i32 4, ptr @pm660_pldo660, ptr @.str.179 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1651467372, i32 5, ptr @pm660_pldo660, ptr @.str.178 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1651467372, i32 6, ptr @pm660_pldo660, ptr @.str.179 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1651467372, i32 7, ptr @pm660_pldo660, ptr @.str.178 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1651467372, i32 8, ptr @pm660_pldo660, ptr @.str.178 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1668052850, i32 0, ptr @pm660_ht_nldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1835825010, i32 0, ptr @pm660_ht_nldo, ptr @.str.176 }, %struct.rpm_regulator_data { ptr @.str.180, i32 1650618210, i32 1, ptr @pm660l_bob, ptr @.str.181 }, %struct.rpm_regulator_data zeroinitializer], [64 x i8] zeroinitializer }, align 32
@rpm_pma8084_regulators = internal constant { [45 x %struct.rpm_regulator_data], [252 x i8] } { [45 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pma8084_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pma8084_ftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pma8084_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pma8084_hfsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pma8084_hfsmps, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.23, i32 1634758003, i32 6, ptr @pma8084_ftsmps, ptr @.str.24 }, %struct.rpm_regulator_data { ptr @.str.25, i32 1634758003, i32 7, ptr @pma8084_ftsmps, ptr @.str.26 }, %struct.rpm_regulator_data { ptr @.str.27, i32 1634758003, i32 8, ptr @pma8084_ftsmps, ptr @.str.28 }, %struct.rpm_regulator_data { ptr @.str.119, i32 1634758003, i32 9, ptr @pma8084_ftsmps, ptr @.str.120 }, %struct.rpm_regulator_data { ptr @.str.121, i32 1634758003, i32 10, ptr @pma8084_ftsmps, ptr @.str.122 }, %struct.rpm_regulator_data { ptr @.str.123, i32 1634758003, i32 11, ptr @pma8084_ftsmps, ptr @.str.124 }, %struct.rpm_regulator_data { ptr @.str.125, i32 1634758003, i32 12, ptr @pma8084_ftsmps, ptr @.str.126 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pma8084_nldo, ptr @.str.183 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pma8084_nldo, ptr @.str.184 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pma8084_nldo, ptr @.str.184 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pma8084_nldo, ptr @.str.184 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pma8084_pldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pma8084_pldo, ptr @.str.185 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pma8084_pldo, ptr @.str.83 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pma8084_pldo, ptr @.str.186 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pma8084_pldo, ptr @.str.187 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pma8084_pldo, ptr @.str.187 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pma8084_nldo, ptr @.str.183 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pma8084_pldo, ptr @.str.185 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pma8084_pldo, ptr @.str.187 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pma8084_pldo, ptr @.str.185 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pma8084_pldo, ptr @.str.185 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pma8084_pldo, ptr @.str.188 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pma8084_pldo, ptr @.str.189 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pma8084_pldo, ptr @.str.190 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pma8084_pldo, ptr @.str.191 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pma8084_pldo, ptr @.str.187 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pma8084_pldo, ptr @.str.88 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pma8084_pldo, ptr @.str.192 }, %struct.rpm_regulator_data { ptr @.str.67, i32 1634690156, i32 23, ptr @pma8084_pldo, ptr @.str.187 }, %struct.rpm_regulator_data { ptr @.str.68, i32 1634690156, i32 24, ptr @pma8084_pldo, ptr @.str.187 }, %struct.rpm_regulator_data { ptr @.str.69, i32 1634690156, i32 25, ptr @pma8084_pldo, ptr @.str.188 }, %struct.rpm_regulator_data { ptr @.str.71, i32 1634690156, i32 26, ptr @pma8084_pldo, ptr @.str.185 }, %struct.rpm_regulator_data { ptr @.str.72, i32 1634690156, i32 27, ptr @pma8084_nldo, ptr @.str.184 }, %struct.rpm_regulator_data { ptr @.str.74, i32 6386550, i32 1, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.89, i32 6386550, i32 2, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.90, i32 6386550, i32 3, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.193, i32 6386550, i32 4, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data { ptr @.str.91, i32 6386550, i32 5, ptr @pma8084_switch, ptr null }, %struct.rpm_regulator_data zeroinitializer], [252 x i8] zeroinitializer }, align 32
@rpm_pmi8994_regulators = internal constant { [5 x %struct.rpm_regulator_data], [60 x i8] } { [5 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1651535219, i32 1, ptr @pmi8994_ftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1651535219, i32 2, ptr @pmi8994_hfsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1651535219, i32 3, ptr @pmi8994_hfsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.198, i32 1652122210, i32 1, ptr @pmi8994_bby, ptr @.str.199 }, %struct.rpm_regulator_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@rpm_pmi8998_regulators = internal constant { [2 x %struct.rpm_regulator_data], [56 x i8] } { [2 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.180, i32 1650618210, i32 1, ptr @pmi8998_bob, ptr @.str.181 }, %struct.rpm_regulator_data zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rpm_pms405_regulators = internal constant { [19 x %struct.rpm_regulator_data], [68 x i8] } { [19 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pms405_hfsmps3, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pms405_hfsmps3, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pms405_hfsmps3, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pms405_hfsmps3, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.21, i32 1634758003, i32 5, ptr @pms405_hfsmps3, ptr @.str.22 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pms405_nldo1200, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pms405_nldo1200, ptr @.str.204 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pms405_nldo1200, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pms405_nldo300, ptr @.str.206 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pms405_pldo600, ptr @.str.207 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pms405_pldo600, ptr @.str.207 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pms405_pldo150, ptr @.str.39 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pms405_nldo1200, ptr @.str.205 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pms405_nldo1200, ptr @.str.153 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pms405_pldo50, ptr @.str.208 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pms405_pldo150, ptr @.str.208 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pms405_pldo150, ptr @.str.208 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pms405_pldo150, ptr @.str.208 }, %struct.rpm_regulator_data zeroinitializer], [68 x i8] zeroinitializer }, align 32
@rpm_pm2250_regulators = internal constant { [27 x %struct.rpm_regulator_data], [132 x i8] } { [27 x %struct.rpm_regulator_data] [%struct.rpm_regulator_data { ptr @.str.14, i32 1634758003, i32 1, ptr @pm2250_lvftsmps, ptr @.str.15 }, %struct.rpm_regulator_data { ptr @.str.11, i32 1634758003, i32 2, ptr @pm2250_lvftsmps, ptr @.str.16 }, %struct.rpm_regulator_data { ptr @.str.17, i32 1634758003, i32 3, ptr @pm2250_lvftsmps, ptr @.str.18 }, %struct.rpm_regulator_data { ptr @.str.19, i32 1634758003, i32 4, ptr @pm2250_ftsmps, ptr @.str.20 }, %struct.rpm_regulator_data { ptr @.str.31, i32 1634690156, i32 1, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.12, i32 1634690156, i32 2, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.33, i32 1634690156, i32 3, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.34, i32 1634690156, i32 4, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data { ptr @.str.36, i32 1634690156, i32 5, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.37, i32 1634690156, i32 6, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.38, i32 1634690156, i32 7, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.40, i32 1634690156, i32 8, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.42, i32 1634690156, i32 9, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.43, i32 1634690156, i32 10, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.44, i32 1634690156, i32 11, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.45, i32 1634690156, i32 12, ptr @pm660_nldo660, ptr @.str.215 }, %struct.rpm_regulator_data { ptr @.str.46, i32 1634690156, i32 13, ptr @pm660_ht_lvpldo, ptr @.str.217 }, %struct.rpm_regulator_data { ptr @.str.47, i32 1634690156, i32 14, ptr @pm660_ht_lvpldo, ptr @.str.217 }, %struct.rpm_regulator_data { ptr @.str.48, i32 1634690156, i32 15, ptr @pm660_ht_lvpldo, ptr @.str.217 }, %struct.rpm_regulator_data { ptr @.str.49, i32 1634690156, i32 16, ptr @pm660_ht_lvpldo, ptr @.str.217 }, %struct.rpm_regulator_data { ptr @.str.50, i32 1634690156, i32 17, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data { ptr @.str.51, i32 1634690156, i32 18, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data { ptr @.str.62, i32 1634690156, i32 19, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data { ptr @.str.64, i32 1634690156, i32 20, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data { ptr @.str.65, i32 1634690156, i32 21, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data { ptr @.str.66, i32 1634690156, i32 22, ptr @pm660_pldo660, ptr @.str.216 }, %struct.rpm_regulator_data zeroinitializer], [132 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s2\00", [29 x i8] zeroinitializer }, align 32
@mp5496_smpa2 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 28, i32 0, ptr @rpm_mp5496_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l2\00", [29 x i8] zeroinitializer }, align 32
@mp5496_ldoa2 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 61, i32 0, ptr @rpm_mp5496_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.13, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@rpm_mp5496_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 725000, i32 0, i32 27, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 60, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s1\00", [29 x i8] zeroinitializer }, align 32
@pm8x41_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.29, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s1\00", [25 x i8] zeroinitializer }, align 32
@pm8841_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 262, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.30, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s2\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s3\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s3\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s4\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s4\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s5\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s5\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s6\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s6\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s7\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s7\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s8\00", [25 x i8] zeroinitializer }, align 32
@rpm_smps_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1575000, i32 96, i32 158, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 184, i32 5000 }, %struct.linear_range { i32 1280000, i32 185, i32 261, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@pm8916_buck_lvo_smps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.52, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8916_buck_hvo_smps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.53, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l1\00", [29 x i8] zeroinitializer }, align 32
@pm8916_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 94, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.54, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd_l1_l2_l3\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l3\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l4\00", [29 x i8] zeroinitializer }, align 32
@pm8916_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 209, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.55, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd_l4_l5_l6\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l5\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l6\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l7\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l7\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l8\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vdd_l8_l9_l10_l11_l12_l13_l14_l15_l16_l17_l18\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"l9\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l10\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l11\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l12\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l13\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l14\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l15\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l16\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l17\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l18\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 750000, i32 96, i32 127, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1550000, i32 0, i32 31, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 93, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 208, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@pm8226_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.76, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8226_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 262, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.77, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8226_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.78, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l1_l2_l4_l5\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l3_l24_l26\00", [17 x i8] zeroinitializer }, align 32
@pm8226_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.79, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l6_l7_l8_l9_l27\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l10_l11_l13\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l12_l14\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l15_l16_l17_l18\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l19\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vdd_l19_l20_l21_l22_l23_l28\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l20\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l21\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l22\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l23\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l24\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l25\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l25\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l26\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l27\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l28\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs1\00", [27 x i8] zeroinitializer }, align 32
@pm8226_switch = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd_lvs1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1575000, i32 96, i32 158, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 184, i32 5000 }, %struct.linear_range { i32 1280000, i32 185, i32 261, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@rpm_switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pm8941_boost = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 31, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.94, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8941_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.95, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l1_l3\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l2_lvs1_2_3\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l4_l11\00", [21 x i8] zeroinitializer }, align 32
@pm8941_lnldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @rpm_smps_ldo_ops_fixed, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1740000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l5_l7\00", [22 x i8] zeroinitializer }, align 32
@pm8941_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.96, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l6_l12_l14_l15\00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l8_l16_l18_l19\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l9_l10_l17_l22\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l13_l20_l23_l24\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l21\00", [24 x i8] zeroinitializer }, align 32
@pm8941_switch = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs2\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs3\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5vs1\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin_5vs\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5vs2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 4000000, i32 0, i32 30, i32 50000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@rpm_smps_ldo_ops_fixed = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@pm8950_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.104, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8950_ftsmps2p5 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 461, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.105, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8950_ult_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 203, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.106, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l1_l19\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l2_l23\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l3\00", [25 x i8] zeroinitializer }, align 32
@pm8950_ult_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.107, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l4_l5_l6_l7_l16\00", [44 x i8] zeroinitializer }, align 32
@pm8950_pldo_lv = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 17, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.108, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd_l8_l11_l12_l17_l22\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vdd_l9_l10_l13_l14_l15_l18\00", [37 x i8] zeroinitializer }, align 32
@pm8950_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 165, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.109, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l20\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1550000, i32 96, i32 127, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 80000, i32 0, i32 255, i32 5000 }, %struct.linear_range { i32 160000, i32 256, i32 460, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 202, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1750000, i32 0, i32 127, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 16, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 975000, i32 0, i32 164, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@pm8998_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 216, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.116, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8953_ult_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 94, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.117, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l1\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l2_l3\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdd_l4_l5_l6_l7_l16_l19\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vdd_l8_l11_l12_l13_l14_l15\00", [37 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd_l9_l10_l17_l18_l22\00", [41 x i8] zeroinitializer }, align 32
@pm8953_lnldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.118, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l23\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 215, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 93, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 690000, i32 0, i32 7, i32 60000 }, %struct.linear_range { i32 1380000, i32 8, i32 15, i32 120000 }], [32 x i8] zeroinitializer }, align 32
@pm8994_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 350, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.142, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8994_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.143, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s9\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_s9\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s10\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s10\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s11\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s11\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s12\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s12\00", [24 x i8] zeroinitializer }, align 32
@pm8994_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.144, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l2_l26_l28\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l3_l11\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l4_l27_l31\00", [17 x i8] zeroinitializer }, align 32
@pm8994_lnldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @rpm_smps_ldo_ops_fixed, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1740000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm8994_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.145, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l6_l12_l32\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdd_l8_l16_l30\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l9_l10_l18_l22\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l13_l19_l23_l24\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l14_l15\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l17_l29\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l20_l21\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l29\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l30\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l31\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l32\00", [28 x i8] zeroinitializer }, align 32
@pm8994_switch = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_lvs1_2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 199, i32 5000 }, %struct.linear_range { i32 700000, i32 200, i32 349, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1550000, i32 96, i32 158, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@pm8998_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 259, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.161, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s13\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_s13\00", [24 x i8] zeroinitializer }, align 32
@pm8998_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.162, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l1_l27\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_l2_l8_l17\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l4_l5\00", [22 x i8] zeroinitializer }, align 32
@pm8998_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.163, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l6\00", [25 x i8] zeroinitializer }, align 32
@pm8998_pldo_lv = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.164, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd_l7_l12_l14_l15\00", [45 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l9\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l10_l23_l25\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l13_l19_l21\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l16_l28\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l18_l22\00", [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l20_l24\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l26\00", [24 x i8] zeroinitializer }, align 32
@pm8998_switch = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_lvs1_lvs2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 258, i32 4000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1664000, i32 0, i32 255, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1256000, i32 0, i32 127, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@pm660_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 200, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.169, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm660_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 217, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.170, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm660_nldo660 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 124, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.171, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd_l1_l6_l7\00", [19 x i8] zeroinitializer }, align 32
@pm660_ht_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 125, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.172, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l5\00", [25 x i8] zeroinitializer }, align 32
@pm660_ht_lvpldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 63, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.173, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vdd_l8_l9_l10_l11_l12_l13_l14\00", [34 x i8] zeroinitializer }, align 32
@pm660_pldo660 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 256, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.174, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vdd_l15_l16_l17_l18_l19\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 355000, i32 0, i32 199, i32 5000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 216, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 123, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 124, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1504000, i32 0, i32 62, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1504000, i32 0, i32 255, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_s3_s4\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd_l1_l9_l10\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l2\00", [25 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd_l3_l5_l7_l8\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l4_l6\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bob\00", [28 x i8] zeroinitializer }, align 32
@pm660l_bob = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 85, i32 0, ptr @rpm_bob_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.182, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_bob\00", [24 x i8] zeroinitializer }, align 32
@rpm_bob_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr @rpm_reg_set_voltage, ptr null, ptr null, ptr @rpm_reg_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpm_reg_enable, ptr @rpm_reg_disable, ptr @rpm_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1800000, i32 0, i32 84, i32 32000 }], [16 x i8] zeroinitializer }, align 32
@pma8084_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 262, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.194, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pma8084_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 159, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.195, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pma8084_nldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.196, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd_l1_l11\00", [21 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdd_l2_l3_l4_l27\00", [47 x i8] zeroinitializer }, align 32
@pma8084_pldo = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 164, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.197, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd_l6_l12_l14_l15_l26\00", [41 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l8\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vdd_l9_l10_l13_l20_l23_l24\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_l16_l25\00", [20 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l17\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l18\00", [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l19\00", [24 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd_l22\00", [24 x i8] zeroinitializer }, align 32
@pma8084_switch = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @rpm_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs4\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 184, i32 5000 }, %struct.linear_range { i32 1280000, i32 185, i32 261, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 375000, i32 0, i32 95, i32 12500 }, %struct.linear_range { i32 1550000, i32 96, i32 158, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 750000, i32 0, i32 63, i32 12500 }, %struct.linear_range { i32 1550000, i32 64, i32 126, i32 25000 }, %struct.linear_range { i32 3100000, i32 127, i32 163, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@pmi8994_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 350, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.200, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pmi8994_hfsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 142, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.201, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"boost-bypass\00", [19 x i8] zeroinitializer }, align 32
@pmi8994_bby = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 45, i32 0, ptr @rpm_bob_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.202, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd_bst_byp\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 199, i32 5000 }, %struct.linear_range { i32 700000, i32 200, i32 349, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 350000, i32 0, i32 80, i32 12500 }, %struct.linear_range { i32 700000, i32 81, i32 141, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 3000000, i32 0, i32 44, i32 50000 }], [16 x i8] zeroinitializer }, align 32
@pmi8998_bob = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 84, i32 0, ptr @rpm_bob_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.203, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1824000, i32 0, i32 83, i32 32000 }], [16 x i8] zeroinitializer }, align 32
@pms405_hfsmps3 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 216, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.209, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pms405_nldo1200 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.210, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l1_l2\00", [22 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l3_l8\00", [22 x i8] zeroinitializer }, align 32
@pms405_nldo300 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.211, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd_l4\00", [25 x i8] zeroinitializer }, align 32
@pms405_pldo600 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 99, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.212, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd_l5_l6\00", [22 x i8] zeroinitializer }, align 32
@pms405_pldo150 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 129, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.213, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pms405_pldo50 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 129, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.214, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l10_l11_l12_l13\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 215, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1256000, i32 0, i32 98, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1664000, i32 0, i32 128, i32 16000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 1664000, i32 0, i32 128, i32 16000 }], [16 x i8] zeroinitializer }, align 32
@pm2250_lvftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 270, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.218, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@pm2250_ftsmps = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 270, i32 0, ptr @rpm_smps_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @.compoundliteral.219, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vdd_l1_l2_l3_l5_l6_l7_l8_l9_l10_l11_l12\00", [56 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vdd_l4_l17_l18_l19_l20_l21_l22\00", [33 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd_l13_l14_l15_l16\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 320000, i32 0, i32 269, i32 4000 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 640000, i32 0, i32 269, i32 8000 }], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"rpm_reg_driver\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1334, i32 31 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1337, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"rpm_of_match\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1222, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1310, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1269, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1292, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"rpm_mp5496_regulators\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 768, i32 40 }
@___asan_gen_.265 = private unnamed_addr constant [22 x i8] c"rpm_pm8841_regulators\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 774, i32 40 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"rpm_pm8916_regulators\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 786, i32 40 }
@___asan_gen_.271 = private unnamed_addr constant [22 x i8] c"rpm_pm8226_regulators\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 812, i32 40 }
@___asan_gen_.274 = private unnamed_addr constant [22 x i8] c"rpm_pm8941_regulators\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 850, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant [22 x i8] c"rpm_pm8950_regulators\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 942, i32 40 }
@___asan_gen_.280 = private unnamed_addr constant [22 x i8] c"rpm_pm8953_regulators\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 976, i32 40 }
@___asan_gen_.283 = private unnamed_addr constant [22 x i8] c"rpm_pm8994_regulators\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1011, i32 40 }
@___asan_gen_.286 = private unnamed_addr constant [22 x i8] c"rpm_pm8998_regulators\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1070, i32 40 }
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"rpm_pm660_regulators\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1122, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant [22 x i8] c"rpm_pm660l_regulators\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1151, i32 40 }
@___asan_gen_.295 = private unnamed_addr constant [23 x i8] c"rpm_pma8084_regulators\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 891, i32 40 }
@___asan_gen_.298 = private unnamed_addr constant [23 x i8] c"rpm_pmi8994_regulators\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1062, i32 40 }
@___asan_gen_.301 = private unnamed_addr constant [23 x i8] c"rpm_pmi8998_regulators\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1117, i32 40 }
@___asan_gen_.304 = private unnamed_addr constant [22 x i8] c"rpm_pms405_regulators\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1170, i32 40 }
@___asan_gen_.307 = private unnamed_addr constant [22 x i8] c"rpm_pm2250_regulators\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1192, i32 40 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 769, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant [13 x i8] c"mp5496_smpa2\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 724, i32 36 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 770, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant [13 x i8] c"mp5496_ldoa2\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 733, i32 36 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"rpm_mp5496_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 202, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 775, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant [14 x i8] c"pm8x41_hfsmps\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 299, i32 36 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 775, i32 48 }
@___asan_gen_.336 = private unnamed_addr constant [14 x i8] c"pm8841_ftsmps\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 309, i32 36 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 776, i32 48 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 777, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 777, i32 48 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 778, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 778, i32 48 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 779, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 779, i32 48 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 780, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 780, i32 48 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 781, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 781, i32 48 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 782, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 782, i32 48 }
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"rpm_smps_ldo_ops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 164, i32 35 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [21 x i8] c"pm8916_buck_lvo_smps\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 376, i32 36 }
@___asan_gen_.386 = private unnamed_addr constant [21 x i8] c"pm8916_buck_hvo_smps\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 386, i32 36 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 791, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant [12 x i8] c"pm8916_nldo\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 367, i32 36 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 791, i32 46 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 793, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 794, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant [12 x i8] c"pm8916_pldo\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 358, i32 36 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 794, i32 46 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 795, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 796, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 797, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 797, i32 46 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 798, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 798, i32 46 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 799, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 800, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 801, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 802, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 803, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 804, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 805, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 806, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 807, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 808, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [14 x i8] c"pm8226_hfsmps\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 255, i32 36 }
@___asan_gen_.465 = private unnamed_addr constant [14 x i8] c"pm8226_ftsmps\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 265, i32 36 }
@___asan_gen_.468 = private unnamed_addr constant [12 x i8] c"pm8226_nldo\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 286, i32 36 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 818, i32 46 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 820, i32 46 }
@___asan_gen_.477 = private unnamed_addr constant [12 x i8] c"pm8226_pldo\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 275, i32 36 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 823, i32 46 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 827, i32 48 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 829, i32 48 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 832, i32 48 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 836, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 836, i32 48 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 837, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 838, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 839, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 840, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 841, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 842, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 842, i32 48 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 843, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 844, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 845, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 846, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant [14 x i8] c"pm8226_switch\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 295, i32 36 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 846, i32 49 }
@___asan_gen_.537 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [15 x i8] c"rpm_switch_ops\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 187, i32 35 }
@___asan_gen_.544 = private unnamed_addr constant [13 x i8] c"pm8941_boost\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 319, i32 36 }
@___asan_gen_.547 = private unnamed_addr constant [12 x i8] c"pm8941_nldo\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 339, i32 36 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 856, i32 46 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 857, i32 46 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 859, i32 46 }
@___asan_gen_.559 = private unnamed_addr constant [13 x i8] c"pm8941_lnldo\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 348, i32 36 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 860, i32 47 }
@___asan_gen_.565 = private unnamed_addr constant [12 x i8] c"pm8941_pldo\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 328, i32 36 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 861, i32 46 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 863, i32 46 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 864, i32 46 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 868, i32 48 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 876, i32 48 }
@___asan_gen_.583 = private unnamed_addr constant [14 x i8] c"pm8941_switch\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 354, i32 36 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 882, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 883, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 885, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 885, i32 49 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 886, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [23 x i8] c"rpm_smps_ldo_ops_fixed\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 176, i32 35 }
@___asan_gen_.606 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.607 = private unnamed_addr constant [14 x i8] c"pm8950_hfsmps\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 395, i32 36 }
@___asan_gen_.610 = private unnamed_addr constant [17 x i8] c"pm8950_ftsmps2p5\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 405, i32 36 }
@___asan_gen_.613 = private unnamed_addr constant [16 x i8] c"pm8950_ult_nldo\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 415, i32 36 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 950, i32 50 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 951, i32 50 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 952, i32 50 }
@___asan_gen_.625 = private unnamed_addr constant [16 x i8] c"pm8950_ult_pldo\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 424, i32 36 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 953, i32 50 }
@___asan_gen_.631 = private unnamed_addr constant [15 x i8] c"pm8950_pldo_lv\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 433, i32 36 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 957, i32 50 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 958, i32 50 }
@___asan_gen_.640 = private unnamed_addr constant [12 x i8] c"pm8950_pldo\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 442, i32 36 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 969, i32 48 }
@___asan_gen_.646 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [14 x i8] c"pm8998_hfsmps\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 558, i32 36 }
@___asan_gen_.655 = private unnamed_addr constant [16 x i8] c"pm8953_ult_nldo\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 461, i32 36 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 985, i32 52 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 986, i32 52 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 988, i32 52 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 992, i32 52 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 993, i32 52 }
@___asan_gen_.673 = private unnamed_addr constant [13 x i8] c"pm8953_lnldo\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 451, i32 36 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1007, i32 52 }
@___asan_gen_.679 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [14 x i8] c"pm8994_ftsmps\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 480, i32 36 }
@___asan_gen_.685 = private unnamed_addr constant [14 x i8] c"pm8994_hfsmps\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 470, i32 36 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1020, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1020, i32 48 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1021, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1021, i32 50 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1022, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1022, i32 50 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1023, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1023, i32 50 }
@___asan_gen_.712 = private unnamed_addr constant [12 x i8] c"pm8994_nldo\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 490, i32 36 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1025, i32 46 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1026, i32 46 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1027, i32 46 }
@___asan_gen_.724 = private unnamed_addr constant [13 x i8] c"pm8994_lnldo\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 514, i32 36 }
@___asan_gen_.727 = private unnamed_addr constant [12 x i8] c"pm8994_pldo\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 499, i32 36 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1029, i32 46 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1031, i32 46 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1032, i32 46 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1036, i32 48 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1037, i32 48 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1040, i32 48 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1043, i32 48 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1052, i32 4 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1053, i32 4 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1054, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1055, i32 4 }
@___asan_gen_.763 = private unnamed_addr constant [14 x i8] c"pm8994_switch\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 510, i32 36 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1056, i32 49 }
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [14 x i8] c"pm8998_ftsmps\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 549, i32 36 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1083, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1083, i32 50 }
@___asan_gen_.782 = private unnamed_addr constant [12 x i8] c"pm8998_nldo\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 567, i32 36 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1084, i32 46 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1085, i32 46 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1087, i32 46 }
@___asan_gen_.794 = private unnamed_addr constant [12 x i8] c"pm8998_pldo\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 576, i32 36 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1089, i32 46 }
@___asan_gen_.800 = private unnamed_addr constant [15 x i8] c"pm8998_pldo_lv\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 585, i32 36 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1090, i32 49 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1092, i32 46 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1093, i32 48 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1096, i32 48 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1099, i32 48 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1101, i32 48 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1103, i32 48 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1109, i32 48 }
@___asan_gen_.827 = private unnamed_addr constant [14 x i8] c"pm8998_switch\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 594, i32 36 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1112, i32 49 }
@___asan_gen_.833 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.834 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.835 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.837 = private unnamed_addr constant [13 x i8] c"pm660_ftsmps\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 607, i32 36 }
@___asan_gen_.840 = private unnamed_addr constant [13 x i8] c"pm660_hfsmps\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 616, i32 36 }
@___asan_gen_.843 = private unnamed_addr constant [14 x i8] c"pm660_nldo660\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 643, i32 36 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1129, i32 48 }
@___asan_gen_.849 = private unnamed_addr constant [14 x i8] c"pm660_ht_nldo\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 625, i32 36 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1133, i32 48 }
@___asan_gen_.855 = private unnamed_addr constant [16 x i8] c"pm660_ht_lvpldo\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 634, i32 36 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1136, i32 50 }
@___asan_gen_.861 = private unnamed_addr constant [14 x i8] c"pm660_pldo660\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 652, i32 36 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1143, i32 50 }
@___asan_gen_.867 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.870 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1154, i32 47 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1156, i32 48 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1157, i32 48 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1158, i32 48 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1159, i32 48 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1166, i32 4 }
@___asan_gen_.891 = private unnamed_addr constant [11 x i8] c"pm660l_bob\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 661, i32 36 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1166, i32 46 }
@___asan_gen_.897 = private unnamed_addr constant [12 x i8] c"rpm_bob_ops\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 193, i32 35 }
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [15 x i8] c"pma8084_ftsmps\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 221, i32 36 }
@___asan_gen_.904 = private unnamed_addr constant [15 x i8] c"pma8084_hfsmps\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 211, i32 36 }
@___asan_gen_.907 = private unnamed_addr constant [13 x i8] c"pma8084_nldo\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 242, i32 36 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 905, i32 47 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 906, i32 47 }
@___asan_gen_.916 = private unnamed_addr constant [13 x i8] c"pma8084_pldo\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 231, i32 36 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 910, i32 47 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 912, i32 47 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 913, i32 47 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 920, i32 49 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 921, i32 49 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 922, i32 49 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 923, i32 49 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 926, i32 49 }
@___asan_gen_.943 = private unnamed_addr constant [15 x i8] c"pma8084_switch\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 251, i32 36 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 936, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.950 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [15 x i8] c"pmi8994_ftsmps\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 520, i32 36 }
@___asan_gen_.956 = private unnamed_addr constant [15 x i8] c"pmi8994_hfsmps\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 530, i32 36 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1066, i32 4 }
@___asan_gen_.962 = private unnamed_addr constant [12 x i8] c"pmi8994_bby\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 540, i32 36 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1066, i32 56 }
@___asan_gen_.968 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.969 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.970 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.971 = private unnamed_addr constant [12 x i8] c"pmi8998_bob\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 598, i32 36 }
@___asan_gen_.974 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.975 = private unnamed_addr constant [15 x i8] c"pms405_hfsmps3\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 670, i32 36 }
@___asan_gen_.978 = private unnamed_addr constant [16 x i8] c"pms405_nldo1200\00", align 1
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 688, i32 36 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1176, i32 50 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1178, i32 50 }
@___asan_gen_.987 = private unnamed_addr constant [15 x i8] c"pms405_nldo300\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 679, i32 36 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1179, i32 49 }
@___asan_gen_.993 = private unnamed_addr constant [15 x i8] c"pms405_pldo600\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 715, i32 36 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1180, i32 49 }
@___asan_gen_.999 = private unnamed_addr constant [15 x i8] c"pms405_pldo150\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 706, i32 36 }
@___asan_gen_.1002 = private unnamed_addr constant [14 x i8] c"pms405_pldo50\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 697, i32 36 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1185, i32 50 }
@___asan_gen_.1008 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant [16 x i8] c"pm2250_lvftsmps\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 742, i32 36 }
@___asan_gen_.1017 = private unnamed_addr constant [14 x i8] c"pm2250_ftsmps\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 751, i32 36 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1197, i32 48 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1200, i32 48 }
@___asan_gen_.1026 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1027 = private constant [42 x i8] c"../drivers/regulator/qcom_smd-regulator.c\00", align 1
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1027, i32 1209, i32 52 }
@___asan_gen_.1029 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@llvm.compiler.used = appending global [316 x ptr] [ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_rpm_reg_exit, ptr @__initcall__kmod_qcom_smd_regulator__288_1346_rpm_reg_init4, ptr @rpm_reg_exit, ptr @rpm_reg_probe._entry, ptr @rpm_reg_probe._entry_ptr, ptr @rpm_regulator_init_vreg._entry, ptr @rpm_regulator_init_vreg._entry.8, ptr @rpm_regulator_init_vreg._entry_ptr, ptr @rpm_regulator_init_vreg._entry_ptr.10, ptr @rpm_reg_driver, ptr @.str, ptr @rpm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rpm_mp5496_regulators, ptr @rpm_pm8841_regulators, ptr @rpm_pm8916_regulators, ptr @rpm_pm8226_regulators, ptr @rpm_pm8941_regulators, ptr @rpm_pm8950_regulators, ptr @rpm_pm8953_regulators, ptr @rpm_pm8994_regulators, ptr @rpm_pm8998_regulators, ptr @rpm_pm660_regulators, ptr @rpm_pm660l_regulators, ptr @rpm_pma8084_regulators, ptr @rpm_pmi8994_regulators, ptr @rpm_pmi8998_regulators, ptr @rpm_pms405_regulators, ptr @rpm_pm2250_regulators, ptr @.str.11, ptr @mp5496_smpa2, ptr @.str.12, ptr @mp5496_ldoa2, ptr @rpm_mp5496_ops, ptr @.compoundliteral, ptr @.compoundliteral.13, ptr @.str.14, ptr @pm8x41_hfsmps, ptr @.str.15, ptr @pm8841_ftsmps, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @rpm_smps_ldo_ops, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @pm8916_buck_lvo_smps, ptr @pm8916_buck_hvo_smps, ptr @.str.31, ptr @pm8916_nldo, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @pm8916_pldo, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @pm8226_hfsmps, ptr @pm8226_ftsmps, ptr @pm8226_nldo, ptr @.str.56, ptr @.str.57, ptr @pm8226_pldo, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @pm8226_switch, ptr @.str.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @rpm_switch_ops, ptr @pm8941_boost, ptr @pm8941_nldo, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @pm8941_lnldo, ptr @.str.83, ptr @pm8941_pldo, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @pm8941_switch, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @rpm_smps_ldo_ops_fixed, ptr @.compoundliteral.96, ptr @pm8950_hfsmps, ptr @pm8950_ftsmps2p5, ptr @pm8950_ult_nldo, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @pm8950_ult_pldo, ptr @.str.100, ptr @pm8950_pldo_lv, ptr @.str.101, ptr @.str.102, ptr @pm8950_pldo, ptr @.str.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @pm8998_hfsmps, ptr @pm8953_ult_nldo, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @pm8953_lnldo, ptr @.str.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @pm8994_ftsmps, ptr @pm8994_hfsmps, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @pm8994_nldo, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @pm8994_lnldo, ptr @pm8994_pldo, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @pm8994_switch, ptr @.str.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @pm8998_ftsmps, ptr @.str.146, ptr @.str.147, ptr @pm8998_nldo, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @pm8998_pldo, ptr @.str.151, ptr @pm8998_pldo_lv, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @pm8998_switch, ptr @.str.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @pm660_ftsmps, ptr @pm660_hfsmps, ptr @pm660_nldo660, ptr @.str.165, ptr @pm660_ht_nldo, ptr @.str.166, ptr @pm660_ht_lvpldo, ptr @.str.167, ptr @pm660_pldo660, ptr @.str.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @pm660l_bob, ptr @.str.181, ptr @rpm_bob_ops, ptr @.compoundliteral.182, ptr @pma8084_ftsmps, ptr @pma8084_hfsmps, ptr @pma8084_nldo, ptr @.str.183, ptr @.str.184, ptr @pma8084_pldo, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @pma8084_switch, ptr @.str.193, ptr @.compoundliteral.194, ptr @.compoundliteral.195, ptr @.compoundliteral.196, ptr @.compoundliteral.197, ptr @pmi8994_ftsmps, ptr @pmi8994_hfsmps, ptr @.str.198, ptr @pmi8994_bby, ptr @.str.199, ptr @.compoundliteral.200, ptr @.compoundliteral.201, ptr @.compoundliteral.202, ptr @pmi8998_bob, ptr @.compoundliteral.203, ptr @pms405_hfsmps3, ptr @pms405_nldo1200, ptr @.str.204, ptr @.str.205, ptr @pms405_nldo300, ptr @.str.206, ptr @pms405_pldo600, ptr @.str.207, ptr @pms405_pldo150, ptr @pms405_pldo50, ptr @.str.208, ptr @.compoundliteral.209, ptr @.compoundliteral.210, ptr @.compoundliteral.211, ptr @.compoundliteral.212, ptr @.compoundliteral.213, ptr @.compoundliteral.214, ptr @pm2250_lvftsmps, ptr @pm2250_ftsmps, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.compoundliteral.219], section "llvm.metadata"
@0 = internal global [307 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_of_match to i32), i32 3332, i32 4192, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_reg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_regulator_init_vreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_regulator_init_vreg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_mp5496_regulators to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8841_regulators to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8916_regulators to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8226_regulators to i32), i32 700, i32 864, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8941_regulators to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8950_regulators to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8953_regulators to i32), i32 620, i32 768, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8994_regulators to i32), i32 940, i32 1184, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm8998_regulators to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm660_regulators to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm660l_regulators to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pma8084_regulators to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pmi8994_regulators to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pmi8998_regulators to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pms405_regulators to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_pm2250_regulators to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp5496_smpa2 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp5496_ldoa2 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_mp5496_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8x41_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8841_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smps_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_buck_lvo_smps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_buck_hvo_smps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8226_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8226_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8226_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8226_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8226_switch to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_boost to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_lnldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_switch to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_smps_ldo_ops_fixed to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_ftsmps2p5 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_ult_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_ult_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_pldo_lv to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8950_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8953_ult_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8953_lnldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_lnldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8994_switch to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_pldo_lv to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_switch to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_nldo660 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_ht_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_ht_lvpldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660_pldo660 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm660l_bob to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_bob_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma8084_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma8084_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma8084_nldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma8084_pldo to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma8084_switch to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8994_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8994_hfsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8994_bby to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8998_bob to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_hfsmps3 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_nldo1200 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_nldo300 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_pldo600 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_pldo150 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pms405_pldo50 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2250_lvftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2250_ftsmps to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 0, i32 0, i32 -1 }]
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
  %config.i = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #6
  %cmp.not53 = icmp eq ptr %call8, null
  br i1 %cmp.not53, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %6 = getelementptr inbounds i8, ptr %config.i, i32 4
  %of_node.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 3
  %driver_data.i39 = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.054 = phi ptr [ %call8, %for.body.lr.ph ], [ %call19, %for.inc.for.body_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 276, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call4, align 4
  %tobool.not64.i = icmp eq ptr %9, null
  br i1 %tobool.not64.i, label %if.end13.rpm_regulator_init_vreg.exit.thread_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.rpm_regulator_init_vreg.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpm_regulator_init_vreg.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %10 = phi ptr [ %12, %for.inc.i.for.body.i_crit_edge ], [ %9, %if.end13.for.body.i_crit_edge ]
  %rpm_data.065.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %call4, %if.end13.for.body.i_crit_edge ]
  %call.i38 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %node.054, ptr noundef nonnull %10) #6
  br i1 %call.i38, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.rpm_regulator_data, ptr %rpm_data.065.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.inc.i.rpm_regulator_init_vreg.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.rpm_regulator_init_vreg.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpm_regulator_init_vreg.exit.thread

for.end.i:                                        ; preds = %for.body.i
  %13 = ptrtoint ptr %rpm_data.065.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i = load ptr, ptr %rpm_data.065.i, align 4
  %tobool3.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool3.not.i, label %for.end.i.rpm_regulator_init_vreg.exit.thread_crit_edge, label %if.end5.i

for.end.i.rpm_regulator_init_vreg.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpm_regulator_init_vreg.exit.thread

rpm_regulator_init_vreg.exit.thread:              ; preds = %for.end.i.rpm_regulator_init_vreg.exit.thread_crit_edge, %for.inc.i.rpm_regulator_init_vreg.exit.thread_crit_edge, %if.end13.rpm_regulator_init_vreg.exit.thread_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull %node.054) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %if.then16

if.end5.i:                                        ; preds = %for.end.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %call.i, align 4
  %rpm7.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %rpm7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %rpm7.i, align 4
  %type.i = getelementptr inbounds %struct.rpm_regulator_data, ptr %rpm_data.065.i, i32 0, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %type8.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type8.i, align 4
  %id.i = getelementptr inbounds %struct.rpm_regulator_data, ptr %rpm_data.065.i, i32 0, i32 2
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 4
  %id9.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %id9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %id9.i, align 4
  %desc.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 4
  %desc10.i = getelementptr inbounds %struct.rpm_regulator_data, ptr %rpm_data.065.i, i32 0, i32 3
  %22 = ptrtoint ptr %desc10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc10.i, align 4
  %24 = call ptr @memcpy(ptr %desc.i, ptr %23, i32 244)
  %25 = ptrtoint ptr %rpm_data.065.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rpm_data.065.i, align 4
  %27 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %desc.i, align 4
  %supply.i = getelementptr inbounds %struct.rpm_regulator_data, ptr %rpm_data.065.i, i32 0, i32 4
  %28 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %supply.i, align 4
  %supply_name.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %supply_name.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %supply_name.i, align 4
  %owner.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 4, i32 13
  %31 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %owner.i, align 4
  %type17.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 4, i32 12
  %32 = ptrtoint ptr %type17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type17.i, align 4
  %33 = load ptr, ptr %rpm_data.065.i, align 4
  %of_match.i = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %of_match.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_match.i, align 4
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev1, ptr %config.i, align 4
  %36 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node.054, ptr %of_node.i, align 4
  %37 = ptrtoint ptr %driver_data.i39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i39, align 4
  %call22.i = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %desc.i, ptr noundef nonnull %config.i) #6
  %cmp.i.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rpm_regulator_init_vreg.exit, label %rpm_regulator_init_vreg.exit.thread43

rpm_regulator_init_vreg.exit.thread43:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %for.inc

rpm_regulator_init_vreg.exit:                     ; preds = %if.end5.i
  %38 = ptrtoint ptr %call22.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %node.054, i32 noundef %38) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %cmp15 = icmp slt ptr %call22.i, null
  br i1 %cmp15, label %if.then16.loopexit, label %rpm_regulator_init_vreg.exit.for.inc_crit_edge

rpm_regulator_init_vreg.exit.for.inc_crit_edge:   ; preds = %rpm_regulator_init_vreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then16.loopexit:                               ; preds = %rpm_regulator_init_vreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call22.i to i32
  br label %if.then16

if.then16:                                        ; preds = %if.then16.loopexit, %rpm_regulator_init_vreg.exit.thread
  %retval.0.i42 = phi i32 [ -22, %rpm_regulator_init_vreg.exit.thread ], [ %39, %if.then16.loopexit ]
  call void @of_node_put(ptr noundef nonnull %node.054) #6
  br label %cleanup

for.inc:                                          ; preds = %rpm_regulator_init_vreg.exit.for.inc_crit_edge, %rpm_regulator_init_vreg.exit.thread43
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %call19 = call ptr @of_get_next_available_child(ptr noundef %41, ptr noundef nonnull %node.054) #6
  %cmp.not = icmp eq ptr %call19, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then16, %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i42, %if.then16 ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef readnone %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %uV = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uV, align 4
  store i32 %min_uV, ptr %uV, align 4
  %uv_updated = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %uv_updated to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %uv_updated, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %uv_updated, align 4
  %call2 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %uV to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %uV, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_enabled, align 4
  %enabled_updated = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %enabled_updated to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %enabled_updated, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %enabled_updated, align 4
  %call1 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %is_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %is_enabled, align 4
  %enabled_updated = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %enabled_updated to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %enabled_updated, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %enabled_updated, align 4
  %call1 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %is_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_enabled, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpm_reg_write_active(ptr nocapture noundef %vreg) unnamed_addr #2 align 64 {
entry:
  %req = alloca [3 x %struct.rpm_regulator_req], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req) #6
  %0 = call ptr @memset(ptr %req, i32 255, i32 36)
  %enabled_updated = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 8
  %1 = ptrtoint ptr %enabled_updated to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %enabled_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1937204590, ptr %req, align 4
  %nbytes = getelementptr inbounds %struct.rpm_regulator_req, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108864, ptr %nbytes, align 4
  %is_enabled = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 5
  %4 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_enabled, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %value = getelementptr inbounds %struct.rpm_regulator_req, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reqlen.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %is_enabled7 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 5
  %9 = ptrtoint ptr %is_enabled7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %is_enabled7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end17_crit_edge, label %if.then9

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10 = getelementptr [3 x %struct.rpm_regulator_req], ptr %req, i32 0, i32 %reqlen.0
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1970667520, ptr %arrayidx10, align 4
  %nbytes13 = getelementptr [3 x %struct.rpm_regulator_req], ptr %req, i32 0, i32 %reqlen.0, i32 1
  %12 = ptrtoint ptr %nbytes13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108864, ptr %nbytes13, align 4
  %uV = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 6
  %13 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uV, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %value15 = getelementptr [3 x %struct.rpm_regulator_req], ptr %req, i32 0, i32 %reqlen.0, i32 2
  %16 = ptrtoint ptr %value15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %value15, align 4
  %inc16 = add nuw nsw i32 %reqlen.0, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %reqlen.1 = phi i32 [ %inc16, %if.then9 ], [ %reqlen.0, %land.lhs.true.if.end17_crit_edge ], [ %reqlen.0, %if.end.if.end17_crit_edge ]
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %if.end17.if.end34_crit_edge, label %land.lhs.true23

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true23:                                  ; preds = %if.end17
  %is_enabled24 = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 5
  %18 = ptrtoint ptr %is_enabled24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %is_enabled24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.end34_crit_edge, label %if.end34.thread

land.lhs.true23.if.end34_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34.thread:                                  ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx27 = getelementptr [3 x %struct.rpm_regulator_req], ptr %req, i32 0, i32 %reqlen.1
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1835073536, ptr %arrayidx27, align 4
  %nbytes30 = getelementptr [3 x %struct.rpm_regulator_req], ptr %req, i32 0, i32 %reqlen.1, i32 1
  %21 = ptrtoint ptr %nbytes30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 67108864, ptr %nbytes30, align 4
  %load = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 7
  %22 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %load, align 4
  %div = udiv i32 %23, 1000
  %24 = tail call i32 @llvm.bswap.i32(i32 %div)
  %value32 = getelementptr [3 x %struct.rpm_regulator_req], ptr %req, i32 0, i32 %reqlen.1, i32 2
  %25 = ptrtoint ptr %value32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %value32, align 4
  %inc33 = add nuw nsw i32 %reqlen.1, 1
  br label %if.end37

if.end34:                                         ; preds = %land.lhs.true23.if.end34_crit_edge, %if.end17.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reqlen.1)
  %tobool35.not = icmp eq i32 %reqlen.1, 0
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.end34.if.end37_crit_edge

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end34.if.end37_crit_edge, %if.end34.thread
  %reqlen.283 = phi i32 [ %inc33, %if.end34.thread ], [ %reqlen.1, %if.end34.if.end37_crit_edge ]
  %rpm = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 1
  %26 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rpm, align 4
  %type = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 2
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %id = getelementptr inbounds %struct.qcom_rpm_reg, ptr %vreg, i32 0, i32 3
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %mul = mul nuw nsw i32 %reqlen.283, 12
  %call = call i32 @qcom_rpm_smd_write(ptr noundef %27, i32 noundef 0, i32 noundef %29, i32 noundef %31, ptr noundef nonnull %req, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool38.not = icmp eq i32 %call, 0
  br i1 %tobool38.not, label %if.then39, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %enabled_updated to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load41 = load i8, ptr %enabled_updated, align 4
  %bf.clear49 = and i8 %bf.load41, 31
  store i8 %bf.clear49, ptr %enabled_updated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end37.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.then39 ], [ %call, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_rpm_smd_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %uV = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uV, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpm_reg_set_load(ptr noundef %rdev, i32 noundef %load_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %load = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %load, align 4
  store i32 %load_uA, ptr %load, align 4
  %load_updated = getelementptr inbounds %struct.qcom_rpm_reg, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %load_updated to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %load_updated, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %load_updated, align 4
  %call2 = tail call fastcc i32 @rpm_reg_write_active(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %load to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %load, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 307)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 307)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506}
!llvm.module.flags = !{!508, !509, !510, !511, !512, !513, !514, !515}
!llvm.ident = !{!516}

!0 = !{ptr @__initcall__kmod_qcom_smd_regulator__288_1346_rpm_reg_init4, !1, !"__initcall__kmod_qcom_smd_regulator__288_1346_rpm_reg_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1346, i32 1}
!2 = !{ptr @__exitcall_rpm_reg_exit, !3, !"__exitcall_rpm_reg_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1352, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1354, i32 1}
!6 = !{ptr @__UNIQUE_ID_file290, !7, !"__UNIQUE_ID_file290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1355, i32 1}
!8 = !{ptr @__UNIQUE_ID_license291, !7, !"__UNIQUE_ID_license291", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1337, i32 12}
!11 = !{ptr @rpm_reg_driver, !12, !"rpm_reg_driver", i1 false, i1 false}
!12 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1334, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1310, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rpm_reg_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @rpm_reg_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1269, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rpm_regulator_init_vreg._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rpm_regulator_init_vreg._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1292, i32 3}
!28 = !{ptr @rpm_regulator_init_vreg._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rpm_regulator_init_vreg._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rpm_of_match, !31, !"rpm_of_match", i1 false, i1 false}
!31 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1222, i32 34}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 769, i32 4}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 770, i32 4}
!36 = !{ptr @rpm_mp5496_regulators, !37, !"rpm_mp5496_regulators", i1 false, i1 false}
!37 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 768, i32 40}
!38 = !{ptr @mp5496_smpa2, !39, !"mp5496_smpa2", i1 false, i1 false}
!39 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 724, i32 36}
!40 = !{ptr @rpm_mp5496_ops, !41, !"rpm_mp5496_ops", i1 false, i1 false}
!41 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 202, i32 35}
!42 = !{ptr @mp5496_ldoa2, !43, !"mp5496_ldoa2", i1 false, i1 false}
!43 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 733, i32 36}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 775, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 775, i32 48}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 776, i32 48}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 777, i32 4}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 777, i32 48}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 778, i32 4}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 778, i32 48}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 779, i32 4}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 779, i32 48}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 780, i32 4}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 780, i32 48}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 781, i32 4}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 781, i32 48}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 782, i32 4}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 782, i32 48}
!74 = !{ptr @rpm_pm8841_regulators, !75, !"rpm_pm8841_regulators", i1 false, i1 false}
!75 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 774, i32 40}
!76 = !{ptr @pm8x41_hfsmps, !77, !"pm8x41_hfsmps", i1 false, i1 false}
!77 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 299, i32 36}
!78 = !{ptr @rpm_smps_ldo_ops, !79, !"rpm_smps_ldo_ops", i1 false, i1 false}
!79 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 164, i32 35}
!80 = !{ptr @pm8841_ftsmps, !81, !"pm8841_ftsmps", i1 false, i1 false}
!81 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 309, i32 36}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 791, i32 4}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 791, i32 46}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 793, i32 4}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 794, i32 4}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 794, i32 46}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 795, i32 4}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 796, i32 4}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 797, i32 4}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 797, i32 46}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 798, i32 4}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 798, i32 46}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 799, i32 4}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 800, i32 4}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 801, i32 4}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 802, i32 4}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 803, i32 4}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 804, i32 4}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 805, i32 4}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 806, i32 4}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 807, i32 4}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 808, i32 4}
!124 = !{ptr @rpm_pm8916_regulators, !125, !"rpm_pm8916_regulators", i1 false, i1 false}
!125 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 786, i32 40}
!126 = !{ptr @pm8916_buck_lvo_smps, !127, !"pm8916_buck_lvo_smps", i1 false, i1 false}
!127 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 376, i32 36}
!128 = !{ptr @pm8916_buck_hvo_smps, !129, !"pm8916_buck_hvo_smps", i1 false, i1 false}
!129 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 386, i32 36}
!130 = !{ptr @pm8916_nldo, !131, !"pm8916_nldo", i1 false, i1 false}
!131 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 367, i32 36}
!132 = !{ptr @pm8916_pldo, !133, !"pm8916_pldo", i1 false, i1 false}
!133 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 358, i32 36}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 818, i32 46}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 820, i32 46}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 823, i32 46}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 827, i32 48}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 829, i32 48}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 832, i32 48}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 836, i32 4}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 836, i32 48}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 837, i32 4}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 838, i32 4}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 839, i32 4}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 840, i32 4}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 841, i32 4}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 842, i32 4}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 842, i32 48}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 843, i32 4}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 844, i32 4}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 845, i32 4}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 846, i32 4}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 846, i32 49}
!174 = !{ptr @rpm_pm8226_regulators, !175, !"rpm_pm8226_regulators", i1 false, i1 false}
!175 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 812, i32 40}
!176 = !{ptr @pm8226_hfsmps, !177, !"pm8226_hfsmps", i1 false, i1 false}
!177 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 255, i32 36}
!178 = !{ptr @pm8226_ftsmps, !179, !"pm8226_ftsmps", i1 false, i1 false}
!179 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 265, i32 36}
!180 = !{ptr @pm8226_nldo, !181, !"pm8226_nldo", i1 false, i1 false}
!181 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 286, i32 36}
!182 = !{ptr @pm8226_pldo, !183, !"pm8226_pldo", i1 false, i1 false}
!183 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 275, i32 36}
!184 = !{ptr @pm8226_switch, !185, !"pm8226_switch", i1 false, i1 false}
!185 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 295, i32 36}
!186 = !{ptr @rpm_switch_ops, !187, !"rpm_switch_ops", i1 false, i1 false}
!187 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 187, i32 35}
!188 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 856, i32 46}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 857, i32 46}
!192 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 859, i32 46}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 860, i32 47}
!196 = !{ptr @.str.84, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 861, i32 46}
!198 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 863, i32 46}
!200 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 864, i32 46}
!202 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 868, i32 48}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 876, i32 48}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 882, i32 4}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 883, i32 4}
!210 = !{ptr @.str.91, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 885, i32 4}
!212 = !{ptr @.str.92, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 885, i32 49}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 886, i32 4}
!216 = !{ptr @rpm_pm8941_regulators, !217, !"rpm_pm8941_regulators", i1 false, i1 false}
!217 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 850, i32 40}
!218 = !{ptr @pm8941_boost, !219, !"pm8941_boost", i1 false, i1 false}
!219 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 319, i32 36}
!220 = !{ptr @pm8941_nldo, !221, !"pm8941_nldo", i1 false, i1 false}
!221 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 339, i32 36}
!222 = !{ptr @pm8941_lnldo, !223, !"pm8941_lnldo", i1 false, i1 false}
!223 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 348, i32 36}
!224 = !{ptr @rpm_smps_ldo_ops_fixed, !225, !"rpm_smps_ldo_ops_fixed", i1 false, i1 false}
!225 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 176, i32 35}
!226 = !{ptr @pm8941_pldo, !227, !"pm8941_pldo", i1 false, i1 false}
!227 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 328, i32 36}
!228 = !{ptr @pm8941_switch, !229, !"pm8941_switch", i1 false, i1 false}
!229 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 354, i32 36}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 950, i32 50}
!232 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 951, i32 50}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 952, i32 50}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 953, i32 50}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 957, i32 50}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 958, i32 50}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 969, i32 48}
!244 = !{ptr @rpm_pm8950_regulators, !245, !"rpm_pm8950_regulators", i1 false, i1 false}
!245 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 942, i32 40}
!246 = !{ptr @pm8950_hfsmps, !247, !"pm8950_hfsmps", i1 false, i1 false}
!247 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 395, i32 36}
!248 = !{ptr @pm8950_ftsmps2p5, !249, !"pm8950_ftsmps2p5", i1 false, i1 false}
!249 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 405, i32 36}
!250 = !{ptr @pm8950_ult_nldo, !251, !"pm8950_ult_nldo", i1 false, i1 false}
!251 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 415, i32 36}
!252 = !{ptr @pm8950_ult_pldo, !253, !"pm8950_ult_pldo", i1 false, i1 false}
!253 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 424, i32 36}
!254 = !{ptr @pm8950_pldo_lv, !255, !"pm8950_pldo_lv", i1 false, i1 false}
!255 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 433, i32 36}
!256 = !{ptr @pm8950_pldo, !257, !"pm8950_pldo", i1 false, i1 false}
!257 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 442, i32 36}
!258 = !{ptr @.str.110, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 985, i32 52}
!260 = !{ptr @.str.111, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 986, i32 52}
!262 = !{ptr @.str.112, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 988, i32 52}
!264 = !{ptr @.str.113, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 992, i32 52}
!266 = !{ptr @.str.114, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 993, i32 52}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1007, i32 52}
!270 = !{ptr @rpm_pm8953_regulators, !271, !"rpm_pm8953_regulators", i1 false, i1 false}
!271 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 976, i32 40}
!272 = !{ptr @pm8998_hfsmps, !273, !"pm8998_hfsmps", i1 false, i1 false}
!273 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 558, i32 36}
!274 = !{ptr @pm8953_ult_nldo, !275, !"pm8953_ult_nldo", i1 false, i1 false}
!275 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 461, i32 36}
!276 = !{ptr @pm8953_lnldo, !277, !"pm8953_lnldo", i1 false, i1 false}
!277 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 451, i32 36}
!278 = !{ptr @.str.119, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1020, i32 4}
!280 = !{ptr @.str.120, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1020, i32 48}
!282 = !{ptr @.str.121, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1021, i32 4}
!284 = !{ptr @.str.122, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1021, i32 50}
!286 = !{ptr @.str.123, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1022, i32 4}
!288 = !{ptr @.str.124, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1022, i32 50}
!290 = !{ptr @.str.125, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1023, i32 4}
!292 = !{ptr @.str.126, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1023, i32 50}
!294 = !{ptr @.str.127, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1025, i32 46}
!296 = !{ptr @.str.128, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1026, i32 46}
!298 = !{ptr @.str.129, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1027, i32 46}
!300 = !{ptr @.str.130, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1029, i32 46}
!302 = !{ptr @.str.131, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1031, i32 46}
!304 = !{ptr @.str.132, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1032, i32 46}
!306 = !{ptr @.str.133, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1036, i32 48}
!308 = !{ptr @.str.134, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1037, i32 48}
!310 = !{ptr @.str.135, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1040, i32 48}
!312 = !{ptr @.str.136, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1043, i32 48}
!314 = !{ptr @.str.137, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1052, i32 4}
!316 = !{ptr @.str.138, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1053, i32 4}
!318 = !{ptr @.str.139, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1054, i32 4}
!320 = !{ptr @.str.140, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1055, i32 4}
!322 = !{ptr @.str.141, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1056, i32 49}
!324 = !{ptr @rpm_pm8994_regulators, !325, !"rpm_pm8994_regulators", i1 false, i1 false}
!325 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1011, i32 40}
!326 = !{ptr @pm8994_ftsmps, !327, !"pm8994_ftsmps", i1 false, i1 false}
!327 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 480, i32 36}
!328 = !{ptr @pm8994_hfsmps, !329, !"pm8994_hfsmps", i1 false, i1 false}
!329 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 470, i32 36}
!330 = !{ptr @pm8994_nldo, !331, !"pm8994_nldo", i1 false, i1 false}
!331 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 490, i32 36}
!332 = !{ptr @pm8994_lnldo, !333, !"pm8994_lnldo", i1 false, i1 false}
!333 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 514, i32 36}
!334 = !{ptr @pm8994_pldo, !335, !"pm8994_pldo", i1 false, i1 false}
!335 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 499, i32 36}
!336 = !{ptr @pm8994_switch, !337, !"pm8994_switch", i1 false, i1 false}
!337 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 510, i32 36}
!338 = !{ptr @.str.146, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1083, i32 4}
!340 = !{ptr @.str.147, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1083, i32 50}
!342 = !{ptr @.str.148, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1084, i32 46}
!344 = !{ptr @.str.149, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1085, i32 46}
!346 = !{ptr @.str.150, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1087, i32 46}
!348 = !{ptr @.str.151, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1089, i32 46}
!350 = !{ptr @.str.152, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1090, i32 49}
!352 = !{ptr @.str.153, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1092, i32 46}
!354 = !{ptr @.str.154, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1093, i32 48}
!356 = !{ptr @.str.155, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1096, i32 48}
!358 = !{ptr @.str.156, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1099, i32 48}
!360 = !{ptr @.str.157, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1101, i32 48}
!362 = !{ptr @.str.158, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1103, i32 48}
!364 = !{ptr @.str.159, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1109, i32 48}
!366 = !{ptr @.str.160, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1112, i32 49}
!368 = !{ptr @rpm_pm8998_regulators, !369, !"rpm_pm8998_regulators", i1 false, i1 false}
!369 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1070, i32 40}
!370 = !{ptr @pm8998_ftsmps, !371, !"pm8998_ftsmps", i1 false, i1 false}
!371 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 549, i32 36}
!372 = !{ptr @pm8998_nldo, !373, !"pm8998_nldo", i1 false, i1 false}
!373 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 567, i32 36}
!374 = !{ptr @pm8998_pldo, !375, !"pm8998_pldo", i1 false, i1 false}
!375 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 576, i32 36}
!376 = !{ptr @pm8998_pldo_lv, !377, !"pm8998_pldo_lv", i1 false, i1 false}
!377 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 585, i32 36}
!378 = !{ptr @pm8998_switch, !379, !"pm8998_switch", i1 false, i1 false}
!379 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 594, i32 36}
!380 = !{ptr @.str.165, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1129, i32 48}
!382 = !{ptr @.str.166, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1133, i32 48}
!384 = !{ptr @.str.167, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1136, i32 50}
!386 = !{ptr @.str.168, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1143, i32 50}
!388 = !{ptr @rpm_pm660_regulators, !389, !"rpm_pm660_regulators", i1 false, i1 false}
!389 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1122, i32 40}
!390 = !{ptr @pm660_ftsmps, !391, !"pm660_ftsmps", i1 false, i1 false}
!391 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 607, i32 36}
!392 = !{ptr @pm660_hfsmps, !393, !"pm660_hfsmps", i1 false, i1 false}
!393 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 616, i32 36}
!394 = !{ptr @pm660_nldo660, !395, !"pm660_nldo660", i1 false, i1 false}
!395 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 643, i32 36}
!396 = !{ptr @pm660_ht_nldo, !397, !"pm660_ht_nldo", i1 false, i1 false}
!397 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 625, i32 36}
!398 = !{ptr @pm660_ht_lvpldo, !399, !"pm660_ht_lvpldo", i1 false, i1 false}
!399 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 634, i32 36}
!400 = !{ptr @pm660_pldo660, !401, !"pm660_pldo660", i1 false, i1 false}
!401 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 652, i32 36}
!402 = !{ptr @.str.175, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1154, i32 47}
!404 = !{ptr @.str.176, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1156, i32 48}
!406 = !{ptr @.str.177, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1157, i32 48}
!408 = !{ptr @.str.178, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1158, i32 48}
!410 = !{ptr @.str.179, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1159, i32 48}
!412 = !{ptr @.str.180, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1166, i32 4}
!414 = !{ptr @.str.181, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1166, i32 46}
!416 = !{ptr @rpm_pm660l_regulators, !417, !"rpm_pm660l_regulators", i1 false, i1 false}
!417 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1151, i32 40}
!418 = !{ptr @pm660l_bob, !419, !"pm660l_bob", i1 false, i1 false}
!419 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 661, i32 36}
!420 = !{ptr @rpm_bob_ops, !421, !"rpm_bob_ops", i1 false, i1 false}
!421 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 193, i32 35}
!422 = !{ptr @.str.183, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 905, i32 47}
!424 = !{ptr @.str.184, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 906, i32 47}
!426 = !{ptr @.str.185, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 910, i32 47}
!428 = !{ptr @.str.186, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 912, i32 47}
!430 = !{ptr @.str.187, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 913, i32 47}
!432 = !{ptr @.str.188, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 920, i32 49}
!434 = !{ptr @.str.189, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 921, i32 49}
!436 = !{ptr @.str.190, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 922, i32 49}
!438 = !{ptr @.str.191, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 923, i32 49}
!440 = !{ptr @.str.192, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 926, i32 49}
!442 = !{ptr @.str.193, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 936, i32 4}
!444 = !{ptr @rpm_pma8084_regulators, !445, !"rpm_pma8084_regulators", i1 false, i1 false}
!445 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 891, i32 40}
!446 = !{ptr @pma8084_ftsmps, !447, !"pma8084_ftsmps", i1 false, i1 false}
!447 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 221, i32 36}
!448 = !{ptr @pma8084_hfsmps, !449, !"pma8084_hfsmps", i1 false, i1 false}
!449 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 211, i32 36}
!450 = !{ptr @pma8084_nldo, !451, !"pma8084_nldo", i1 false, i1 false}
!451 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 242, i32 36}
!452 = !{ptr @pma8084_pldo, !453, !"pma8084_pldo", i1 false, i1 false}
!453 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 231, i32 36}
!454 = !{ptr @pma8084_switch, !455, !"pma8084_switch", i1 false, i1 false}
!455 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 251, i32 36}
!456 = !{ptr @.str.198, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1066, i32 4}
!458 = !{ptr @.str.199, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1066, i32 56}
!460 = !{ptr @rpm_pmi8994_regulators, !461, !"rpm_pmi8994_regulators", i1 false, i1 false}
!461 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1062, i32 40}
!462 = !{ptr @pmi8994_ftsmps, !463, !"pmi8994_ftsmps", i1 false, i1 false}
!463 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 520, i32 36}
!464 = !{ptr @pmi8994_hfsmps, !465, !"pmi8994_hfsmps", i1 false, i1 false}
!465 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 530, i32 36}
!466 = !{ptr @pmi8994_bby, !467, !"pmi8994_bby", i1 false, i1 false}
!467 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 540, i32 36}
!468 = !{ptr @rpm_pmi8998_regulators, !469, !"rpm_pmi8998_regulators", i1 false, i1 false}
!469 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1117, i32 40}
!470 = !{ptr @pmi8998_bob, !471, !"pmi8998_bob", i1 false, i1 false}
!471 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 598, i32 36}
!472 = !{ptr @.str.204, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1176, i32 50}
!474 = !{ptr @.str.205, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1178, i32 50}
!476 = !{ptr @.str.206, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1179, i32 49}
!478 = !{ptr @.str.207, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1180, i32 49}
!480 = !{ptr @.str.208, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1185, i32 50}
!482 = !{ptr @rpm_pms405_regulators, !483, !"rpm_pms405_regulators", i1 false, i1 false}
!483 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1170, i32 40}
!484 = !{ptr @pms405_hfsmps3, !485, !"pms405_hfsmps3", i1 false, i1 false}
!485 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 670, i32 36}
!486 = !{ptr @pms405_nldo1200, !487, !"pms405_nldo1200", i1 false, i1 false}
!487 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 688, i32 36}
!488 = !{ptr @pms405_nldo300, !489, !"pms405_nldo300", i1 false, i1 false}
!489 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 679, i32 36}
!490 = !{ptr @pms405_pldo600, !491, !"pms405_pldo600", i1 false, i1 false}
!491 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 715, i32 36}
!492 = !{ptr @pms405_pldo150, !493, !"pms405_pldo150", i1 false, i1 false}
!493 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 706, i32 36}
!494 = !{ptr @pms405_pldo50, !495, !"pms405_pldo50", i1 false, i1 false}
!495 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 697, i32 36}
!496 = !{ptr @.str.215, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1197, i32 48}
!498 = !{ptr @.str.216, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1200, i32 48}
!500 = !{ptr @.str.217, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1209, i32 52}
!502 = !{ptr @rpm_pm2250_regulators, !503, !"rpm_pm2250_regulators", i1 false, i1 false}
!503 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 1192, i32 40}
!504 = !{ptr @pm2250_lvftsmps, !505, !"pm2250_lvftsmps", i1 false, i1 false}
!505 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 742, i32 36}
!506 = !{ptr @pm2250_ftsmps, !507, !"pm2250_ftsmps", i1 false, i1 false}
!507 = !{!"../drivers/regulator/qcom_smd-regulator.c", i32 751, i32 36}
!508 = !{i32 1, !"wchar_size", i32 2}
!509 = !{i32 1, !"min_enum_size", i32 4}
!510 = !{i32 8, !"branch-target-enforcement", i32 0}
!511 = !{i32 8, !"sign-return-address", i32 0}
!512 = !{i32 8, !"sign-return-address-all", i32 0}
!513 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!514 = !{i32 7, !"uwtable", i32 1}
!515 = !{i32 7, !"frame-pointer", i32 2}
!516 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
