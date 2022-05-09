; ModuleID = '/llk/IR_all_yes/drivers/regulator/qcom-labibb-regulator.c_pt.bc'
source_filename = "../drivers/regulator/qcom-labibb-regulator.c"
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
%struct.labibb_regulator_data = type { ptr, i8, i16, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.labibb_regulator = type { %struct.regulator_desc, ptr, ptr, ptr, %struct.labibb_current_limits, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.labibb_current_limits = type { i32, i32, i8 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_qcom_labibb_regulator__288_900_qcom_labibb_regulator_driver_init6 = internal global ptr @qcom_labibb_regulator_driver_init, section ".initcall6.init", align 4
@qcom_labibb_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_labibb_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_labibb_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_labibb_regulator_driver_exit = internal global ptr @qcom_labibb_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [57 x i8] c"qcom_labibb_regulator.description=Qualcomm labibb driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [71 x i8] c"qcom_labibb_regulator.author=Nisha Kumari <nishakumari@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [68 x i8] c"qcom_labibb_regulator.author=Sumit Semwal <sumit.semwal@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [67 x i8] c"qcom_labibb_regulator.file=drivers/regulator/qcom-labibb-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [37 x i8] c"qcom_labibb_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom-lab-ibb-regulator\00", [41 x i8] zeroinitializer }, align 32
@qcom_labibb_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8998-lab-ibb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pmi8998_labibb_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't get parent's regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_labibb_regulator_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/regulator/qcom-labibb-regulator.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe._entry_ptr = internal global ptr @qcom_labibb_regulator_probe._entry, section ".printk_index", align 4
@qcom_labibb_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Peripheral type read failed ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe._entry_ptr.8 = internal global ptr @qcom_labibb_regulator_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s-short-circuit\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sc-err\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Short-circuit irq not found.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ocp\00", [28 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&vreg->sc_recovery_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&vreg->sc_recovery_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&vreg->ocp_recovery_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&vreg->ocp_recovery_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qcom_labibb: error registering %s : %d\0A\00", [56 x i8] zeroinitializer }, align 32
@qcom_labibb_regulator_probe._entry_ptr.22 = internal global ptr @qcom_labibb_regulator_probe._entry.20, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@qcom_labibb_ocp_recovery_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LABIBB: CRITICAL: Disabling regulator\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qcom_labibb_ocp_recovery_worker\00", [32 x i8] zeroinitializer }, align 32
@qcom_labibb_ocp_recovery_worker._entry_ptr = internal global ptr @qcom_labibb_ocp_recovery_worker._entry, section ".printk_index", align 4
@qcom_labibb_ocp_recovery_worker._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot enable OCP IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_labibb_ocp_recovery_worker._entry_ptr.27 = internal global ptr @qcom_labibb_ocp_recovery_worker._entry.25, section ".printk_index", align 4
@qcom_labibb_sc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 541, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Short-Circuit interrupt fired!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_labibb_sc_isr\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_labibb_sc_isr._entry_ptr = internal global ptr @qcom_labibb_sc_isr._entry, section ".printk_index", align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@pmi8998_labibb_data = internal constant { [3 x %struct.labibb_regulator_data], [60 x i8] } { [3 x %struct.labibb_regulator_data] [%struct.labibb_regulator_data { ptr @.str.31, i8 36, i16 -8704, ptr @pmi8998_lab_desc }, %struct.labibb_regulator_data { ptr @.str.32, i8 32, i16 -9216, ptr @pmi8998_ibb_desc }, %struct.labibb_regulator_data zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lab\00", [28 x i8] zeroinitializer }, align 32
@pmi8998_lab_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr @qcom_labibb_of_parse_cb, i32 0, i8 0, i32 16, i32 8, ptr @qcom_labibb_ops, i32 0, i32 0, ptr null, i32 4600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56897, i32 15, i32 0, i32 56907, i32 7, i32 56897, i32 128, i32 56902, i32 128, i32 128, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56927, i32 0, i32 0, i32 56903, i32 3, i32 1, i32 0, i32 0, ptr null, i32 0, i32 2000, i32 1000, i32 1000, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ibb\00", [28 x i8] zeroinitializer }, align 32
@pmi8998_ibb_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr null, ptr null, ptr null, i8 0, ptr null, ptr @qcom_labibb_of_parse_cb, i32 0, i8 0, i32 64, i32 32, ptr @qcom_labibb_ops, i32 0, i32 0, ptr null, i32 1400000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56385, i32 63, i32 0, i32 56395, i32 31, i32 56385, i32 128, i32 56390, i32 192, i32 128, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, i32 4, i32 56408, i32 56415, i32 0, i32 0, i32 56391, i32 129, i32 129, i32 0, i32 0, ptr null, i32 0, i32 10000, i32 1000, i32 1000, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_labibb_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @qcom_labibb_set_current_limit, ptr @qcom_labibb_get_current_limit, ptr null, ptr @qcom_labibb_set_ocp, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_labibb_set_soft_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_pull_down_regmap }, [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qcom,discharge-resistor-kohms\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,soft-start-us\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s-over-current\00", [16 x i8] zeroinitializer }, align 32
@qcom_labibb_ocp_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 289, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Over-Current interrupt fired!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_labibb_ocp_isr\00", [44 x i8] zeroinitializer }, align 32
@qcom_labibb_ocp_isr._entry_ptr = internal global ptr @qcom_labibb_ocp_isr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 36]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 16, i64 32, i64 64, i64 300]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 200, i64 400, i64 600, i64 800]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 36]
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"qcom_labibb_regulator_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 893, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 895, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"qcom_labibb_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 755, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 775, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 793, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 809, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 820, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 826, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 831, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 840, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 844, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 876, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 200, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 222, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 541, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"pmi8998_labibb_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 749, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 750, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"pmi8998_lab_desc\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 691, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 751, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"pmi8998_ibb_desc\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 718, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"qcom_labibb_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 675, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 648, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 660, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 329, i32 55 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [45 x i8] c"../drivers/regulator/qcom-labibb-regulator.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 289, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_qcom_labibb_regulator_driver_exit, ptr @__initcall__kmod_qcom_labibb_regulator__288_900_qcom_labibb_regulator_driver_init6, ptr @qcom_labibb_ocp_isr._entry, ptr @qcom_labibb_ocp_isr._entry_ptr, ptr @qcom_labibb_ocp_recovery_worker._entry, ptr @qcom_labibb_ocp_recovery_worker._entry.25, ptr @qcom_labibb_ocp_recovery_worker._entry_ptr, ptr @qcom_labibb_ocp_recovery_worker._entry_ptr.27, ptr @qcom_labibb_regulator_driver_exit, ptr @qcom_labibb_regulator_probe._entry, ptr @qcom_labibb_regulator_probe._entry.20, ptr @qcom_labibb_regulator_probe._entry.6, ptr @qcom_labibb_regulator_probe._entry_ptr, ptr @qcom_labibb_regulator_probe._entry_ptr.22, ptr @qcom_labibb_regulator_probe._entry_ptr.8, ptr @qcom_labibb_sc_isr._entry, ptr @qcom_labibb_sc_isr._entry_ptr, ptr @qcom_labibb_regulator_driver, ptr @.str, ptr @qcom_labibb_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @qcom_labibb_regulator_probe.__key, ptr @.str.13, ptr @qcom_labibb_regulator_probe.__key.14, ptr @.str.15, ptr @qcom_labibb_regulator_probe.__key.16, ptr @.str.17, ptr @qcom_labibb_regulator_probe.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pmi8998_labibb_data, ptr @.str.31, ptr @pmi8998_lab_desc, ptr @.str.32, ptr @pmi8998_ibb_desc, ptr @qcom_labibb_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_regulator_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_ocp_recovery_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_ocp_recovery_worker._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_sc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8998_labibb_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8998_lab_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmi8998_ibb_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_labibb_ocp_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_labibb_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_labibb_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_labibb_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg = alloca %struct.regulator_config, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #5
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #5
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %type, align 4, !annotation !103
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup208

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @qcom_labibb_match, ptr noundef %dev1) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup208_crit_edge, label %if.end8

