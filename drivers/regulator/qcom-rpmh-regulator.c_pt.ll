; ModuleID = '/llk/IR_all_yes/drivers/regulator/qcom-rpmh-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom-rpmh-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rpmh_vreg_init_data = type { ptr, ptr, ptr, ptr }
%struct.rpmh_vreg_hw_data = type { i32, ptr, %struct.linear_range, i32, i32, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpmh_vreg = type { ptr, i32, %struct.regulator_desc, ptr, i8, i32, i8, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.tcs_cmd = type { i32, i32, i32 }

@__initcall__kmod_qcom_rpmh_regulator__289_1298_rpmh_regulator_driver_init6 = internal global ptr @rpmh_regulator_driver_init, section ".initcall6.init", align 4
@rpmh_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpmh_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpmh_regulator_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpmh_regulator_driver_exit = internal global ptr @rpmh_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"qcom_rpmh_regulator.description=Qualcomm RPMh regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [63 x i8] c"qcom_rpmh_regulator.file=drivers/regulator/qcom-rpmh-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [35 x i8] c"qcom_rpmh_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom-rpmh-regulator\00", [44 x i8] zeroinitializer }, align 32
@rpmh_regulator_match_table = internal constant { [21 x %struct.of_device_id], [1036 x i8] } { [21 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8005-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8005_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8009-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8009_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8009-1-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8009_1_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8150_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150l-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8150l_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8350_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8350c-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8350c_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8450-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8450_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8998-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8998_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmg1110-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmg1110_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8998-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmi8998_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6150-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm6150_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6150l-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm6150l_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm6350-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm6350_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmc8180-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8150_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmc8180c-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm8150l_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmm8155au-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmm8155au_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmx55-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmx55_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm7325-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pm7325_vreg_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmr735a-rpmh-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmr735a_vreg_data }, %struct.of_device_id zeroinitializer], [1036 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,pmic-id\00", [19 x i8] zeroinitializer }, align 32
@rpmh_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qcom,pmic-id missing in DT node\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rpmh_regulator_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/regulator/qcom-rpmh-regulator.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmh_regulator_probe._entry_ptr = internal global ptr @rpmh_regulator_probe._entry, section ".printk_index", align 4
@rpmh_regulator_init_vreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown regulator %pOFn\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rpmh_regulator_init_vreg\00", [39 x i8] zeroinitializer }, align 32
@rpmh_regulator_init_vreg._entry_ptr = internal global ptr @rpmh_regulator_init_vreg._entry, section ".printk_index", align 4
@rpmh_regulator_init_vreg._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%pOFn: could not find RPMh address for resource %s\0A\00", [44 x i8] zeroinitializer }, align 32
@rpmh_regulator_init_vreg._entry_ptr.11 = internal global ptr @rpmh_regulator_init_vreg._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom,always-wait-for-ack\00", [39 x i8] zeroinitializer }, align 32
@rpmh_regulator_init_vreg._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%pOFn: devm_regulator_register() failed, ret=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@rpmh_regulator_init_vreg._entry_ptr.15 = internal global ptr @rpmh_regulator_init_vreg._entry.13, section ".printk_index", align 4
@rpmh_regulator_init_vreg.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.8, ptr @.str.4, ptr @.str.17, i8 0, i8 123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_rpmh_regulator\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%pOFn regulator registered for RPMh resource %s @ 0x%05X\0A\00", [38 x i8] zeroinitializer }, align 32
@pm8005_vreg_data = internal constant { [5 x %struct.rpmh_vreg_init_data], [48 x i8] } { [5 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pm8009_vreg_data = internal constant { [10 x %struct.rpmh_vreg_init_data], [32 x i8] } { [10 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_hfsmps515 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.44, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pm8009_1_vreg_data = internal constant { [10 x %struct.rpmh_vreg_init_data], [32 x i8] } { [10 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_hfsmps515_1 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.44, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pm8150_vreg_data = internal constant { [29 x %struct.rpmh_vreg_init_data], [112 x i8] } { [29 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.68, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.69, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.71, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.72, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.68, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.71, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.69, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.68, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr @.str.85, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.92, ptr @.str.93, ptr @.str.85, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.94, ptr @.str.95, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data zeroinitializer], [112 x i8] zeroinitializer }, align 32
@pm8150l_vreg_data = internal constant { [21 x %struct.rpmh_vreg_init_data], [80 x i8] } { [21 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.96, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.97, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.97, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.98, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.98, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.98, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.99, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.96, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.100, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.100, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.99, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @pmic5_bob }, %struct.rpmh_vreg_init_data zeroinitializer], [80 x i8] zeroinitializer }, align 32
@pm8350_vreg_data = internal constant { [23 x %struct.rpmh_vreg_init_data], [80 x i8] } { [23 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.110, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.111, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.112, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.110, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.112, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.113, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.111, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.114, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.113, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.113, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data zeroinitializer], [80 x i8] zeroinitializer }, align 32
@pm8350c_vreg_data = internal constant { [25 x %struct.rpmh_vreg_init_data], [112 x i8] } { [25 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_hfsmps515 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.115, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.116, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.117, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.117, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.117, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.118, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.117, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.116, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.118, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.119, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.118, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.115, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.117, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @pmic5_bob }, %struct.rpmh_vreg_init_data zeroinitializer], [112 x i8] zeroinitializer }, align 32
@pm8450_vreg_data = internal constant { [11 x %struct.rpmh_vreg_init_data], [48 x i8] } { [11 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pm8998_vreg_data = internal constant { [44 x %struct.rpmh_vreg_init_data], [160 x i8] } { [44 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic4_hfsmps3 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic4_hfsmps3 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic4_hfsmps3 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @pmic4_ftsmps426 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.123, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.124, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.125, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.126, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.126, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.127, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.72, ptr @pmic4_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.124, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.128, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.129, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.125, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.72, ptr @pmic4_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.130, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr @.str.72, ptr @pmic4_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr @.str.72, ptr @pmic4_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr @.str.131, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.92, ptr @.str.93, ptr @.str.124, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.94, ptr @.str.95, ptr @.str.132, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.133, ptr @.str.134, ptr @.str.130, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.138, ptr @.str.139, ptr @.str.130, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.140, ptr @.str.141, ptr @.str.132, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.142, ptr @.str.143, ptr @.str.129, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.144, ptr @.str.145, ptr @.str.137, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.146, ptr @.str.147, ptr @.str.129, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.151, ptr @.str.152, ptr @.str.123, ptr @pmic4_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.153, ptr @.str.154, ptr @.str.131, ptr @pmic4_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @pmic4_lvs }, %struct.rpmh_vreg_init_data { ptr @.str.158, ptr @.str.159, ptr @.str.157, ptr @pmic4_lvs }, %struct.rpmh_vreg_init_data zeroinitializer], [160 x i8] zeroinitializer }, align 32
@pmg1110_vreg_data = internal constant { [2 x %struct.rpmh_vreg_init_data], [32 x i8] } { [2 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pmi8998_vreg_data = internal constant { [2 x %struct.rpmh_vreg_init_data], [32 x i8] } { [2 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @pmic4_bob }, %struct.rpmh_vreg_init_data zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pm6150_vreg_data = internal constant { [25 x %struct.rpmh_vreg_init_data], [112 x i8] } { [25 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.97, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.97, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.160, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.161, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.127, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.160, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.160, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.128, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.162, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.163, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.163, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.163, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr @.str.162, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr @.str.162, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr @.str.161, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.92, ptr @.str.93, ptr @.str.161, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.94, ptr @.str.95, ptr @.str.161, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.133, ptr @.str.134, ptr @.str.161, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data zeroinitializer], [112 x i8] zeroinitializer }, align 32
@pm6150l_vreg_data = internal constant { [21 x %struct.rpmh_vreg_init_data], [80 x i8] } { [21 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.96, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.97, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.97, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.98, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.98, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.98, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.99, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.96, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.100, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.100, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.99, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @pmic5_bob }, %struct.rpmh_vreg_init_data zeroinitializer], [80 x i8] zeroinitializer }, align 32
@pm6350_vreg_data = internal constant { [23 x %struct.rpmh_vreg_init_data], [80 x i8] } { [23 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr null, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr null, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr null, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.94, ptr @.str.95, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.133, ptr @.str.134, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.135, ptr @.str.136, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.138, ptr @.str.139, ptr null, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.140, ptr @.str.141, ptr null, ptr @pmic5_nldo }], [80 x i8] zeroinitializer }, align 32
@pmm8155au_vreg_data = internal constant { [29 x %struct.rpmh_vreg_init_data], [112 x i8] } { [29 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.68, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.69, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.71, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.68, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.71, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.69, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.68, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr @.str.72, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr @.str.85, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.92, ptr @.str.93, ptr @.str.85, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.94, ptr @.str.95, ptr @.str.70, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data zeroinitializer], [112 x i8] zeroinitializer }, align 32
@pmx55_vreg_data = internal constant { [24 x %struct.rpmh_vreg_init_data], [96 x i8] } { [24 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.164, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.164, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.165, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.166, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.44, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.167, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.167, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.165, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.168, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.168, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.166, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.168, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr @.str.169, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr @.str.170, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr @.str.171, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data zeroinitializer], [96 x i8] zeroinitializer }, align 32
@pm7325_vreg_data = internal constant { [28 x %struct.rpmh_vreg_init_data], [96 x i8] } { [28 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.172, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.111, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.172, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.173, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.113, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.111, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data { ptr @.str.73, ptr @.str.74, ptr @.str.114, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.75, ptr @.str.76, ptr @.str.113, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.77, ptr @.str.78, ptr @.str.113, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.79, ptr @.str.80, ptr @.str.174, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.81, ptr @.str.82, ptr @.str.172, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.83, ptr @.str.84, ptr @.str.175, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.86, ptr @.str.87, ptr @.str.176, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.88, ptr @.str.89, ptr @.str.172, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.90, ptr @.str.91, ptr @.str.176, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.92, ptr @.str.93, ptr @.str.174, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.94, ptr @.str.95, ptr @.str.174, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.133, ptr @.str.134, ptr @.str.174, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data zeroinitializer], [96 x i8] zeroinitializer }, align 32
@pmr735a_vreg_data = internal constant { [11 x %struct.rpmh_vreg_init_data], [48 x i8] } { [11 x %struct.rpmh_vreg_init_data] [%struct.rpmh_vreg_init_data { ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmic5_ftsmps520 }, %struct.rpmh_vreg_init_data { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pmic5_hfsmps510 }, %struct.rpmh_vreg_init_data { ptr @.str.30, ptr @.str.31, ptr @.str.164, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.33, ptr @.str.34, ptr @.str.164, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pmic5_pldo_lv }, %struct.rpmh_vreg_init_data { ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.45, ptr @.str.46, ptr @.str.44, ptr @pmic5_nldo }, %struct.rpmh_vreg_init_data { ptr @.str.47, ptr @.str.48, ptr @.str.177, ptr @pmic5_pldo }, %struct.rpmh_vreg_init_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps1\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s1\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s1\00", [25 x i8] zeroinitializer }, align 32
@pmic4_ftsmps426 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 320000, i32 0, i32 258, i32 4000 }, i32 259, i32 0, ptr @pmic_mode_map_pmic4_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps2\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s2\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s2\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps3\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s3\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s3\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps4\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s4\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s4\00", [25 x i8] zeroinitializer }, align 32
@rpmh_regulator_vrm_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpmh_regulator_vrm_set_voltage_sel, ptr null, ptr @rpmh_regulator_vrm_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmh_regulator_enable, ptr @rpmh_regulator_disable, ptr @rpmh_regulator_is_enabled, ptr @rpmh_regulator_vrm_set_mode, ptr @rpmh_regulator_vrm_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pmic_mode_map_pmic4_smps = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -22, i32 7, i32 6, i32 0, i32 5, i32 0, i32 0, i32 0, i32 4], [60 x i8] zeroinitializer }, align 32
@pmic5_hfsmps510 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 320000, i32 0, i32 215, i32 8000 }, i32 216, i32 0, ptr @pmic_mode_map_pmic5_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@pmic5_hfsmps515 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 320000, i32 0, i32 235, i32 16000 }, i32 236, i32 0, ptr @pmic_mode_map_pmic5_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s1\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l1\00", [25 x i8] zeroinitializer }, align 32
@pmic5_nldo = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_drms_ops, %struct.linear_range { i32 320000, i32 0, i32 123, i32 8000 }, i32 124, i32 30000, ptr @pmic_mode_map_pmic5_ldo, ptr @rpmh_regulator_pmic4_ldo_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s2\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l2\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s3\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l3\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s4\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l4\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s5\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l5-l6\00", [22 x i8] zeroinitializer }, align 32
@pmic5_pldo = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_drms_ops, %struct.linear_range { i32 1504000, i32 0, i32 255, i32 8000 }, i32 256, i32 10000, ptr @pmic_mode_map_pmic5_ldo, ptr @rpmh_regulator_pmic4_ldo_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s6\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s7\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l7\00", [25 x i8] zeroinitializer }, align 32
@pmic5_pldo_lv = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_drms_ops, %struct.linear_range { i32 1504000, i32 0, i32 62, i32 8000 }, i32 63, i32 10000, ptr @pmic_mode_map_pmic5_ldo, ptr @rpmh_regulator_pmic4_ldo_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@pmic_mode_map_pmic5_smps = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -22, i32 7, i32 6, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@rpmh_regulator_vrm_drms_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpmh_regulator_vrm_set_voltage_sel, ptr null, ptr @rpmh_regulator_vrm_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmh_regulator_enable, ptr @rpmh_regulator_disable, ptr @rpmh_regulator_is_enabled, ptr @rpmh_regulator_vrm_set_mode, ptr @rpmh_regulator_vrm_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmh_regulator_vrm_set_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pmic_mode_map_pmic5_ldo = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -22, i32 -22, i32 7, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@pmic5_hfsmps515_1 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 900000, i32 0, i32 4, i32 16000 }, i32 5, i32 0, ptr @pmic_mode_map_pmic5_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@pmic5_ftsmps510 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 300000, i32 0, i32 263, i32 4000 }, i32 264, i32 0, ptr @pmic_mode_map_pmic5_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps5\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s5\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s5\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps6\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s6\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s6\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps7\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s7\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s7\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps8\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s8\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s8\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps9\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smp%s9\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-s9\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smps10\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smp%s10\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-s10\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd-l1-l8-l11\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l2-l10\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdd-l3-l4-l5-l18\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l6-l9\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdd-l7-l12-l14-l15\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s8\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldo%s9\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo10\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s10\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo11\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s11\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo12\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s12\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo13\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s13\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-l13-l16-l17\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo14\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s14\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo15\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s15\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo16\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s16\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo17\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s17\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo18\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s18\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l1-l8\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l2-l3\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd-l4-l5-l6\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l7-l11\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l9-l10\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bob\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bob%s1\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-bob\00", [24 x i8] zeroinitializer }, align 32
@pmic5_bob = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_bypass_ops, %struct.linear_range { i32 3000000, i32 0, i32 31, i32 32000 }, i32 32, i32 0, ptr @pmic_mode_map_pmic5_bob, ptr @rpmh_regulator_pmic4_bob_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@rpmh_regulator_vrm_bypass_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @rpmh_regulator_vrm_set_voltage_sel, ptr null, ptr @rpmh_regulator_vrm_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmh_regulator_enable, ptr @rpmh_regulator_disable, ptr @rpmh_regulator_is_enabled, ptr @rpmh_regulator_vrm_set_mode, ptr @rpmh_regulator_vrm_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmh_regulator_vrm_set_bypass, ptr @rpmh_regulator_vrm_get_bypass, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pmic_mode_map_pmic5_bob = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -22, i32 7, i32 6, i32 0, i32 4, i32 0, i32 0, i32 0, i32 -22], [60 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smps11\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smp%s11\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-s11\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smps12\00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smp%s12\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-s12\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l1-l4\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l2-l7\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l3-l5\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd-l6-l9-l10\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l8\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l1-l12\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l2-l8\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd-l3-l4-l5-l7-l13\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd-l6-l9-l11\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-l10\00", [24 x i8] zeroinitializer }, align 32
@pmic5_ftsmps520 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 300000, i32 0, i32 263, i32 4000 }, i32 264, i32 0, ptr @pmic_mode_map_pmic5_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@pmic4_hfsmps3 = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_ops, %struct.linear_range { i32 320000, i32 0, i32 215, i32 8000 }, i32 216, i32 0, ptr @pmic_mode_map_pmic4_smps, ptr @rpmh_regulator_pmic4_smps_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smps13\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smp%s13\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-s13\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l1-l27\00", [21 x i8] zeroinitializer }, align 32
@pmic4_nldo = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_drms_ops, %struct.linear_range { i32 312000, i32 0, i32 127, i32 8000 }, i32 128, i32 30000, ptr @pmic_mode_map_pmic4_ldo, ptr @rpmh_regulator_pmic4_ldo_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd-l2-l8-l17\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l3-l11\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l4-l5\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l6\00", [25 x i8] zeroinitializer }, align 32
@pmic4_pldo = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_drms_ops, %struct.linear_range { i32 1664000, i32 0, i32 255, i32 8000 }, i32 256, i32 10000, ptr @pmic_mode_map_pmic4_ldo, ptr @rpmh_regulator_pmic4_ldo_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@pmic4_pldo_lv = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_drms_ops, %struct.linear_range { i32 1256000, i32 0, i32 127, i32 8000 }, i32 128, i32 10000, ptr @pmic_mode_map_pmic4_ldo, ptr @rpmh_regulator_pmic4_ldo_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l9\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-l10-l23-l25\00", [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-l13-l19-l21\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-l16-l28\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-l18-l22\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo19\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s19\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo20\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s20\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-l20-l24\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo21\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s21\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo22\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s22\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo23\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s23\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo24\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s24\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo25\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s25\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo26\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s26\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-l26\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo27\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s27\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo28\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo%s28\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs1\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vs%s1\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vin-lvs-1-2\00", [20 x i8] zeroinitializer }, align 32
@pmic4_lvs = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 1, ptr @rpmh_regulator_xob_ops, %struct.linear_range zeroinitializer, i32 0, i32 0, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvs2\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vs%s2\00", [26 x i8] zeroinitializer }, align 32
@pmic_mode_map_pmic4_ldo = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -22, i32 -22, i32 7, i32 0, i32 5, i32 0, i32 0, i32 0, i32 4], [60 x i8] zeroinitializer }, align 32
@rpmh_regulator_xob_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpmh_regulator_enable, ptr @rpmh_regulator_disable, ptr @rpmh_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pmic4_bob = internal constant { %struct.rpmh_vreg_hw_data, [56 x i8] } { %struct.rpmh_vreg_hw_data { i32 0, ptr @rpmh_regulator_vrm_bypass_ops, %struct.linear_range { i32 1824000, i32 0, i32 83, i32 32000 }, i32 84, i32 0, ptr @pmic_mode_map_pmic4_bob, ptr @rpmh_regulator_pmic4_bob_of_map_mode }, [56 x i8] zeroinitializer }, align 32
@pmic_mode_map_pmic4_bob = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -22, i32 3, i32 2, i32 0, i32 1, i32 0, i32 0, i32 0, i32 -22], [60 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd-l4-l7-l8\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdd-l5-l16-l17-l18-l19\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-l10-l14-l15\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-l11-l12-l13\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l1-l2\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l3-l9\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l4-l12\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd-l7-l8\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdd-l10-l11-l13\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-l14\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-l15\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-l16\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vdd-l1-l4-l12-l15\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-l5\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdd-l11-l17-l18-l19\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-l13\00", [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdd-l14-l16\00", [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdd-l7-bob\00", [21 x i8] zeroinitializer }, align 32
@switch.table.rpmh_regulator_pmic4_smps_of_map_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 4, i32 2, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.rpmh_regulator_pmic4_ldo_of_map_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 4, i32 0, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.rpmh_regulator_pmic4_bob_of_map_mode = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.178 = private unnamed_addr constant [22 x i8] c"rpmh_regulator_driver\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1291, i32 31 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1293, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"rpmh_regulator_match_table\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1206, i32 49 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1182, i32 46 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1184, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 431, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 440, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 460, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 486, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 491, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"pm8005_vreg_data\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 827, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"pm8009_vreg_data\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 991, i32 41 }
@___asan_gen_.244 = private unnamed_addr constant [19 x i8] c"pm8009_1_vreg_data\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1004, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"pm8150_vreg_data\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 835, i32 41 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"pm8150l_vreg_data\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 867, i32 41 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"pm8350_vreg_data\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 923, i32 41 }
@___asan_gen_.256 = private unnamed_addr constant [18 x i8] c"pm8350c_vreg_data\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 949, i32 41 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"pm8450_vreg_data\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 977, i32 41 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"pm8998_vreg_data\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 770, i32 41 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"pmg1110_vreg_data\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 817, i32 41 }
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"pmi8998_vreg_data\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 822, i32 41 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"pm6150_vreg_data\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1017, i32 41 }
@___asan_gen_.274 = private unnamed_addr constant [18 x i8] c"pm6150l_vreg_data\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1045, i32 41 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"pm6350_vreg_data\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1069, i32 41 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c"pmm8155au_vreg_data\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 891, i32 41 }
@___asan_gen_.283 = private unnamed_addr constant [16 x i8] c"pmx55_vreg_data\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1097, i32 41 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"pm7325_vreg_data\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1124, i32 41 }
@___asan_gen_.289 = private unnamed_addr constant [18 x i8] c"pmr735a_vreg_data\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1155, i32 41 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 828, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [16 x i8] c"pmic4_ftsmps426\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 654, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 829, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 830, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 831, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [23 x i8] c"rpmh_regulator_vrm_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 358, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant [25 x i8] c"pmic_mode_map_pmic4_smps\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 535, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant [16 x i8] c"pmic5_hfsmps510\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 708, i32 39 }
@___asan_gen_.340 = private unnamed_addr constant [16 x i8] c"pmic5_hfsmps515\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 735, i32 39 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 994, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"pmic5_nldo\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 698, i32 39 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 995, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 996, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 997, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 998, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [11 x i8] c"pmic5_pldo\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 678, i32 39 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 999, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1000, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [14 x i8] c"pmic5_pldo_lv\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 688, i32 39 }
@___asan_gen_.412 = private unnamed_addr constant [25 x i8] c"pmic_mode_map_pmic5_smps\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 543, i32 18 }
@___asan_gen_.415 = private unnamed_addr constant [28 x i8] c"rpmh_regulator_vrm_drms_ops\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 369, i32 35 }
@___asan_gen_.418 = private unnamed_addr constant [24 x i8] c"pmic_mode_map_pmic5_ldo\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 505, i32 18 }
@___asan_gen_.421 = private unnamed_addr constant [18 x i8] c"pmic5_hfsmps515_1\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 744, i32 39 }
@___asan_gen_.424 = private unnamed_addr constant [16 x i8] c"pmic5_ftsmps510\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 717, i32 39 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 840, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 841, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 842, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 843, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 844, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 845, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 846, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 847, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 848, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 851, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 852, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 853, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 854, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 855, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 856, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 857, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 858, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 859, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 860, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 861, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 862, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 863, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 876, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 877, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 879, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 882, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 884, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 887, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [10 x i8] c"pmic5_bob\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 753, i32 39 }
@___asan_gen_.592 = private unnamed_addr constant [30 x i8] c"rpmh_regulator_vrm_bypass_ops\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 381, i32 35 }
@___asan_gen_.595 = private unnamed_addr constant [24 x i8] c"pmic_mode_map_pmic5_bob\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 585, i32 18 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 934, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 935, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 936, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 937, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 938, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 941, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 943, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 960, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 961, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 962, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 965, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 969, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant [16 x i8] c"pmic5_ftsmps520\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 726, i32 39 }
@___asan_gen_.649 = private unnamed_addr constant [14 x i8] c"pmic4_hfsmps3\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 645, i32 39 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 783, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 784, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [11 x i8] c"pmic4_nldo\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 635, i32 39 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 785, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 786, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 787, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 789, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [11 x i8] c"pmic4_pldo\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 615, i32 39 }
@___asan_gen_.682 = private unnamed_addr constant [14 x i8] c"pmic4_pldo_lv\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 625, i32 39 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 792, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 793, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 796, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 799, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 801, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 802, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 803, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 804, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 805, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 806, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 807, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 808, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 809, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 810, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 811, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 812, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [10 x i8] c"pmic4_lvs\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 672, i32 39 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 813, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [24 x i8] c"pmic_mode_map_pmic4_ldo\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 497, i32 18 }
@___asan_gen_.787 = private unnamed_addr constant [23 x i8] c"rpmh_regulator_xob_ops\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 394, i32 35 }
@___asan_gen_.790 = private unnamed_addr constant [10 x i8] c"pmic4_bob\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 663, i32 39 }
@___asan_gen_.793 = private unnamed_addr constant [24 x i8] c"pmic_mode_map_pmic4_bob\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 577, i32 18 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1026, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1027, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1032, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1033, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1105, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1107, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1108, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1111, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1114, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1118, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1119, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1120, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1133, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1137, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1143, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1145, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1146, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.848 = private constant [43 x i8] c"../drivers/regulator/qcom-rpmh-regulator.c\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1165, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant [51 x i8] c"switch.table.rpmh_regulator_pmic4_smps_of_map_mode\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [50 x i8] c"switch.table.rpmh_regulator_pmic4_ldo_of_map_mode\00", align 1
@___asan_gen_.852 = private unnamed_addr constant [50 x i8] c"switch.table.rpmh_regulator_pmic4_bob_of_map_mode\00", align 1
@llvm.compiler.used = appending global [237 x ptr] [ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rpmh_regulator_driver_exit, ptr @__initcall__kmod_qcom_rpmh_regulator__289_1298_rpmh_regulator_driver_init6, ptr @rpmh_regulator_driver_exit, ptr @rpmh_regulator_init_vreg._entry, ptr @rpmh_regulator_init_vreg._entry.13, ptr @rpmh_regulator_init_vreg._entry.9, ptr @rpmh_regulator_init_vreg._entry_ptr, ptr @rpmh_regulator_init_vreg._entry_ptr.11, ptr @rpmh_regulator_init_vreg._entry_ptr.15, ptr @rpmh_regulator_probe._entry, ptr @rpmh_regulator_probe._entry_ptr, ptr @rpmh_regulator_driver, ptr @.str, ptr @rpmh_regulator_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @pm8005_vreg_data, ptr @pm8009_vreg_data, ptr @pm8009_1_vreg_data, ptr @pm8150_vreg_data, ptr @pm8150l_vreg_data, ptr @pm8350_vreg_data, ptr @pm8350c_vreg_data, ptr @pm8450_vreg_data, ptr @pm8998_vreg_data, ptr @pmg1110_vreg_data, ptr @pmi8998_vreg_data, ptr @pm6150_vreg_data, ptr @pm6150l_vreg_data, ptr @pm6350_vreg_data, ptr @pmm8155au_vreg_data, ptr @pmx55_vreg_data, ptr @pm7325_vreg_data, ptr @pmr735a_vreg_data, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pmic4_ftsmps426, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rpmh_regulator_vrm_ops, ptr @pmic_mode_map_pmic4_smps, ptr @pmic5_hfsmps510, ptr @pmic5_hfsmps515, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @pmic5_nldo, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pmic5_pldo, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @pmic5_pldo_lv, ptr @pmic_mode_map_pmic5_smps, ptr @rpmh_regulator_vrm_drms_ops, ptr @pmic_mode_map_pmic5_ldo, ptr @pmic5_hfsmps515_1, ptr @pmic5_ftsmps510, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @pmic5_bob, ptr @rpmh_regulator_vrm_bypass_ops, ptr @pmic_mode_map_pmic5_bob, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @pmic5_ftsmps520, ptr @pmic4_hfsmps3, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @pmic4_nldo, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @pmic4_pldo, ptr @pmic4_pldo_lv, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @pmic4_lvs, ptr @.str.158, ptr @.str.159, ptr @pmic_mode_map_pmic4_ldo, ptr @rpmh_regulator_xob_ops, ptr @pmic4_bob, ptr @pmic_mode_map_pmic4_bob, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @switch.table.rpmh_regulator_pmic4_smps_of_map_mode, ptr @switch.table.rpmh_regulator_pmic4_ldo_of_map_mode, ptr @switch.table.rpmh_regulator_pmic4_bob_of_map_mode], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_match_table to i32), i32 4116, i32 5152, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_init_vreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_init_vreg._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_init_vreg._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8005_vreg_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8009_vreg_data to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8009_1_vreg_data to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8150_vreg_data to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8150l_vreg_data to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8350_vreg_data to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8350c_vreg_data to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8450_vreg_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8998_vreg_data to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmg1110_vreg_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8998_vreg_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm6150_vreg_data to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm6150l_vreg_data to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm6350_vreg_data to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmm8155au_vreg_data to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmx55_vreg_data to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm7325_vreg_data to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmr735a_vreg_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_ftsmps426 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_vrm_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mode_map_pmic4_smps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_hfsmps510 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_hfsmps515 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_nldo to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_pldo to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_pldo_lv to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mode_map_pmic5_smps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_vrm_drms_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mode_map_pmic5_ldo to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_hfsmps515_1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_ftsmps510 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_bob to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_vrm_bypass_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mode_map_pmic5_bob to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic5_ftsmps520 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_hfsmps3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_nldo to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_pldo to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_pldo_lv to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_lvs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mode_map_pmic4_ldo to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_regulator_xob_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic4_bob to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mode_map_pmic4_bob to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rpmh_regulator_pmic4_smps_of_map_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rpmh_regulator_pmic4_ldo_of_map_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rpmh_regulator_pmic4_bob_of_map_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpmh_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpmh_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpmh_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pmic_id = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmic_id) #6
  %0 = ptrtoint ptr %pmic_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pmic_id, align 4, !annotation !392
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call2 = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %pmic_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call6 = call ptr @of_get_next_available_child(ptr noundef %4, ptr noundef null) #6
  %cmp7.not40 = icmp eq ptr %call6, null
  br i1 %cmp7.not40, label %if.end4.cleanup_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %node.041 = phi ptr [ %call17, %for.inc.for.body_crit_edge ], [ %call6, %if.end4.for.body_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 276, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %node.041) #6
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %5 = ptrtoint ptr %pmic_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmic_id, align 4
  %call12 = call fastcc i32 @rpmh_regulator_init_vreg(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull %node.041, ptr noundef %6, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %node.041) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end11
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call17 = call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %node.041) #6
  %cmp7.not = icmp eq ptr %call17, null
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then14, %if.then10, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call12, %if.then14 ], [ -12, %if.then10 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmic_id) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmh_regulator_init_vreg(ptr noundef %vreg, ptr noundef %dev, ptr noundef %node, ptr noundef %pmic_id, ptr nocapture noundef readonly %pmic_rpmh_data) unnamed_addr #2 align 64 {
entry:
  %reg_config = alloca %struct.regulator_config, align 4
  %rpmh_resource_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reg_config) #6
  %0 = call ptr @memset(ptr %reg_config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rpmh_resource_name) #6
  %1 = call ptr @memset(ptr %rpmh_resource_name, i32 0, i32 20)
  %2 = ptrtoint ptr %vreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %vreg, align 4
  %3 = ptrtoint ptr %pmic_rpmh_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pmic_rpmh_data, align 4
  %tobool.not151 = icmp eq ptr %4, null
  br i1 %tobool.not151, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi ptr [ %7, %for.inc.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %rpmh_data.0152 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %pmic_rpmh_data, %entry.for.body_crit_edge ]
  %call = tail call zeroext i1 @of_node_name_eq(ptr noundef %node, ptr noundef nonnull %5) #6
  br i1 %call, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.rpmh_vreg_init_data, ptr %rpmh_data.0152, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body
  %8 = ptrtoint ptr %rpmh_data.0152 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %rpmh_data.0152, align 4
  %tobool4.not = icmp eq ptr %.pr, null
  br i1 %tobool4.not, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %node) #9
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %resource_name = getelementptr inbounds %struct.rpmh_vreg_init_data, ptr %rpmh_data.0152, i32 0, i32 1
  %9 = ptrtoint ptr %resource_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource_name, align 4
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %rpmh_resource_name, i32 noundef 20, ptr noundef %10, ptr noundef %pmic_id) #6
  %call9 = call i32 @cmd_db_read_addr(ptr noundef nonnull %rpmh_resource_name) #6
  %addr = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %node, ptr noundef nonnull %rpmh_resource_name) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %rpmh_data.0152 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rpmh_data.0152, align 4
  %rdesc = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2
  %14 = ptrtoint ptr %rdesc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %rdesc, align 4
  %supply_name = getelementptr inbounds %struct.rpmh_vreg_init_data, ptr %rpmh_data.0152, i32 0, i32 2
  %15 = ptrtoint ptr %supply_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %supply_name, align 4
  %supply_name21 = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %supply_name21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %supply_name21, align 4
  %hw_data = getelementptr inbounds %struct.rpmh_vreg_init_data, ptr %rpmh_data.0152, i32 0, i32 3
  %18 = ptrtoint ptr %hw_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_data, align 4
  %hw_data22 = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 3
  %20 = ptrtoint ptr %hw_data22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %hw_data22, align 4
  %enabled = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 5
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -22, ptr %enabled, align 4
  %voltage_selector = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 7
  %22 = ptrtoint ptr %voltage_selector to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -131, ptr %voltage_selector, align 4
  %mode = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 8
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mode, align 4
  %24 = load ptr, ptr %hw_data, align 4
  %n_voltages = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %if.end17.if.end33_crit_edge, label %if.then25

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %voltage_range = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %24, i32 0, i32 2
  %linear_ranges = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 20
  %27 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %voltage_range, ptr %linear_ranges, align 4
  %n_linear_ranges = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 22
  %28 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %n_linear_ranges, align 4
  %29 = ptrtoint ptr %hw_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_data, align 4
  %n_voltages30 = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %n_voltages30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_voltages30, align 4
  %n_voltages32 = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 8
  %33 = ptrtoint ptr %n_voltages32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %n_voltages32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then25, %if.end17.if.end33_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %always_wait_for_ack = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %34 = ptrtoint ptr %always_wait_for_ack to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool, ptr %always_wait_for_ack, align 4
  %owner = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 13
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 12
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %type, align 4
  %37 = ptrtoint ptr %hw_data22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_data22, align 4
  %ops = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %ops39 = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 10
  %41 = ptrtoint ptr %ops39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ops39, align 4
  %of_map_mode = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %38, i32 0, i32 6
  %42 = ptrtoint ptr %of_map_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_map_mode, align 4
  %of_map_mode42 = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 60
  %44 = ptrtoint ptr %of_map_mode42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %of_map_mode42, align 4
  %call44 = call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %node, ptr noundef %rdesc) #6
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end33.cleanup_crit_edge, label %if.end47

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %45 = ptrtoint ptr %hw_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_data, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp = icmp eq i32 %48, 1
  br i1 %cmp, label %land.lhs.true, label %if.end47.if.end61_crit_edge

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end47
  %min_uV = getelementptr inbounds %struct.regulator_init_data, ptr %call44, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %min_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool49.not = icmp eq i32 %50, 0
  br i1 %tobool49.not, label %land.lhs.true.if.end61_crit_edge, label %land.lhs.true50

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true50:                                  ; preds = %land.lhs.true
  %max_uV = getelementptr inbounds %struct.regulator_init_data, ptr %call44, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp54 = icmp eq i32 %50, %52
  br i1 %cmp54, label %if.then55, label %land.lhs.true50.if.end61_crit_edge