if.end.cleanup208_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

if.end8:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool9.not311 = icmp eq ptr %7, null
  br i1 %tobool9.not311, label %if.end8.cleanup208_crit_edge, label %for.body.lr.ph

if.end8.cleanup208_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

for.body.lr.ph:                                   ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %regmap187 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %reg_data.0312 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %base = getelementptr inbounds %struct.labibb_regulator_data, ptr %reg_data.0312, i32 0, i32 2
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %base, align 2
  %conv = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv, 4
  %call10 = call i32 @regmap_read(ptr noundef nonnull %call, i32 noundef %add, ptr noundef nonnull %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end15, label %if.end16

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call10) #8
  br label %cleanup208

if.end16:                                         ; preds = %for.body
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = and i32 %11, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %.not = icmp eq i32 %12, 32
  br i1 %.not, label %lor.lhs.false.critedge, label %do.end32, !prof !104

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 799, i32 noundef 9, ptr noundef null) #5
  br label %cleanup208

lor.lhs.false.critedge:                           ; preds = %if.end16
  %type47 = getelementptr inbounds %struct.labibb_regulator_data, ptr %reg_data.0312, i32 0, i32 1
  %13 = ptrtoint ptr %type47 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type47, align 4
  %conv48 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv48)
  %cmp49.not = icmp eq i32 %11, %conv48
  br i1 %cmp49.not, label %if.end82, label %do.end66, !prof !104

do.end66:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 800, i32 noundef 9, ptr noundef null) #5
  br label %cleanup208

if.end82:                                         ; preds = %lor.lhs.false.critedge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 496, i32 noundef 3520) #5
  %tobool85.not = icmp eq ptr %call.i, null
  br i1 %tobool85.not, label %if.end82.cleanup208_crit_edge, label %if.end87

if.end82.cleanup208_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

if.end87:                                         ; preds = %if.end82
  %15 = ptrtoint ptr %reg_data.0312 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_data.0312, align 4
  %call89 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %16) #5
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.end87.cleanup208_crit_edge, label %if.end92

if.end87.cleanup208_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

if.end92:                                         ; preds = %if.end87
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %19 = ptrtoint ptr %reg_data.0312 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_data.0312, align 4
  %call95 = call ptr @of_get_child_by_name(ptr noundef %18, ptr noundef %20) #5
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %if.end92.cleanup208_crit_edge, label %if.end98

if.end92.cleanup208_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

if.end98:                                         ; preds = %if.end92
  %call99 = call i32 @of_irq_get_byname(ptr noundef nonnull %call95, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 1
  br i1 %cmp100, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp103 = icmp eq i32 %call99, 0
  %spec.store.select = select i1 %cmp103, i32 -22, i32 %call99
  %dev107 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev107, align 4
  %call108 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %22, i32 noundef %spec.store.select, ptr noundef nonnull @.str.11) #5
  br label %cleanup208

if.end109:                                        ; preds = %if.end98
  %sc_irq = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %sc_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call99, ptr %sc_irq, align 4
  %call110 = call i32 @of_irq_get_byname(ptr noundef nonnull %call95, ptr noundef nonnull @.str.12) #5
  %ocp_irq = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 13
  %24 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call110, ptr %ocp_irq, align 4
  %ocp_irq_count = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %ocp_irq_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ocp_irq_count, align 4
  call void @of_node_put(ptr noundef nonnull %call95) #5
  %regmap = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %regmap, align 4
  %dev111 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %dev111 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %dev111, align 4
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %base, align 2
  %base113 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %base113 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %base113, align 4
  %31 = ptrtoint ptr %type47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type47, align 4
  %type115 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 8
  %33 = ptrtoint ptr %type115 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %type115, align 2
  %sc_recovery_work = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %sc_recovery_work, i32 noundef 0) #5
  %34 = ptrtoint ptr %sc_recovery_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %sc_recovery_work, align 4
  %lockdep_map = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @qcom_labibb_regulator_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry125 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %35 = ptrtoint ptr %entry125 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry125, ptr %entry125, align 4
  %prev.i = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry125, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @qcom_labibb_sc_recovery_worker, ptr %func, align 4
  %timer = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 6, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @qcom_labibb_regulator_probe.__key.14) #5
  %38 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ocp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp137 = icmp sgt i32 %39, 0
  br i1 %cmp137, label %do.body141, label %if.end109.if.end166_crit_edge

if.end109.if.end166_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end166

do.body141:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %ocp_recovery_work = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %ocp_recovery_work, i32 noundef 0) #5
  %40 = ptrtoint ptr %ocp_recovery_work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %ocp_recovery_work, align 4
  %lockdep_map150 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map150, ptr noundef nonnull @.str.17, ptr noundef nonnull @qcom_labibb_regulator_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry153 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %entry153 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry153, ptr %entry153, align 4
  %prev.i296 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i296 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry153, ptr %prev.i296, align 4
  %func156 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 5, i32 0, i32 2
  %43 = ptrtoint ptr %func156 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @qcom_labibb_ocp_recovery_worker, ptr %func156, align 4
  %timer161 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %timer161, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @qcom_labibb_regulator_probe.__key.18) #5
  br label %if.end166

if.end166:                                        ; preds = %do.body141, %if.end109.if.end166_crit_edge
  %44 = ptrtoint ptr %type115 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type115, align 2
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %45, label %if.end166.cleanup208_crit_edge [
    i8 36, label %if.end166.sw.epilog_crit_edge
    i8 32, label %sw.bb171
  ]

if.end166.sw.epilog_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end166.cleanup208_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

sw.bb171:                                         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb171, %if.end166.sw.epilog_crit_edge
  %.sink345 = phi i32 [ 0, %sw.bb171 ], [ 200000, %if.end166.sw.epilog_crit_edge ]
  %.sink344 = phi i32 [ 50000, %sw.bb171 ], [ 200000, %if.end166.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 0, %sw.bb171 ], [ 8, %if.end166.sw.epilog_crit_edge ]
  %uA_limits172 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %uA_limits172 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink345, ptr %uA_limits172, align 4
  %uA_step175 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %uA_step175 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink344, ptr %uA_step175, align 4
  %ovr_val177 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %ovr_val177 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %ovr_val177, align 4
  %desc178 = getelementptr inbounds %struct.labibb_regulator_data, ptr %reg_data.0312, i32 0, i32 3
  %50 = ptrtoint ptr %desc178 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc178, align 4
  %52 = call ptr @memcpy(ptr %call.i, ptr %51, i32 244)
  %53 = ptrtoint ptr %reg_data.0312 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_data.0312, align 4
  %of_match = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %of_match to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %of_match, align 4
  %56 = load ptr, ptr %reg_data.0312, align 4
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %call.i, align 4
  %58 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev111, align 4
  %60 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %cfg, align 4
  %61 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %driver_data, align 4
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %64 = ptrtoint ptr %regmap187 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %regmap187, align 4
  %call190 = call ptr @devm_regulator_register(ptr noundef %59, ptr noundef nonnull %call.i, ptr noundef nonnull %cfg) #5
  %rdev = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 3
  %65 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call190, ptr %rdev, align 4
  %cmp.i = icmp ugt ptr %call190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end196, label %cleanup

do.end196:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %rdev.le = getelementptr inbounds %struct.labibb_regulator, ptr %call.i, i32 0, i32 3
  %66 = ptrtoint ptr %reg_data.0312 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_data.0312, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %67, i32 noundef %call10) #8
  %68 = ptrtoint ptr %rdev.le to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rdev.le, align 4
  %70 = ptrtoint ptr %69 to i32
  br label %cleanup208