land.lhs.true50.if.end61_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then55:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  %fixed_uV = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 17
  %53 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %fixed_uV, align 4
  %n_voltages60 = getelementptr inbounds %struct.rpmh_vreg, ptr %vreg, i32 0, i32 2, i32 8
  %54 = ptrtoint ptr %n_voltages60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %n_voltages60, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %land.lhs.true50.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %if.end47.if.end61_crit_edge
  %55 = ptrtoint ptr %reg_config to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %reg_config, align 4
  %init_data63 = getelementptr inbounds %struct.regulator_config, ptr %reg_config, i32 0, i32 1
  %56 = ptrtoint ptr %init_data63 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call44, ptr %init_data63, align 4
  %of_node = getelementptr inbounds %struct.regulator_config, ptr %reg_config, i32 0, i32 3
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %node, ptr %of_node, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %reg_config, i32 0, i32 2
  %58 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %vreg, ptr %driver_data, align 4
  %call65 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %rdesc, ptr noundef nonnull %reg_config) #6
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %do.body73

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call65 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %node, i32 noundef %59) #9
  br label %cleanup

do.body73:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmh_regulator_init_vreg.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rpmh_regulator_init_vreg, %cleanup)) #6
          to label %if.then80 [label %cleanup], !srcloc !393

if.then80:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rpmh_regulator_init_vreg.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %node, ptr noundef nonnull %rpmh_resource_name, i32 noundef %61) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body73, %if.then67, %if.end33.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ %59, %if.then67 ], [ -19, %do.end15 ], [ -22, %do.end ], [ -12, %if.end33.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %do.body73 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rpmh_resource_name) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reg_config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmd_db_read_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rpmh_regulator_pmic4_smps_of_map_mode(i32 noundef %rpmh_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rpmh_mode)
  %0 = icmp ult i32 %rpmh_mode, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rpmh_regulator_pmic4_smps_of_map_mode, i32 0, i32 %rpmh_mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %mode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %cmd.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %enabled = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %1)
  %cmp = icmp eq i32 %1, -22
  %voltage_selector = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %voltage_selector to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %selector, ptr %voltage_selector, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %voltage_selector to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %voltage_selector, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %selector)
  %cmp2 = icmp ult i32 %4, %selector
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #6
  %5 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 2
  %addr1.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr1.i, align 4
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cmd.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %6, align 4
  %call2.i = tail call i32 @regulator_list_voltage_linear_range(ptr noundef %rdev, i32 noundef %selector) #6
  %sub.i = add i32 %call2.i, 999
  %div.i = sdiv i32 %sub.i, 1000
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.i, ptr %5, align 4
  br i1 %cmp2, label %if.end.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %always_wait_for_ack.i.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %always_wait_for_ack.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %always_wait_for_ack.i.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call.i.i = call i32 @rpmh_write(ptr noundef %15, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  br label %rpmh_regulator_send_request.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call3.i.i = call i32 @rpmh_write_async(ptr noundef %17, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  br label %rpmh_regulator_send_request.exit.i

rpmh_regulator_send_request.exit.i:               ; preds = %if.else.i.i, %if.then.i.i
  %ret.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call3.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool6.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool6.not.i, label %if.then.i, label %rpmh_regulator_send_request.exit.i._rpmh_regulator_vrm_set_voltage_sel.exit_crit_edge

rpmh_regulator_send_request.exit.i._rpmh_regulator_vrm_set_voltage_sel.exit_crit_edge: ; preds = %rpmh_regulator_send_request.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rpmh_regulator_vrm_set_voltage_sel.exit

if.then.i:                                        ; preds = %rpmh_regulator_send_request.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %voltage_selector.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %voltage_selector.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %selector, ptr %voltage_selector.i, align 4
  br label %_rpmh_regulator_vrm_set_voltage_sel.exit

_rpmh_regulator_vrm_set_voltage_sel.exit:         ; preds = %if.then.i, %rpmh_regulator_send_request.exit.i._rpmh_regulator_vrm_set_voltage_sel.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  br label %cleanup

cleanup:                                          ; preds = %_rpmh_regulator_vrm_set_voltage_sel.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0.i.i, %_rpmh_regulator_vrm_set_voltage_sel.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %voltage_selector = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %voltage_selector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %voltage_selector, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rpmh_regulator_set_enable_state(ptr noundef %rdev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rpmh_regulator_set_enable_state(ptr noundef %rdev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %enabled = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  %cmd.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %mode1 = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bypassed = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %bypassed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bypassed, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #6
  %4 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 2
  %addr1.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 8
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %cmd.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode)
  %cmp.i = icmp ugt i32 %mode, 8
  br i1 %cmp.i, label %if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge, label %if.end.i

if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmh_regulator_vrm_set_mode_bypass.exit.thread

if.end.i:                                         ; preds = %if.end
  %hw_data.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_data.i, align 4
  %pmic_mode_map.i = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pmic_mode_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmic_mode_map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 %mode
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.i = icmp slt i32 %15, 0
  br i1 %cmp2.i, label %if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge, label %rpmh_regulator_vrm_set_mode_bypass.exit

if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmh_regulator_vrm_set_mode_bypass.exit.thread

rpmh_regulator_vrm_set_mode_bypass.exit.thread:   ; preds = %if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge, %if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %15, %if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge ], [ -22, %if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  br label %cleanup

rpmh_regulator_vrm_set_mode_bypass.exit:          ; preds = %if.end.i
  %..i = select i1 %tobool.not, i32 %15, i32 0
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %..i, ptr %4, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @rpmh_write(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.then4, label %rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge

rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge: ; preds = %rpmh_regulator_vrm_set_mode_bypass.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %rpmh_regulator_vrm_set_mode_bypass.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mode, ptr %mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge, %rpmh_regulator_vrm_set_mode_bypass.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call.i.i, %rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %rpmh_regulator_vrm_set_mode_bypass.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %mode = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write_async(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpmh_regulator_set_enable_state(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca %struct.tcs_cmd, align 4
  %cmd = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd, i32 0, i32 2
  %addr1 = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr1, align 4
  %add = add i32 %3, 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %cmd, align 4
  %conv = zext i1 %enable to i32
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %enabled = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %8)
  %cmp = icmp eq i32 %8, -22
  br i1 %cmp, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %voltage_selector = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %voltage_selector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %voltage_selector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131, i32 %10)
  %cmp3.not = icmp eq i32 %10, -131
  br i1 %cmp3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #6
  %11 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 2
  %addr1.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr1.i, align 4
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cmd.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %12, align 4
  %call2.i = tail call i32 @regulator_list_voltage_linear_range(ptr noundef %rdev, i32 noundef %10) #6
  %sub.i = add i32 %call2.i, 999
  %div.i = sdiv i32 %sub.i, 1000
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %11, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i.i = call i32 @rpmh_write(ptr noundef %19, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %_rpmh_regulator_vrm_set_voltage_sel.exit.thread, label %_rpmh_regulator_vrm_set_voltage_sel.exit

_rpmh_regulator_vrm_set_voltage_sel.exit.thread:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %voltage_selector.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %voltage_selector.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %10, ptr %voltage_selector.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  br label %if.end10

_rpmh_regulator_vrm_set_voltage_sel.exit:         ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7 = icmp slt i32 %call.i.i, 0
  br i1 %cmp7, label %_rpmh_regulator_vrm_set_voltage_sel.exit.cleanup_crit_edge, label %_rpmh_regulator_vrm_set_voltage_sel.exit.if.end10_crit_edge

_rpmh_regulator_vrm_set_voltage_sel.exit.if.end10_crit_edge: ; preds = %_rpmh_regulator_vrm_set_voltage_sel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

_rpmh_regulator_vrm_set_voltage_sel.exit.cleanup_crit_edge: ; preds = %_rpmh_regulator_vrm_set_voltage_sel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %_rpmh_regulator_vrm_set_voltage_sel.exit.if.end10_crit_edge, %_rpmh_regulator_vrm_set_voltage_sel.exit.thread, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  br i1 %enable, label %if.end10.if.then.i33_crit_edge, label %lor.lhs.false.i

if.end10.if.then.i33_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i33

lor.lhs.false.i:                                  ; preds = %if.end10
  %always_wait_for_ack.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %always_wait_for_ack.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %always_wait_for_ack.i, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i = icmp eq i8 %22, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i33_crit_edge

lor.lhs.false.i.if.then.i33_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i33

if.then.i33:                                      ; preds = %lor.lhs.false.i.if.then.i33_crit_edge, %if.end10.if.then.i33_crit_edge
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %call.i32 = call i32 @rpmh_write(ptr noundef %24, i32 noundef 2, ptr noundef nonnull %cmd, i32 noundef 1) #6
  br label %rpmh_regulator_send_request.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %call3.i = call i32 @rpmh_write_async(ptr noundef %26, i32 noundef 2, ptr noundef nonnull %cmd, i32 noundef 1) #6
  br label %rpmh_regulator_send_request.exit

rpmh_regulator_send_request.exit:                 ; preds = %if.else.i, %if.then.i33
  %ret.0.i = phi i32 [ %call.i32, %if.then.i33 ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool13.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool13.not, label %if.then14, label %rpmh_regulator_send_request.exit.cleanup_crit_edge

rpmh_regulator_send_request.exit.cleanup_crit_edge: ; preds = %rpmh_regulator_send_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %rpmh_regulator_send_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %rpmh_regulator_send_request.exit.cleanup_crit_edge, %_rpmh_regulator_vrm_set_voltage_sel.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %_rpmh_regulator_vrm_set_voltage_sel.exit.cleanup_crit_edge ], [ 0, %if.then14 ], [ %ret.0.i, %rpmh_regulator_send_request.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rpmh_regulator_pmic4_ldo_of_map_mode(i32 noundef %rpmh_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rpmh_mode)
  %0 = icmp ult i32 %rpmh_mode, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rpmh_regulator_pmic4_ldo_of_map_mode, i32 0, i32 %rpmh_mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_set_load(ptr noundef %rdev, i32 noundef %load_uA) #2 align 64 {
entry:
  %cmd.i.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %hw_data = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %hw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_data, align 4
  %hpm_min_load_uA = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hpm_min_load_uA to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpm_min_load_uA, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %load_uA)
  %cmp.not = icmp sgt i32 %3, %load_uA
  %. = select i1 %cmp.not, i32 4, i32 2
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %mode1.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %.)
  %cmp.i = icmp eq i32 %5, %.
  br i1 %cmp.i, label %entry.rpmh_regulator_vrm_set_mode.exit_crit_edge, label %if.end.i

entry.rpmh_regulator_vrm_set_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmh_regulator_vrm_set_mode.exit

if.end.i:                                         ; preds = %entry
  %bypassed.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %bypassed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypassed.i, align 4, !range !394
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i.i) #6
  %8 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i.i, i32 0, i32 2
  %addr1.i.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr1.i.i, align 4
  %add.i.i = add i32 %10, 8
  %11 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i.i, ptr %cmd.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %8, align 4
  %hw_data.i.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %hw_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_data.i.i, align 4
  %pmic_mode_map.i.i = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %pmic_mode_map.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pmic_mode_map.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %16, i32 %.
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2.i.i = icmp slt i32 %18, 0
  br i1 %cmp2.i.i, label %rpmh_regulator_vrm_set_mode_bypass.exit.thread.i, label %rpmh_regulator_vrm_set_mode_bypass.exit.i

rpmh_regulator_vrm_set_mode_bypass.exit.thread.i: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i.i) #6
  br label %rpmh_regulator_vrm_set_mode.exit

rpmh_regulator_vrm_set_mode_bypass.exit.i:        ; preds = %if.end.i
  %19 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %..i.i = select i1 %tobool.not.i, i32 %18, i32 0
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %..i.i, ptr %19, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %call.i.i.i = call i32 @rpmh_write(ptr noundef %22, i32 noundef 2, ptr noundef nonnull %cmd.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %rpmh_regulator_vrm_set_mode_bypass.exit.i.rpmh_regulator_vrm_set_mode.exit_crit_edge

rpmh_regulator_vrm_set_mode_bypass.exit.i.rpmh_regulator_vrm_set_mode.exit_crit_edge: ; preds = %rpmh_regulator_vrm_set_mode_bypass.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmh_regulator_vrm_set_mode.exit

if.then4.i:                                       ; preds = %rpmh_regulator_vrm_set_mode_bypass.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %mode1.i, align 4
  br label %rpmh_regulator_vrm_set_mode.exit

rpmh_regulator_vrm_set_mode.exit:                 ; preds = %if.then4.i, %rpmh_regulator_vrm_set_mode_bypass.exit.i.rpmh_regulator_vrm_set_mode.exit_crit_edge, %rpmh_regulator_vrm_set_mode_bypass.exit.thread.i, %entry.rpmh_regulator_vrm_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.rpmh_regulator_vrm_set_mode.exit_crit_edge ], [ 0, %if.then4.i ], [ %call.i.i.i, %rpmh_regulator_vrm_set_mode_bypass.exit.i.rpmh_regulator_vrm_set_mode.exit_crit_edge ], [ %18, %rpmh_regulator_vrm_set_mode_bypass.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rpmh_regulator_pmic4_bob_of_map_mode(i32 noundef %rpmh_mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %rpmh_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rpmh_regulator_pmic4_bob_of_map_mode, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  ret i32 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_set_bypass(ptr noundef %rdev, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %cmd.i = alloca %struct.tcs_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %bypassed = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %bypassed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bypassed, align 4, !range !394
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i) #6
  %4 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tcs_cmd, ptr %cmd.i, i32 0, i32 2
  %addr1.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %7, 8
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %cmd.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i = icmp ugt i32 %3, 8
  br i1 %cmp.i, label %if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge, label %if.end.i

if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmh_regulator_vrm_set_mode_bypass.exit.thread

if.end.i:                                         ; preds = %if.end
  %hw_data.i = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %hw_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_data.i, align 4
  %pmic_mode_map.i = getelementptr inbounds %struct.rpmh_vreg_hw_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pmic_mode_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmic_mode_map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 %3
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.i = icmp slt i32 %15, 0
  br i1 %cmp2.i, label %if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge, label %rpmh_regulator_vrm_set_mode_bypass.exit

if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmh_regulator_vrm_set_mode_bypass.exit.thread

rpmh_regulator_vrm_set_mode_bypass.exit.thread:   ; preds = %if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge, %if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %15, %if.end.i.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge ], [ -22, %if.end.rpmh_regulator_vrm_set_mode_bypass.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  br label %cleanup

rpmh_regulator_vrm_set_mode_bypass.exit:          ; preds = %if.end.i
  %..i = select i1 %enable, i32 0, i32 %15
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %..i, ptr %4, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call, align 4
  %call.i.i = call i32 @rpmh_write(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %cmd.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %if.then7, label %rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge

rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge: ; preds = %rpmh_regulator_vrm_set_mode_bypass.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %rpmh_regulator_vrm_set_mode_bypass.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %bypassed to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %bypassed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge, %rpmh_regulator_vrm_set_mode_bypass.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ %call.i.i, %rpmh_regulator_vrm_set_mode_bypass.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %rpmh_regulator_vrm_set_mode_bypass.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_regulator_vrm_get_bypass(ptr noundef %rdev, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %bypassed = getelementptr inbounds %struct.rpmh_vreg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %bypassed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bypassed, align 4, !range !394
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %enable, align 1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !146, !148, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !202, !204, !206, !208, !210, !212, !213, !214, !216, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !249, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !273, !275, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !295, !296, !298, !299, !301, !302, !304, !305, !306, !308, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !{ptr @__initcall__kmod_qcom_rpmh_regulator__289_1298_rpmh_regulator_driver_init6, !1, !"__initcall__kmod_qcom_rpmh_regulator__289_1298_rpmh_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1298, i32 1}
!2 = !{ptr @__exitcall_rpmh_regulator_driver_exit, !1, !"__exitcall_rpmh_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1300, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1301, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1293, i32 11}
!10 = !{ptr @rpmh_regulator_driver, !11, !"rpmh_regulator_driver", i1 false, i1 false}
!11 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1291, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1182, i32 46}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1184, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rpmh_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rpmh_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 431, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rpmh_regulator_init_vreg._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rpmh_regulator_init_vreg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 440, i32 3}
!29 = !{ptr @rpmh_regulator_init_vreg._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rpmh_regulator_init_vreg._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 460, i32 7}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 486, i32 3}
!35 = !{ptr @rpmh_regulator_init_vreg._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rpmh_regulator_init_vreg._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 491, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rpmh_regulator_init_vreg.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!41 = !{ptr @rpmh_regulator_match_table, !42, !"rpmh_regulator_match_table", i1 false, i1 false}
!42 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1206, i32 49}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 828, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 829, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 830, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 831, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pm8005_vreg_data, !60, !"pm8005_vreg_data", i1 false, i1 false}
!60 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 827, i32 41}
!61 = !{ptr @pmic4_ftsmps426, !62, !"pmic4_ftsmps426", i1 false, i1 false}
!62 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 654, i32 39}
!63 = !{ptr @rpmh_regulator_vrm_ops, !64, !"rpmh_regulator_vrm_ops", i1 false, i1 false}
!64 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 358, i32 35}
!65 = !{ptr @pmic_mode_map_pmic4_smps, !66, !"pmic_mode_map_pmic4_smps", i1 false, i1 false}
!66 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 535, i32 18}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 994, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 995, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 996, i32 2}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 997, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 998, i32 2}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 999, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1000, i32 2}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pm8009_vreg_data, !95, !"pm8009_vreg_data", i1 false, i1 false}
!95 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 991, i32 41}
!96 = !{ptr @pmic5_hfsmps510, !97, !"pmic5_hfsmps510", i1 false, i1 false}
!97 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 708, i32 39}
!98 = !{ptr @pmic_mode_map_pmic5_smps, !99, !"pmic_mode_map_pmic5_smps", i1 false, i1 false}
!99 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 543, i32 18}
!100 = !{ptr @pmic5_hfsmps515, !101, !"pmic5_hfsmps515", i1 false, i1 false}
!101 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 735, i32 39}
!102 = !{ptr @pmic5_nldo, !103, !"pmic5_nldo", i1 false, i1 false}
!103 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 698, i32 39}
!104 = !{ptr @rpmh_regulator_vrm_drms_ops, !105, !"rpmh_regulator_vrm_drms_ops", i1 false, i1 false}
!105 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 369, i32 35}
!106 = !{ptr @pmic_mode_map_pmic5_ldo, !107, !"pmic_mode_map_pmic5_ldo", i1 false, i1 false}
!107 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 505, i32 18}
!108 = !{ptr @pmic5_pldo, !109, !"pmic5_pldo", i1 false, i1 false}
!109 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 678, i32 39}
!110 = !{ptr @pmic5_pldo_lv, !111, !"pmic5_pldo_lv", i1 false, i1 false}
!111 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 688, i32 39}
!112 = !{ptr @pm8009_1_vreg_data, !113, !"pm8009_1_vreg_data", i1 false, i1 false}
!113 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1004, i32 41}
!114 = !{ptr @pmic5_hfsmps515_1, !115, !"pmic5_hfsmps515_1", i1 false, i1 false}
!115 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 744, i32 39}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 840, i32 2}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 841, i32 2}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 842, i32 2}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 843, i32 2}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 844, i32 2}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 845, i32 2}
!138 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 846, i32 2}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 847, i32 2}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 848, i32 2}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 851, i32 2}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 852, i32 2}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 853, i32 2}
!152 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 854, i32 2}
!155 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 855, i32 2}
!158 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 856, i32 2}
!161 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 857, i32 2}
!164 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 858, i32 2}
!167 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 859, i32 2}
!171 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 860, i32 2}
!174 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 861, i32 2}
!177 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 862, i32 2}
!180 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 863, i32 2}
!183 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @pm8150_vreg_data, !185, !"pm8150_vreg_data", i1 false, i1 false}
!185 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 835, i32 41}
!186 = !{ptr @pmic5_ftsmps510, !187, !"pmic5_ftsmps510", i1 false, i1 false}
!187 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 717, i32 39}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 876, i32 2}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 877, i32 2}
!192 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 879, i32 2}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 882, i32 2}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 884, i32 2}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 887, i32 2}
!200 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @pm8150l_vreg_data, !203, !"pm8150l_vreg_data", i1 false, i1 false}
!203 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 867, i32 41}
!204 = !{ptr @pmic5_bob, !205, !"pmic5_bob", i1 false, i1 false}
!205 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 753, i32 39}
!206 = !{ptr @rpmh_regulator_vrm_bypass_ops, !207, !"rpmh_regulator_vrm_bypass_ops", i1 false, i1 false}
!207 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 381, i32 35}
!208 = !{ptr @pmic_mode_map_pmic5_bob, !209, !"pmic_mode_map_pmic5_bob", i1 false, i1 false}
!209 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 585, i32 18}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 934, i32 2}
!212 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 935, i32 2}
!216 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 936, i32 2}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 937, i32 2}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 938, i32 2}
!224 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 941, i32 2}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 943, i32 2}
!228 = !{ptr @pm8350_vreg_data, !229, !"pm8350_vreg_data", i1 false, i1 false}
!229 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 923, i32 41}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 960, i32 2}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 961, i32 2}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 962, i32 2}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 965, i32 2}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 969, i32 2}
!240 = !{ptr @pm8350c_vreg_data, !241, !"pm8350c_vreg_data", i1 false, i1 false}
!241 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 949, i32 41}
!242 = !{ptr @pm8450_vreg_data, !243, !"pm8450_vreg_data", i1 false, i1 false}
!243 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 977, i32 41}
!244 = !{ptr @pmic5_ftsmps520, !245, !"pmic5_ftsmps520", i1 false, i1 false}
!245 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 726, i32 39}
!246 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 783, i32 2}
!248 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.122, !247, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.123, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 784, i32 2}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 785, i32 2}
!254 = !{ptr @.str.125, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 786, i32 2}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 787, i32 2}
!258 = !{ptr @.str.127, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 789, i32 2}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 792, i32 2}
!262 = !{ptr @.str.129, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 793, i32 2}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 796, i32 2}
!266 = !{ptr @.str.131, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 799, i32 2}
!268 = !{ptr @.str.132, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 801, i32 2}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 802, i32 2}
!272 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 803, i32 2}
!275 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 804, i32 2}
!279 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 805, i32 2}
!282 = !{ptr @.str.141, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.142, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 806, i32 2}
!285 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 807, i32 2}
!288 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 808, i32 2}
!291 = !{ptr @.str.147, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 809, i32 2}
!294 = !{ptr @.str.149, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.150, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.151, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 810, i32 2}
!298 = !{ptr @.str.152, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 811, i32 2}
!301 = !{ptr @.str.154, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.155, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 812, i32 2}
!304 = !{ptr @.str.156, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.157, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.158, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 813, i32 2}
!308 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @pm8998_vreg_data, !310, !"pm8998_vreg_data", i1 false, i1 false}
!310 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 770, i32 41}
!311 = !{ptr @pmic4_hfsmps3, !312, !"pmic4_hfsmps3", i1 false, i1 false}
!312 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 645, i32 39}
!313 = !{ptr @pmic4_nldo, !314, !"pmic4_nldo", i1 false, i1 false}
!314 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 635, i32 39}
!315 = !{ptr @pmic_mode_map_pmic4_ldo, !316, !"pmic_mode_map_pmic4_ldo", i1 false, i1 false}
!316 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 497, i32 18}
!317 = !{ptr @pmic4_pldo, !318, !"pmic4_pldo", i1 false, i1 false}
!318 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 615, i32 39}
!319 = !{ptr @pmic4_pldo_lv, !320, !"pmic4_pldo_lv", i1 false, i1 false}
!320 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 625, i32 39}
!321 = !{ptr @pmic4_lvs, !322, !"pmic4_lvs", i1 false, i1 false}
!322 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 672, i32 39}
!323 = !{ptr @rpmh_regulator_xob_ops, !324, !"rpmh_regulator_xob_ops", i1 false, i1 false}
!324 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 394, i32 35}
!325 = !{ptr @pmg1110_vreg_data, !326, !"pmg1110_vreg_data", i1 false, i1 false}
!326 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 817, i32 41}
!327 = !{ptr @pmi8998_vreg_data, !328, !"pmi8998_vreg_data", i1 false, i1 false}
!328 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 822, i32 41}
!329 = !{ptr @pmic4_bob, !330, !"pmic4_bob", i1 false, i1 false}
!330 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 663, i32 39}
!331 = !{ptr @pmic_mode_map_pmic4_bob, !332, !"pmic_mode_map_pmic4_bob", i1 false, i1 false}
!332 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 577, i32 18}
!333 = !{ptr @.str.160, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1026, i32 2}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1027, i32 2}
!337 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1032, i32 2}
!339 = !{ptr @.str.163, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1033, i32 2}
!341 = !{ptr @pm6150_vreg_data, !342, !"pm6150_vreg_data", i1 false, i1 false}
!342 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1017, i32 41}
!343 = !{ptr @pm6150l_vreg_data, !344, !"pm6150l_vreg_data", i1 false, i1 false}
!344 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1045, i32 41}
!345 = !{ptr @pm6350_vreg_data, !346, !"pm6350_vreg_data", i1 false, i1 false}
!346 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1069, i32 41}
!347 = !{ptr @pmm8155au_vreg_data, !348, !"pmm8155au_vreg_data", i1 false, i1 false}
!348 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 891, i32 41}
!349 = !{ptr @.str.164, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1105, i32 2}
!351 = !{ptr @.str.165, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1107, i32 2}
!353 = !{ptr @.str.166, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1108, i32 2}
!355 = !{ptr @.str.167, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1111, i32 2}
!357 = !{ptr @.str.168, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1114, i32 2}
!359 = !{ptr @.str.169, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1118, i32 2}
!361 = !{ptr @.str.170, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1119, i32 2}
!363 = !{ptr @.str.171, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1120, i32 2}
!365 = !{ptr @pmx55_vreg_data, !366, !"pmx55_vreg_data", i1 false, i1 false}
!366 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1097, i32 41}
!367 = !{ptr @.str.172, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1133, i32 2}
!369 = !{ptr @.str.173, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1137, i32 2}
!371 = !{ptr @.str.174, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1143, i32 2}
!373 = !{ptr @.str.175, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1145, i32 2}
!375 = !{ptr @.str.176, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1146, i32 2}
!377 = !{ptr @pm7325_vreg_data, !378, !"pm7325_vreg_data", i1 false, i1 false}
!378 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1124, i32 41}
!379 = !{ptr @.str.177, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1165, i32 2}
!381 = !{ptr @pmr735a_vreg_data, !382, !"pmr735a_vreg_data", i1 false, i1 false}
!382 = !{!"../drivers/regulator/qcom-rpmh-regulator.c", i32 1155, i32 41}
!383 = !{i32 1, !"wchar_size", i32 2}
!384 = !{i32 1, !"min_enum_size", i32 4}
!385 = !{i32 8, !"branch-target-enforcement", i32 0}
!386 = !{i32 8, !"sign-return-address", i32 0}
!387 = !{i32 8, !"sign-return-address-all", i32 0}
!388 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!392 = !{!"auto-init"}
!393 = !{i64 2148737572, i64 2148737577, i64 2148737590, i64 2148737634, i64 2148737668, i64 2148737689}
!394 = !{i8 0, i8 2}