cleanup:                                          ; preds = %sw.epilog
  %71 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev111, align 4
  %73 = ptrtoint ptr %sc_irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sc_irq, align 4
  %call203 = call i32 @devm_request_threaded_irq(ptr noundef %72, i32 noundef %74, ptr noundef null, ptr noundef nonnull @qcom_labibb_sc_isr, i32 noundef 8193, ptr noundef nonnull %call89, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %for.inc, label %cleanup.cleanup208_crit_edge

cleanup.cleanup208_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

for.inc:                                          ; preds = %cleanup
  %incdec.ptr = getelementptr %struct.labibb_regulator_data, ptr %reg_data.0312, i32 1
  %75 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %76, null
  br i1 %tobool9.not, label %for.inc.cleanup208_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup208_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup208

cleanup208:                                       ; preds = %for.inc.cleanup208_crit_edge, %cleanup.cleanup208_crit_edge, %do.end196, %if.end166.cleanup208_crit_edge, %if.then102, %if.end92.cleanup208_crit_edge, %if.end87.cleanup208_crit_edge, %if.end82.cleanup208_crit_edge, %do.end66, %do.end32, %do.end15, %if.end8.cleanup208_crit_edge, %if.end.cleanup208_crit_edge, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ -19, %if.end.cleanup208_crit_edge ], [ -22, %do.end32 ], [ -22, %do.end66 ], [ -22, %do.end15 ], [ %call108, %if.then102 ], [ %70, %do.end196 ], [ 0, %if.end8.cleanup208_crit_edge ], [ %call203, %cleanup.cleanup208_crit_edge ], [ 0, %for.inc.cleanup208_crit_edge ], [ -12, %if.end82.cleanup208_crit_edge ], [ -12, %if.end87.cleanup208_crit_edge ], [ -22, %if.end92.cleanup208_crit_edge ], [ -22, %if.end166.cleanup208_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_labibb_sc_recovery_worker(ptr noundef %work) #2 align 64 {
entry:
  %ibb_status.i = alloca i32, align 4
  %lab_status.i = alloca i32, align 4
  %lab_val = alloca i32, align 4
  %ibb_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lab_val) #5
  %0 = ptrtoint ptr %lab_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lab_val, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibb_val) #5
  %1 = ptrtoint ptr %ibb_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ibb_val, align 4, !annotation !103
  %rdev = getelementptr i8, ptr %work, i32 -116
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ops1 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops1, align 4
  %fatal_count = getelementptr i8, ptr %work, i32 124
  %8 = ptrtoint ptr %fatal_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fatal_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp sgt i32 %9, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sc_count = getelementptr i8, ptr %work, i32 112
  %10 = ptrtoint ptr %sc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp2 = icmp sgt i32 %11, 3
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %base = getelementptr i8, ptr %work, i32 100
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %base, align 4
  %conv = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv, 70
  %type = getelementptr i8, ptr %work, i32 102
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %15)
  %cmp6 = icmp eq i8 %15, 36
  %sub = add nsw i32 %conv, -442
  %add9 = add nuw nsw i32 %conv, 582
  %lab_reg.0 = select i1 %cmp6, i32 %add, i32 %add9
  %ibb_reg.0 = select i1 %cmp6, i32 %sub, i32 %add
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibb_status.i) #5
  %16 = ptrtoint ptr %ibb_status.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %ibb_status.i, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lab_status.i) #5
  %17 = ptrtoint ptr %lab_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %lab_status.i, align 4, !annotation !103
  %add.i = add nuw nsw i32 %conv, 8
  %add3.i = add nuw nsw i32 %conv, 520
  %lab_reg.0.i = select i1 %cmp6, i32 %add.i, i32 %add3.i
  %18 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev, align 4
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %lab_reg.0.i, ptr noundef nonnull %lab_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end4.qcom_labibb_check_sc_status.exit.thread_crit_edge

if.end4.qcom_labibb_check_sc_status.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_labibb_check_sc_status.exit.thread

if.end5.i:                                        ; preds = %if.end4
  %sub.i = add nsw i32 %conv, -504
  %ibb_reg.0.i = select i1 %cmp6, i32 %sub.i, i32 %add.i
  %22 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rdev, align 4
  %regmap7.i = getelementptr inbounds %struct.regulator_dev, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %regmap7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap7.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %ibb_reg.0.i, ptr noundef nonnull %ibb_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end5.i.qcom_labibb_check_sc_status.exit.thread_crit_edge

if.end5.i.qcom_labibb_check_sc_status.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_labibb_check_sc_status.exit.thread

if.end11.i:                                       ; preds = %if.end5.i
  %26 = ptrtoint ptr %lab_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lab_status.i, align 4
  %and.i = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %qcom_labibb_check_sc_status.exit, label %if.end11.i.qcom_labibb_check_sc_status.exit.thread_crit_edge

if.end11.i.qcom_labibb_check_sc_status.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %qcom_labibb_check_sc_status.exit.thread

qcom_labibb_check_sc_status.exit.thread:          ; preds = %if.end11.i.qcom_labibb_check_sc_status.exit.thread_crit_edge, %if.end5.i.qcom_labibb_check_sc_status.exit.thread_crit_edge, %if.end4.qcom_labibb_check_sc_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lab_status.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibb_status.i) #5
  br label %reschedule

qcom_labibb_check_sc_status.exit:                 ; preds = %if.end11.i
  %28 = ptrtoint ptr %ibb_status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ibb_status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lab_status.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibb_status.i) #5
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %for.cond.preheader, label %qcom_labibb_check_sc_status.exit.reschedule_crit_edge

qcom_labibb_check_sc_status.exit.reschedule_crit_edge: ; preds = %qcom_labibb_check_sc_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

for.cond.preheader:                               ; preds = %qcom_labibb_check_sc_status.exit
  %regmap = getelementptr i8, ptr %work, i32 -120
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %32, i32 noundef %lab_reg.0, ptr noundef nonnull %lab_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %for.cond.preheader.if.then17_crit_edge

for.cond.preheader.if.then17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then17:                                        ; preds = %if.end30.1.if.then17_crit_edge, %if.end30.if.then17_crit_edge, %for.cond.preheader.if.then17_crit_edge
  %33 = ptrtoint ptr %fatal_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fatal_count, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %fatal_count, align 4
  br label %reschedule

if.end19:                                         ; preds = %for.cond.preheader
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %36, i32 noundef %ibb_reg.0, ptr noundef nonnull %ibb_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end26, label %if.end19.if.then23_crit_edge

if.end19.if.then23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %if.end19.2.if.then23_crit_edge, %if.end19.1.if.then23_crit_edge, %if.end19.if.then23_crit_edge
  %37 = ptrtoint ptr %fatal_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fatal_count, align 4
  %inc25 = add i32 %38, 1
  store i32 %inc25, ptr %fatal_count, align 4
  br label %reschedule

if.end26:                                         ; preds = %if.end19
  %39 = ptrtoint ptr %lab_val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lab_val, align 4
  %41 = ptrtoint ptr %ibb_val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ibb_val, align 4
  %and = and i32 %40, 128
  %and27 = and i32 %and, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.reschedule_crit_edge, label %if.end30

if.end26.reschedule_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

if.end30:                                         ; preds = %if.end26
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call15.1 = call i32 @regmap_read(ptr noundef %44, i32 noundef %lab_reg.0, ptr noundef nonnull %lab_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %tobool16.not.1 = icmp eq i32 %call15.1, 0
  br i1 %tobool16.not.1, label %if.end19.1, label %if.end30.if.then17_crit_edge

if.end30.if.then17_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end19.1:                                       ; preds = %if.end30
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call21.1 = call i32 @regmap_read(ptr noundef %46, i32 noundef %ibb_reg.0, ptr noundef nonnull %ibb_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool22.not.1, label %if.end26.1, label %if.end19.1.if.then23_crit_edge

if.end19.1.if.then23_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.end26.1:                                       ; preds = %if.end19.1
  %47 = ptrtoint ptr %lab_val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lab_val, align 4
  %49 = ptrtoint ptr %ibb_val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ibb_val, align 4
  %and.1 = and i32 %48, 128
  %and27.1 = and i32 %and.1, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.1)
  %tobool28.not.1 = icmp eq i32 %and27.1, 0
  br i1 %tobool28.not.1, label %if.end26.1.reschedule_crit_edge, label %if.end30.1

if.end26.1.reschedule_crit_edge:                  ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

if.end30.1:                                       ; preds = %if.end26.1
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call15.2 = call i32 @regmap_read(ptr noundef %52, i32 noundef %lab_reg.0, ptr noundef nonnull %lab_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %tobool16.not.2 = icmp eq i32 %call15.2, 0
  br i1 %tobool16.not.2, label %if.end19.2, label %if.end30.1.if.then17_crit_edge

if.end30.1.if.then17_crit_edge:                   ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end19.2:                                       ; preds = %if.end30.1
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call21.2 = call i32 @regmap_read(ptr noundef %54, i32 noundef %ibb_reg.0, ptr noundef nonnull %ibb_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %tobool22.not.2 = icmp eq i32 %call21.2, 0
  br i1 %tobool22.not.2, label %if.end26.2, label %if.end19.2.if.then23_crit_edge

if.end19.2.if.then23_crit_edge:                   ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.end26.2:                                       ; preds = %if.end19.2
  %55 = ptrtoint ptr %lab_val to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lab_val, align 4
  %57 = ptrtoint ptr %ibb_val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ibb_val, align 4
  %and.2 = and i32 %56, 128
  %and27.2 = and i32 %and.2, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.2)
  %tobool28.not.2 = icmp eq i32 %and27.2, 0
  br i1 %tobool28.not.2, label %if.end26.2.reschedule_crit_edge, label %if.end30.2

if.end26.2.reschedule_crit_edge:                  ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

if.end30.2:                                       ; preds = %if.end26.2
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %enable = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 14
  %59 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %enable, align 4
  %61 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rdev, align 4
  %call36 = call i32 %60(ptr noundef %62) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end30.2.reschedule_crit_edge

if.end30.2.reschedule_crit_edge:                  ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

if.end39:                                         ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %sc_count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sc_count, align 4
  %sc_irq = getelementptr i8, ptr %work, i32 108
  %64 = ptrtoint ptr %sc_irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sc_irq, align 4
  call void @enable_irq(i32 noundef %65) #5
  br label %cleanup

reschedule:                                       ; preds = %if.end30.2.reschedule_crit_edge, %if.end26.2.reschedule_crit_edge, %if.end26.1.reschedule_crit_edge, %if.end26.reschedule_crit_edge, %if.then23, %if.then17, %qcom_labibb_check_sc_status.exit.reschedule_crit_edge, %qcom_labibb_check_sc_status.exit.thread
  %66 = ptrtoint ptr %sc_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sc_count, align 4
  %inc42 = add i32 %67, 1
  store i32 %inc42, ptr %sc_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %68 = load ptr, ptr @system_wq, align 4
  %call.i74 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %68, ptr noundef %work, i32 noundef 25) #5
  br label %cleanup

cleanup:                                          ; preds = %reschedule, %if.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibb_val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lab_val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_labibb_ocp_recovery_worker(ptr noundef %work) #2 align 64 {
entry:
  %cur_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops1 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %ocp_irq_count = getelementptr i8, ptr %work, i32 220
  %6 = ptrtoint ptr %ocp_irq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ocp_irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp sgt i32 %7, 3
  br i1 %cmp, label %do.body, label %if.end21

do.body:                                          ; preds = %entry
  %fatal_count = getelementptr i8, ptr %work, i32 224
  %8 = ptrtoint ptr %fatal_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fatal_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2 = icmp sgt i32 %9, 2
  br i1 %cmp2, label %do.body5, label %do.end13, !prof !105

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/qcom-labibb-regulator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #5, !srcloc !106
  unreachable

do.end13:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  %disable = getelementptr inbounds %struct.regulator_ops, ptr %5, i32 0, i32 15
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  %12 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev, align 4
  %call = tail call i32 %11(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end19, label %do.end13.reschedule_crit_edge

do.end13.reschedule_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

if.end19:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  %ocp_irq = getelementptr i8, ptr %work, i32 216
  %14 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ocp_irq, align 4
  tail call void @enable_irq(i32 noundef %15) #5
  %16 = ptrtoint ptr %fatal_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fatal_count, align 4
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_status.i) #5
  %17 = ptrtoint ptr %cur_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %cur_status.i, align 4, !annotation !103
  %18 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdev, align 4
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr i8, ptr %work, i32 200
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %add.i, ptr noundef nonnull %cur_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %qcom_labibb_check_ocp_status.exit, label %qcom_labibb_check_ocp_status.exit.thread

qcom_labibb_check_ocp_status.exit.thread:         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_status.i) #5
  br label %reschedule

qcom_labibb_check_ocp_status.exit:                ; preds = %if.end21
  %24 = ptrtoint ptr %cur_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_status.i) #5
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp23.not.not = icmp eq i32 %26, 0
  br i1 %cmp23.not.not, label %qcom_labibb_check_ocp_status.exit.reschedule_crit_edge, label %if.end27

qcom_labibb_check_ocp_status.exit.reschedule_crit_edge: ; preds = %qcom_labibb_check_ocp_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reschedule

if.end27:                                         ; preds = %qcom_labibb_check_ocp_status.exit
  %27 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdev, align 4
  %call.i62 = call ptr @rdev_get_drvdata(ptr noundef %28) #5
  %regmap.i63 = getelementptr inbounds %struct.regulator_dev, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i63, align 4
  %base.i64 = getelementptr inbounds %struct.labibb_regulator, ptr %call.i62, i32 0, i32 7
  %31 = ptrtoint ptr %base.i64 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %base.i64, align 4
  %conv.i65 = zext i16 %32 to i32
  %add.i66 = add nuw nsw i32 %conv.i65, 20
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add.i66, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i67 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i67, label %qcom_labibb_ocp_hw_enable.exit, label %if.end27.do.end34_crit_edge

if.end27.do.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

qcom_labibb_ocp_hw_enable.exit:                   ; preds = %if.end27
  %33 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i63, align 4
  %35 = ptrtoint ptr %base.i64 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %base.i64, align 4
  %conv4.i = zext i16 %36 to i32
  %add5.i = add nuw nsw i32 %conv4.i, 21
  %call.i12.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %add5.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool30.not = icmp eq i32 %call.i12.i, 0
  br i1 %tobool30.not, label %if.end38, label %qcom_labibb_ocp_hw_enable.exit.do.end34_crit_edge

qcom_labibb_ocp_hw_enable.exit.do.end34_crit_edge: ; preds = %qcom_labibb_ocp_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

do.end34:                                         ; preds = %qcom_labibb_ocp_hw_enable.exit.do.end34_crit_edge, %if.end27.do.end34_crit_edge
  %dev35 = getelementptr i8, ptr %work, i32 -24
  %37 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.26) #8
  br label %reschedule

if.end38:                                         ; preds = %qcom_labibb_ocp_hw_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ocp_irq39 = getelementptr i8, ptr %work, i32 216
  %39 = ptrtoint ptr %ocp_irq39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ocp_irq39, align 4
  call void @enable_irq(i32 noundef %40) #5
  %41 = ptrtoint ptr %ocp_irq_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %ocp_irq_count, align 4
  br label %cleanup

reschedule:                                       ; preds = %do.end34, %qcom_labibb_check_ocp_status.exit.reschedule_crit_edge, %qcom_labibb_check_ocp_status.exit.thread, %do.end13.reschedule_crit_edge
  %ocp_irq_count.sink75 = phi ptr [ %ocp_irq_count, %do.end34 ], [ %fatal_count, %do.end13.reschedule_crit_edge ], [ %ocp_irq_count, %qcom_labibb_check_ocp_status.exit.thread ], [ %ocp_irq_count, %qcom_labibb_check_ocp_status.exit.reschedule_crit_edge ]
  %42 = ptrtoint ptr %ocp_irq_count.sink75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ocp_irq_count.sink75, align 4
  %inc37 = add i32 %43, 1
  store i32 %inc37, ptr %ocp_irq_count.sink75, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i70 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work, i32 noundef 50) #5
  br label %cleanup

cleanup:                                          ; preds = %reschedule, %if.end38, %if.end19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_sc_isr(i32 noundef %irq, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_count = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %sc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.28) #8
  tail call void @disable_irq_nosync(i32 noundef %irq) #5
  %rdev = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %5, i32 noundef 4, ptr noundef null) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %6 = load ptr, ptr @system_highpri_wq, align 4
  %sc_recovery_work = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 6
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %sc_recovery_work, i32 noundef 25) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_labibb_ocp_hw_enable(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base, align 4
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 20
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %base, align 4
  %conv4 = zext i16 %7 to i32
  %add5 = add nuw nsw i32 %conv4, 21
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add5, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i12, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_of_parse_cb(ptr noundef %np, ptr nocapture noundef readnone %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %dischg_kohms = alloca i32, align 4
  %soft_start_time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dischg_kohms) #5
  %2 = ptrtoint ptr %dischg_kohms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dischg_kohms, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soft_start_time) #5
  %3 = ptrtoint ptr %soft_start_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %soft_start_time, align 4, !annotation !103
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.33, ptr noundef nonnull %dischg_kohms, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dischg_kohms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 300, ptr %dischg_kohms, align 4
  br label %if.end3

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dischg_kohms to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %dischg_kohms, align 4
  %6 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %.pr, label %if.end.cleanup_crit_edge [
    i32 300, label %if.end.if.end3_crit_edge
    i32 64, label %if.end3.fold.split
    i32 32, label %if.end3.fold.split44
    i32 16, label %if.end3.fold.split45
  ]

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.fold.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3.fold.split44:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3.fold.split45:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end3:                                          ; preds = %if.end3.fold.split45, %if.end3.fold.split44, %if.end3.fold.split, %if.end.if.end3_crit_edge, %if.end.thread
  %retval.0.i.ph = phi i8 [ 0, %if.end.if.end3_crit_edge ], [ 1, %if.end3.fold.split ], [ 2, %if.end3.fold.split44 ], [ 3, %if.end3.fold.split45 ], [ 0, %if.end.thread ]
  %dischg_sel = getelementptr inbounds %struct.labibb_regulator, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %dischg_sel to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %retval.0.i.ph, ptr %dischg_sel, align 1
  %call.i.i26 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.34, ptr noundef nonnull %soft_start_time, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i26)
  %tobool5.not = icmp sgt i32 %call.i.i26, -1
  br i1 %tobool5.not, label %if.end7, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end7:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %soft_start_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr48 = load i32, ptr %soft_start_time, align 4
  %9 = zext i32 %.pr48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %.pr48, label %if.end7.cleanup_crit_edge [
    i32 200, label %if.end7.if.end12_crit_edge
    i32 400, label %if.end12.fold.split
    i32 600, label %if.end12.fold.split46
    i32 800, label %if.end12.fold.split47
  ]

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.fold.split:                              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12.fold.split46:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12.fold.split47:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.end12.fold.split47, %if.end12.fold.split46, %if.end12.fold.split, %if.end7.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %retval.0.i35.ph = phi i8 [ 0, %if.end7.if.end12_crit_edge ], [ 1, %if.end12.fold.split ], [ 2, %if.end12.fold.split46 ], [ 3, %if.end12.fold.split47 ], [ 0, %if.end3.if.end12_crit_edge ]
  %soft_start_sel = getelementptr inbounds %struct.labibb_regulator, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %soft_start_sel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %retval.0.i35.ph, ptr %soft_start_sel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soft_start_time) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dischg_kohms) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %uA_limits = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %uA_limits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uA_limits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %min_uA)
  %cmp = icmp ugt i32 %1, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max_uA)
  %cmp3 = icmp ugt i32 %1, %max_uA
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n_current_limits = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %n_current_limits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_current_limits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp454.not = icmp eq i32 %3, 0
  br i1 %cmp454.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %uA_step = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %uA_step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uA_step, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sel.056 = phi i32 [ -1, %for.body.lr.ph ], [ %sel.1, %for.body.for.body_crit_edge ]
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = mul i32 %5, %i.055
  %add = add i32 %mul, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %max_uA)
  %cmp6.not = icmp sgt i32 %add, %max_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %min_uA)
  %cmp7.not = icmp slt i32 %add, %min_uA
  %or.cond53 = or i1 %cmp6.not, %cmp7.not
  %sel.1 = select i1 %or.cond53, i32 %sel.056, i32 %i.055
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sel.1)
  %cmp10 = icmp slt i32 %sel.1, 0
  br i1 %cmp10, label %for.end.cleanup_crit_edge, label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %regmap = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %base, align 4
  %conv = zext i16 %9 to i32
  %add13 = add nuw nsw i32 %conv, 208
  %call14 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add13, i32 noundef 165) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 31
  %10 = ptrtoint ptr %csel_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %csel_mask, align 4
  %ovr_val = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %ovr_val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ovr_val, align 4
  %conv17 = zext i8 %13 to i32
  %or = or i32 %11, %conv17
  %or18 = or i32 %or, 128
  %or21 = or i32 %sel.1, %conv17
  %or22 = or i32 %or21, 128
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 30
  %16 = ptrtoint ptr %csel_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %csel_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef %or18, i32 noundef %or22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %cur_step = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_step) #5
  %0 = ptrtoint ptr %cur_step to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cur_step, align 4, !annotation !103
  %regmap = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %csel_reg = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 30
  %3 = ptrtoint ptr %csel_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %csel_reg, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %cur_step) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %uA_limits = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 4
  %csel_mask = getelementptr inbounds %struct.regulator_desc, ptr %call, i32 0, i32 31
  %5 = ptrtoint ptr %csel_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %csel_mask, align 4
  %7 = ptrtoint ptr %cur_step to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_step, align 4
  %and = and i32 %8, %6
  %uA_step = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %uA_step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uA_step, align 4
  %mul = mul i32 %10, %and
  %11 = ptrtoint ptr %uA_limits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %uA_limits, align 4
  %add = add i32 %mul, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_step) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_set_ocp(ptr noundef %rdev, i32 noundef %lim, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = or i32 %severity, %lim
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  %2 = and i1 %1, %enable
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ocp_irq = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ocp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3 = icmp slt i32 %4, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call6 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %6, i32 noundef 3264, ptr noundef nonnull @.str.35, ptr noundef %8) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %type = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 2
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %10, label %if.end9.cleanup_crit_edge [
    i8 36, label %if.end9.sw.epilog_crit_edge
    i8 32, label %sw.bb10
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %if.end9.sw.epilog_crit_edge
  %irq_flags.0 = phi i32 [ 8196, %sw.bb10 ], [ 8200, %if.end9.sw.epilog_crit_edge ]
  %tobool21.not = phi i32 [ 1, %sw.bb10 ], [ 0, %if.end9.sw.epilog_crit_edge ]
  %irq_trig_low.0 = phi i32 [ 0, %sw.bb10 ], [ 1, %if.end9.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %base, align 4
  %conv12 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv12, 17
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %add, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %base, align 4
  %conv19 = zext i16 %19 to i32
  %add20 = add nuw nsw i32 %conv19, 18
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add20, i32 noundef 1, i32 noundef %tobool21.not, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool23.not = icmp eq i32 %call.i69, 0
  br i1 %tobool23.not, label %if.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %base, align 4
  %conv28 = zext i16 %23 to i32
  %add29 = add nuw nsw i32 %conv28, 19
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add29, i32 noundef 1, i32 noundef %irq_trig_low.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool31.not = icmp eq i32 %call.i70, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call34 = tail call fastcc i32 @qcom_labibb_ocp_hw_enable(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %ocp_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ocp_irq, align 4
  %call40 = tail call i32 @devm_request_threaded_irq(ptr noundef %25, i32 noundef %27, ptr noundef null, ptr noundef nonnull @qcom_labibb_ocp_isr, i32 noundef %irq_flags.0, ptr noundef nonnull %call6, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end37 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call.i69, %if.end16.cleanup_crit_edge ], [ %call.i70, %if.end25.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_active_discharge_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_set_soft_start(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %type = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp = icmp eq i8 %1, 32
  %dischg_sel = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 9
  %soft_start_sel = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 10
  %val.0.in.in = select i1 %cmp, ptr %dischg_sel, ptr %soft_start_sel
  %2 = ptrtoint ptr %val.0.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %val.0.in = load i8, ptr %val.0.in.in, align 1
  %val.0 = zext i8 %val.0.in to i32
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 8
  %soft_start_reg = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 47
  %7 = ptrtoint ptr %soft_start_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %soft_start_reg, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %8, i32 noundef %val.0) #5
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_pull_down_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_labibb_ocp_isr(i32 noundef %irq, ptr noundef %chip) #2 align 64 {
entry:
  %cur_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops1 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops1, align 4
  %is_enabled = getelementptr inbounds %struct.regulator_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %is_enabled, align 4
  %call = tail call i32 %7(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ocp_irq_count = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 14
  %8 = ptrtoint ptr %ocp_irq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocp_irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp sgt i32 %9, 4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_status.i) #5
  %10 = ptrtoint ptr %cur_status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %cur_status.i, align 4, !annotation !103
  %11 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev, align 4
  %regmap.i = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %base.i = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 7
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %base.i, align 4
  %conv.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i, ptr noundef nonnull %cur_status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %qcom_labibb_check_ocp_status.exit, label %qcom_labibb_check_ocp_status.exit.thread

qcom_labibb_check_ocp_status.exit.thread:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_status.i) #5
  br label %if.end9

qcom_labibb_check_ocp_status.exit:                ; preds = %if.end4
  %17 = ptrtoint ptr %cur_status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_status.i) #5
  %19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.not = icmp eq i32 %19, 0
  br i1 %cmp6.not, label %qcom_labibb_check_ocp_status.exit.if.end9_crit_edge, label %if.then7

qcom_labibb_check_ocp_status.exit.if.end9_crit_edge: ; preds = %qcom_labibb_check_ocp_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %qcom_labibb_check_ocp_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %ocp_irq_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ocp_irq_count, align 4
  br label %end

if.end9:                                          ; preds = %qcom_labibb_check_ocp_status.exit.if.end9_crit_edge, %qcom_labibb_check_ocp_status.exit.thread
  %21 = ptrtoint ptr %ocp_irq_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ocp_irq_count, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %ocp_irq_count, align 4
  call void @disable_irq_nosync(i32 noundef %irq) #5
  %dev = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.36) #8
  %25 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rdev, align 4
  %call12 = call fastcc i32 @qcom_labibb_ocp_hw_disable(ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.end_crit_edge

if.end9.end_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdev, align 4
  %call17 = call i32 @regulator_notifier_call_chain(ptr noundef %28, i32 noundef 2, ptr noundef null) #5
  br label %end

end:                                              ; preds = %if.end15, %if.end9.end_crit_edge, %if.then7
  %ret.0 = phi i32 [ 0, %if.then7 ], [ %call12, %if.end9.end_crit_edge ], [ 0, %if.end15 ]
  %ocp_recovery_work = getelementptr inbounds %struct.labibb_regulator, ptr %chip, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %ocp_recovery_work, i32 noundef 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool20.not = icmp eq i32 %ret.0, 0
  %spec.select = zext i1 %tobool20.not to i32
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_labibb_ocp_hw_disable(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.labibb_regulator, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %base, align 4
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 22
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %add, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_qcom_labibb_regulator__288_900_qcom_labibb_regulator_driver_init6, !1, !"__initcall__kmod_qcom_labibb_regulator__288_900_qcom_labibb_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 900, i32 1}
!2 = !{ptr @__exitcall_qcom_labibb_regulator_driver_exit, !1, !"__exitcall_qcom_labibb_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 902, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 903, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 904, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 905, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 895, i32 11}
!14 = !{ptr @qcom_labibb_regulator_driver, !15, !"qcom_labibb_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 893, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 775, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qcom_labibb_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qcom_labibb_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 793, i32 4}
!26 = !{ptr @qcom_labibb_regulator_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_labibb_regulator_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 809, i32 11}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 820, i32 37}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 826, i32 11}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 831, i32 37}
!36 = !{ptr @qcom_labibb_regulator_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 840, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qcom_labibb_regulator_probe.__key.14, !37, !"__key", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qcom_labibb_regulator_probe.__key.16, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 844, i32 4}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qcom_labibb_regulator_probe.__key.18, !42, !"__key", i1 false, i1 false}
!45 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 876, i32 4}
!48 = !{ptr @qcom_labibb_regulator_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qcom_labibb_regulator_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 200, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @qcom_labibb_ocp_recovery_worker._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @qcom_labibb_ocp_recovery_worker._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 222, i32 3}
!57 = !{ptr @qcom_labibb_ocp_recovery_worker._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qcom_labibb_ocp_recovery_worker._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 541, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @qcom_labibb_sc_isr._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @qcom_labibb_sc_isr._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @qcom_labibb_match, !66, !"qcom_labibb_match", i1 false, i1 false}
!66 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 755, i32 34}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 750, i32 3}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 751, i32 3}
!71 = !{ptr @pmi8998_labibb_data, !72, !"pmi8998_labibb_data", i1 false, i1 false}
!72 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 749, i32 43}
!73 = !{ptr @pmi8998_lab_desc, !74, !"pmi8998_lab_desc", i1 false, i1 false}
!74 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 691, i32 36}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 648, i32 33}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 660, i32 33}
!79 = distinct !{null, !80, !"dischg_resistor_values", i1 false, i1 false}
!80 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 635, i32 18}
!81 = distinct !{null, !82, !"soft_start_values", i1 false, i1 false}
!82 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 638, i32 18}
!83 = !{ptr @qcom_labibb_ops, !84, !"qcom_labibb_ops", i1 false, i1 false}
!84 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 675, i32 35}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 329, i32 55}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 289, i32 2}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @qcom_labibb_ocp_isr._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @qcom_labibb_ocp_isr._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @pmi8998_ibb_desc, !93, !"pmi8998_ibb_desc", i1 false, i1 false}
!93 = !{!"../drivers/regulator/qcom-labibb-regulator.c", i32 718, i32 36}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"auto-init"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2155176210, i64 2155176716, i64 2155176247, i64 2155176303, i64 2155176337, i64 2155176361, i64 2155176402, i64 2155176423, i64 2155176451, i64 2155176485}
