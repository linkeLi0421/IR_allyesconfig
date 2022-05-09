; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-qusb2.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-qusb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qusb2_phy_cfg = type { ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8 }
%struct.qusb2_phy_init_tbl = type { i32, i32, i32 }
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
%struct.qusb2_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, ptr, %struct.override_params, ptr, i8, i8, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.override_params = type { %struct.override_param, %struct.override_param, %struct.override_param, %struct.override_param, %struct.override_param, %struct.override_param, %struct.override_param }
%struct.override_param = type { i8, i8 }

@__initcall__kmod_phy_qcom_qusb2__293_1108_qusb2_phy_driver_init6 = internal global ptr @qusb2_phy_driver_init, section ".initcall6.init", align 4
@qusb2_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qusb2_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qusb2_phy_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qusb2_phy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qusb2_phy_driver_exit = internal global ptr @qusb2_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [65 x i8] c"phy_qcom_qusb2.author=Vivek Gautam <vivek.gautam@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [53 x i8] c"phy_qcom_qusb2.description=Qualcomm QUSB2 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [56 x i8] c"phy_qcom_qusb2.file=drivers/phy/qualcomm/phy-qcom-qusb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [30 x i8] c"phy_qcom_qusb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom-qusb2-phy\00", [17 x i8] zeroinitializer }, align 32
@qusb2_phy_of_match_table = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq6018_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8998_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcm2290-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6115_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm660_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm4250-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6115_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6115-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6115_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-qusb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qusb2_v2_phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qusb2-v2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qusb2_v2_phy_cfg }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@qusb2_phy_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qusb2_phy_runtime_suspend, ptr @qusb2_phy_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfg_ahb\00", [24 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 976, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get cfg ahb clk, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qusb2_phy_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/phy/qualcomm/phy-qcom-qusb2.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry_ptr = internal global ptr @qusb2_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 984, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get ref clk, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry_ptr.10 = internal global ptr @qusb2_phy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 994, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get phy core reset\0A\00", [34 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry_ptr.14 = internal global ptr @qusb2_phy_probe._entry.12, section ".printk_index", align 4
@qusb2_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1006, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get regulator supplies: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry_ptr.17 = internal global ptr @qusb2_phy_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,tcsr-syscon\00", [47 x i8] zeroinitializer }, align 32
@qusb2_phy_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.3, ptr @.str.4, ptr @.str.20, i8 0, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_qcom_qusb2\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to lookup TCSR regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@qusb2_phy_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.3, ptr @.str.4, ptr @.str.21, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to lookup tune2 hstx trim value\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom,imp-res-offset-value\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,bias-ctrl-value\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom,charge-ctrl-value\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,hstx-trim-value\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom,preemphasis-level\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom,preemphasis-width\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qcom,hsdisc-trim-value\00", [41 x i8] zeroinitializer }, align 32
@qusb2_phy_gen_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @qusb2_phy_init, ptr @qusb2_phy_exit, ptr null, ptr null, ptr @qusb2_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1081, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to create phy, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry_ptr.31 = internal global ptr @qusb2_phy_probe._entry.29, section ".printk_index", align 4
@qusb2_phy_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1092, ptr @.str.34, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Registered Qcom-QUSB2 phy\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qusb2_phy_probe._entry_ptr.35 = internal global ptr @qusb2_phy_probe._entry.32, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdda-pll\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdda-phy-dpdm\00", [18 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 743, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable iface_clk, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qusb2_phy_init\00", [17 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr = internal global ptr @qusb2_phy_init._entry, section ".printk_index", align 4
@qusb2_phy_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable cfg ahb clock, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr.43 = internal global ptr @qusb2_phy_init._entry.41, section ".printk_index", align 4
@qusb2_phy_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.4, i32 757, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to assert phy_reset, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr.46 = internal global ptr @qusb2_phy_init._entry.44, section ".printk_index", align 4
@qusb2_phy_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to de-assert phy_reset, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr.49 = internal global ptr @qusb2_phy_init._entry.47, section ".printk_index", align 4
@qusb2_phy_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read clk scheme reg\0A\00", [33 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr.52 = internal global ptr @qusb2_phy_init._entry.50, section ".printk_index", align 4
@qusb2_phy_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.4, i32 831, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable ref clk, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr.55 = internal global ptr @qusb2_phy_init._entry.53, section ".printk_index", align 4
@qusb2_phy_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str.4, i32 854, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"QUSB2PHY pll lock failed: status reg = %x\0A\00", [53 x i8] zeroinitializer }, align 32
@qusb2_phy_init._entry_ptr.58 = internal global ptr @qusb2_phy_init._entry.56, section ".printk_index", align 4
@qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qusb2_phy_set_tune2_param\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read a valid hs-tx trim value\0A\00", [55 x i8] zeroinitializer }, align 32
@qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ipq6018_phy_cfg = internal constant { %struct.qusb2_phy_cfg, [32 x i8] } { %struct.qusb2_phy_cfg { ptr @ipq6018_init_tbl, i32 13, i32 0, ptr @ipq6018_regs_layout, i32 32, i32 1, i32 1, i8 0, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@msm8996_phy_cfg = internal constant { %struct.qusb2_phy_cfg, [32 x i8] } { %struct.qusb2_phy_cfg { ptr @msm8996_init_tbl, i32 10, i32 0, ptr @msm8996_regs_layout, i32 32, i32 35, i32 8, i8 1, i8 0, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@msm8998_phy_cfg = internal constant { %struct.qusb2_phy_cfg, [32 x i8] } { %struct.qusb2_phy_cfg { ptr @msm8998_init_tbl, i32 7, i32 0, ptr @msm8998_regs_layout, i32 1, i32 1, i32 1, i8 0, i8 1, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sm6115_phy_cfg = internal constant { %struct.qusb2_phy_cfg, [32 x i8] } { %struct.qusb2_phy_cfg { ptr @sm6115_init_tbl, i32 10, i32 0, ptr @msm8996_regs_layout, i32 32, i32 35, i32 8, i8 1, i8 0, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sdm660_phy_cfg = internal constant { %struct.qusb2_phy_cfg, [32 x i8] } { %struct.qusb2_phy_cfg { ptr @msm8996_init_tbl, i32 10, i32 0, ptr @msm8996_regs_layout, i32 32, i32 35, i32 8, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@qusb2_v2_phy_cfg = internal constant { %struct.qusb2_phy_cfg, [32 x i8] } { %struct.qusb2_phy_cfg { ptr @qusb2_v2_init_tbl, i32 16, i32 0, ptr @qusb2_v2_regs_layout, i32 1, i32 35, i32 1, i8 0, i8 1, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@ipq6018_init_tbl = internal constant { [13 x %struct.qusb2_phy_init_tbl], [36 x i8] } { [13 x %struct.qusb2_phy_init_tbl] [%struct.qusb2_phy_init_tbl { i32 0, i32 20, i32 0 }, %struct.qusb2_phy_init_tbl { i32 2, i32 248, i32 1 }, %struct.qusb2_phy_init_tbl { i32 3, i32 179, i32 1 }, %struct.qusb2_phy_init_tbl { i32 4, i32 131, i32 1 }, %struct.qusb2_phy_init_tbl { i32 5, i32 192, i32 1 }, %struct.qusb2_phy_init_tbl { i32 8, i32 48, i32 0 }, %struct.qusb2_phy_init_tbl { i32 12, i32 121, i32 0 }, %struct.qusb2_phy_init_tbl { i32 16, i32 33, i32 0 }, %struct.qusb2_phy_init_tbl { i32 6, i32 0, i32 1 }, %struct.qusb2_phy_init_tbl { i32 24, i32 0, i32 0 }, %struct.qusb2_phy_init_tbl { i32 8, i32 20, i32 1 }, %struct.qusb2_phy_init_tbl { i32 4, i32 128, i32 0 }, %struct.qusb2_phy_init_tbl { i32 28, i32 159, i32 0 }], [36 x i8] zeroinitializer }, align 32
@ipq6018_regs_layout = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 56, i32 128, i32 132, i32 136, i32 140, i32 144, i32 152, i32 156, i32 180, i32 188], [52 x i8] zeroinitializer }, align 32
@msm8996_init_tbl = internal constant { [10 x %struct.qusb2_phy_init_tbl], [40 x i8] } { [10 x %struct.qusb2_phy_init_tbl] [%struct.qusb2_phy_init_tbl { i32 2, i32 248, i32 1 }, %struct.qusb2_phy_init_tbl { i32 3, i32 179, i32 1 }, %struct.qusb2_phy_init_tbl { i32 4, i32 131, i32 1 }, %struct.qusb2_phy_init_tbl { i32 5, i32 192, i32 1 }, %struct.qusb2_phy_init_tbl { i32 8, i32 48, i32 0 }, %struct.qusb2_phy_init_tbl { i32 12, i32 121, i32 0 }, %struct.qusb2_phy_init_tbl { i32 16, i32 33, i32 0 }, %struct.qusb2_phy_init_tbl { i32 8, i32 20, i32 1 }, %struct.qusb2_phy_init_tbl { i32 28, i32 159, i32 0 }, %struct.qusb2_phy_init_tbl { i32 24, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@msm8996_regs_layout = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 56, i32 128, i32 132, i32 136, i32 140, i32 144, i32 184, i32 156, i32 180, i32 188], [52 x i8] zeroinitializer }, align 32
@msm8998_init_tbl = internal constant { [7 x %struct.qusb2_phy_init_tbl], [44 x i8] } { [7 x %struct.qusb2_phy_init_tbl] [%struct.qusb2_phy_init_tbl { i32 4, i32 19, i32 0 }, %struct.qusb2_phy_init_tbl { i32 396, i32 124, i32 0 }, %struct.qusb2_phy_init_tbl { i32 44, i32 128, i32 0 }, %struct.qusb2_phy_init_tbl { i32 388, i32 10, i32 0 }, %struct.qusb2_phy_init_tbl { i32 2, i32 165, i32 1 }, %struct.qusb2_phy_init_tbl { i32 3, i32 9, i32 1 }, %struct.qusb2_phy_init_tbl { i32 180, i32 25, i32 0 }], [44 x i8] zeroinitializer }, align 32
@msm8998_regs_layout = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 168, i32 416, i32 572, i32 576, i32 580, i32 584, i32 0, i32 588, i32 592, i32 528, i32 556], [52 x i8] zeroinitializer }, align 32
@sm6115_init_tbl = internal constant { [10 x %struct.qusb2_phy_init_tbl], [40 x i8] } { [10 x %struct.qusb2_phy_init_tbl] [%struct.qusb2_phy_init_tbl { i32 2, i32 248, i32 1 }, %struct.qusb2_phy_init_tbl { i32 3, i32 83, i32 1 }, %struct.qusb2_phy_init_tbl { i32 4, i32 129, i32 1 }, %struct.qusb2_phy_init_tbl { i32 5, i32 23, i32 1 }, %struct.qusb2_phy_init_tbl { i32 8, i32 48, i32 0 }, %struct.qusb2_phy_init_tbl { i32 12, i32 121, i32 0 }, %struct.qusb2_phy_init_tbl { i32 16, i32 33, i32 0 }, %struct.qusb2_phy_init_tbl { i32 8, i32 20, i32 1 }, %struct.qusb2_phy_init_tbl { i32 28, i32 159, i32 0 }, %struct.qusb2_phy_init_tbl { i32 24, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@qusb2_v2_init_tbl = internal constant { [16 x %struct.qusb2_phy_init_tbl], [32 x i8] } { [16 x %struct.qusb2_phy_init_tbl] [%struct.qusb2_phy_init_tbl { i32 4, i32 3, i32 0 }, %struct.qusb2_phy_init_tbl { i32 396, i32 124, i32 0 }, %struct.qusb2_phy_init_tbl { i32 44, i32 128, i32 0 }, %struct.qusb2_phy_init_tbl { i32 388, i32 10, i32 0 }, %struct.qusb2_phy_init_tbl { i32 180, i32 25, i32 0 }, %struct.qusb2_phy_init_tbl { i32 404, i32 64, i32 0 }, %struct.qusb2_phy_init_tbl { i32 408, i32 32, i32 0 }, %struct.qusb2_phy_init_tbl { i32 532, i32 33, i32 0 }, %struct.qusb2_phy_init_tbl { i32 544, i32 0, i32 0 }, %struct.qusb2_phy_init_tbl { i32 548, i32 88, i32 0 }, %struct.qusb2_phy_init_tbl { i32 2, i32 48, i32 1 }, %struct.qusb2_phy_init_tbl { i32 3, i32 41, i32 1 }, %struct.qusb2_phy_init_tbl { i32 4, i32 202, i32 1 }, %struct.qusb2_phy_init_tbl { i32 5, i32 4, i32 1 }, %struct.qusb2_phy_init_tbl { i32 6, i32 3, i32 1 }, %struct.qusb2_phy_init_tbl { i32 572, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@qusb2_v2_regs_layout = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 168, i32 416, i32 576, i32 580, i32 584, i32 588, i32 592, i32 596, i32 600, i32 528, i32 560], [52 x i8] zeroinitializer }, align 32
@qusb2_phy_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.61, ptr @.str.4, i32 689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qusb2_phy_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@qusb2_phy_runtime_resume._entry_ptr = internal global ptr @qusb2_phy_runtime_resume._entry, section ".printk_index", align 4
@qusb2_phy_runtime_resume._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.61, ptr @.str.4, i32 695, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@qusb2_phy_runtime_resume._entry_ptr.63 = internal global ptr @qusb2_phy_runtime_resume._entry.62, section ".printk_index", align 4
@qusb2_phy_runtime_resume._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.61, ptr @.str.4, i32 702, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@qusb2_phy_runtime_resume._entry_ptr.65 = internal global ptr @qusb2_phy_runtime_resume._entry.64, section ".printk_index", align 4
@switch.table.qusb2_phy_runtime_suspend = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 184549376, i32 318767104, i32 318767104, i32 452984832, i32 452984832, i32 184549376, i32 318767104, i32 318767104], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"qusb2_phy_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1099, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1102, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"qusb2_phy_of_match_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 907, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"qusb2_phy_pm_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 947, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 972, i32 40 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 976, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 980, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 984, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 988, i32 47 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 994, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1005, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1014, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1016, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1025, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1028, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1034, i32 42 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1040, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1046, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1052, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1058, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1064, i32 42 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"qusb2_phy_gen_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 900, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1081, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 1092, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 374, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 374, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 374, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 743, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 750, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 757, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 766, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 812, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 830, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 853, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 579, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"ipq6018_phy_cfg\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 324, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"msm8996_phy_cfg\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 299, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"msm8998_phy_cfg\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 311, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant [15 x i8] c"sm6115_phy_cfg\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 361, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"sdm660_phy_cfg\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 349, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"qusb2_v2_phy_cfg\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 335, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"ipq6018_init_tbl\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 139, i32 40 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"ipq6018_regs_layout\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 155, i32 27 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"msm8996_init_tbl\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 181, i32 40 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"msm8996_regs_layout\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 168, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"msm8998_init_tbl\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 210, i32 40 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c"msm8998_regs_layout\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 197, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"sm6115_init_tbl\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 222, i32 40 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"qusb2_v2_init_tbl\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 252, i32 40 }
@___asan_gen_.276 = private unnamed_addr constant [21 x i8] c"qusb2_v2_regs_layout\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 238, i32 27 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 689, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 695, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.289 = private constant [41 x i8] c"../drivers/phy/qualcomm/phy-qcom-qusb2.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 702, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant [39 x i8] c"switch.table.qusb2_phy_runtime_suspend\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_qusb2_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_qusb2__293_1108_qusb2_phy_driver_init6, ptr @qusb2_phy_driver_exit, ptr @qusb2_phy_init._entry, ptr @qusb2_phy_init._entry.41, ptr @qusb2_phy_init._entry.44, ptr @qusb2_phy_init._entry.47, ptr @qusb2_phy_init._entry.50, ptr @qusb2_phy_init._entry.53, ptr @qusb2_phy_init._entry.56, ptr @qusb2_phy_init._entry_ptr, ptr @qusb2_phy_init._entry_ptr.43, ptr @qusb2_phy_init._entry_ptr.46, ptr @qusb2_phy_init._entry_ptr.49, ptr @qusb2_phy_init._entry_ptr.52, ptr @qusb2_phy_init._entry_ptr.55, ptr @qusb2_phy_init._entry_ptr.58, ptr @qusb2_phy_probe._entry, ptr @qusb2_phy_probe._entry.12, ptr @qusb2_phy_probe._entry.15, ptr @qusb2_phy_probe._entry.29, ptr @qusb2_phy_probe._entry.32, ptr @qusb2_phy_probe._entry.8, ptr @qusb2_phy_probe._entry_ptr, ptr @qusb2_phy_probe._entry_ptr.10, ptr @qusb2_phy_probe._entry_ptr.14, ptr @qusb2_phy_probe._entry_ptr.17, ptr @qusb2_phy_probe._entry_ptr.31, ptr @qusb2_phy_probe._entry_ptr.35, ptr @qusb2_phy_runtime_resume._entry, ptr @qusb2_phy_runtime_resume._entry.62, ptr @qusb2_phy_runtime_resume._entry.64, ptr @qusb2_phy_runtime_resume._entry_ptr, ptr @qusb2_phy_runtime_resume._entry_ptr.63, ptr @qusb2_phy_runtime_resume._entry_ptr.65, ptr @qusb2_phy_driver, ptr @.str, ptr @qusb2_phy_of_match_table, ptr @qusb2_phy_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @qusb2_phy_gen_ops, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @ipq6018_phy_cfg, ptr @msm8996_phy_cfg, ptr @msm8998_phy_cfg, ptr @sm6115_phy_cfg, ptr @sdm660_phy_cfg, ptr @qusb2_v2_phy_cfg, ptr @ipq6018_init_tbl, ptr @ipq6018_regs_layout, ptr @msm8996_init_tbl, ptr @msm8996_regs_layout, ptr @msm8998_init_tbl, ptr @msm8998_regs_layout, ptr @sm6115_init_tbl, ptr @qusb2_v2_init_tbl, ptr @qusb2_v2_regs_layout, ptr @.str.61, ptr @switch.table.qusb2_phy_runtime_suspend], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_of_match_table to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_gen_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm660_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_v2_phy_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_init_tbl to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_regs_layout to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_init_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_regs_layout to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_init_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_regs_layout to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_init_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_v2_init_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_v2_regs_layout to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_runtime_resume._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qusb2_phy_runtime_resume._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qusb2_phy_runtime_suspend to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qusb2_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qusb2_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qusb2_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qusb2_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qusb2_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !170
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 96, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %overrides = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %cfg_ahb_clk = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %cfg_ahb_clk, align 4
  %cmp.i287 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end8
  %cmp.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.cleanup_crit_edge, label %do.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %4) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %ref_clk = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %ref_clk, align 4
  %cmp.i288 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.end17
  %cmp24.not = icmp eq ptr %call18, inttoptr (i32 -517 to ptr)
  br i1 %cmp24.not, label %if.then21.cleanup_crit_edge, label %do.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %6) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %call31 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  %iface_clk = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %iface_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call31, ptr %iface_clk, align 4
  %cmp.i289 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %phy_reset = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %phy_reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %phy_reset, align 4
  %cmp.i290 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %do.end45, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end37
  %arrayidx50 = getelementptr %struct.qusb2_phy, ptr %call.i, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.36, ptr %arrayidx50, align 4
  %arrayidx50.1 = getelementptr %struct.qusb2_phy, ptr %call.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.37, ptr %arrayidx50.1, align 4
  %arrayidx50.2 = getelementptr %struct.qusb2_phy, ptr %call.i, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.38, ptr %arrayidx50.2, align 4
  %call52 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %arrayidx50) #7
  %13 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call52, label %do.end59 [
    i32 0, label %if.end61
    i32 -517, label %for.body.preheader.cleanup_crit_edge
  ]

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  %14 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_reset, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

do.end59:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call52) #10
  br label %cleanup

if.end61:                                         ; preds = %for.body.preheader
  %call62 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %cfg = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call62, ptr %cfg, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call63 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %19, ptr noundef nonnull @.str.18) #7
  %tcsr = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %tcsr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call63, ptr %tcsr, align 4
  %cmp.i291 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %do.body67, label %if.end61.if.end77_crit_edge

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.body67:                                        ; preds = %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qusb2_phy_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qusb2_phy_probe, %if.then72)) #7
          to label %do.end75 [label %if.then72], !srcloc !171

if.then72:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qusb2_phy_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %do.body67
  %21 = ptrtoint ptr %tcsr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %tcsr, align 4
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.end61.if.end77_crit_edge
  %call78 = tail call ptr @devm_nvmem_cell_get(ptr noundef %dev1, ptr noundef null) #7
  %cell = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call78, ptr %cell, align 4
  %cmp.i292 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.then81, label %if.end77.if.end104_crit_edge

if.end77.if.end104_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then81:                                        ; preds = %if.end77
  %cmp84 = icmp eq ptr %call78, inttoptr (i32 -517 to ptr)
  br i1 %cmp84, label %if.then81.cleanup_crit_edge, label %if.end86

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cell, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qusb2_phy_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qusb2_phy_probe, %if.then100)) #7
          to label %if.end104 [label %if.then100], !srcloc !171

if.then100:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qusb2_phy_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.21) #7
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end86, %if.end77.if.end104_crit_edge
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call.i.i293 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i293)
  %tobool107.not = icmp sgt i32 %call.i.i293, -1
  br i1 %tobool107.not, label %if.then108, label %if.end104.if.end111_crit_edge

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %conv = trunc i32 %27 to i8
  %value109 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %28 = ptrtoint ptr %value109 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %value109, align 1
  %29 = ptrtoint ptr %overrides to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %overrides, align 1
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end104.if.end111_crit_edge
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call.i.i294 = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.23, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i294)
  %tobool114.not = icmp sgt i32 %call.i.i294, -1
  br i1 %tobool114.not, label %if.then115, label %if.end111.if.end120_crit_edge

if.end111.if.end120_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value, align 4
  %conv116 = trunc i32 %33 to i8
  %bias_ctrl = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 4
  %value117 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 4, i32 1
  %34 = ptrtoint ptr %value117 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv116, ptr %value117, align 1
  %35 = ptrtoint ptr %bias_ctrl to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %bias_ctrl, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end111.if.end120_crit_edge
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call.i.i295 = call i32 @of_property_read_variable_u32_array(ptr noundef %37, ptr noundef nonnull @.str.24, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i295)
  %tobool123.not = icmp sgt i32 %call.i.i295, -1
  br i1 %tobool123.not, label %if.then124, label %if.end120.if.end129_crit_edge

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 4
  %conv125 = trunc i32 %39 to i8
  %charge_ctrl = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 5
  %value126 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 5, i32 1
  %40 = ptrtoint ptr %value126 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv125, ptr %value126, align 1
  %41 = ptrtoint ptr %charge_ctrl to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %charge_ctrl, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end120.if.end129_crit_edge
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call.i.i296 = call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.25, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i296)
  %tobool132.not = icmp sgt i32 %call.i.i296, -1
  br i1 %tobool132.not, label %if.then133, label %if.end129.if.end138_crit_edge

if.end129.if.end138_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value, align 4
  %conv134 = trunc i32 %45 to i8
  %hstx_trim = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 1
  %value135 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %46 = ptrtoint ptr %value135 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv134, ptr %value135, align 1
  %47 = ptrtoint ptr %hstx_trim to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %hstx_trim, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.then133, %if.end129.if.end138_crit_edge
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call.i.i297 = call i32 @of_property_read_variable_u32_array(ptr noundef %49, ptr noundef nonnull @.str.26, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i297)
  %tobool141.not = icmp sgt i32 %call.i.i297, -1
  br i1 %tobool141.not, label %if.then142, label %if.end138.if.end147_crit_edge

if.end138.if.end147_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  %conv143 = trunc i32 %51 to i8
  %preemphasis = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 2
  %value144 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 2, i32 1
  %52 = ptrtoint ptr %value144 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv143, ptr %value144, align 1
  %53 = ptrtoint ptr %preemphasis to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %preemphasis, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.end138.if.end147_crit_edge
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %call.i.i298 = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.27, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i298)
  %tobool150.not = icmp sgt i32 %call.i.i298, -1
  br i1 %tobool150.not, label %if.then151, label %if.end147.if.end156_crit_edge

if.end147.if.end156_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %value, align 4
  %conv152 = trunc i32 %57 to i8
  %preemphasis_width = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 3
  %value153 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 3, i32 1
  %58 = ptrtoint ptr %value153 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv152, ptr %value153, align 1
  %59 = ptrtoint ptr %preemphasis_width to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %preemphasis_width, align 1
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %if.end147.if.end156_crit_edge
  %60 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %of_node, align 8
  %call.i.i299 = call i32 @of_property_read_variable_u32_array(ptr noundef %61, ptr noundef nonnull @.str.28, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i299)
  %tobool159.not = icmp sgt i32 %call.i.i299, -1
  br i1 %tobool159.not, label %if.then160, label %if.end156.if.end165_crit_edge

if.end156.if.end165_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then160:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value, align 4
  %conv161 = trunc i32 %63 to i8
  %hsdisc_trim = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 6
  %value162 = getelementptr inbounds %struct.qusb2_phy, ptr %call.i, i32 0, i32 9, i32 6, i32 1
  %64 = ptrtoint ptr %value162 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv161, ptr %value162, align 1
  %65 = ptrtoint ptr %hsdisc_trim to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %hsdisc_trim, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %if.end156.if.end165_crit_edge
  %call.i300 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  call void @pm_runtime_forbid(ptr noundef %dev1) #7
  %call167 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @qusb2_phy_gen_ops) #7
  %cmp.i301 = icmp ugt ptr %call167, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then169, label %if.end174

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %call167 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %66) #10
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

if.end174:                                        ; preds = %if.end165
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call167, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call167, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call175 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i302 = icmp ugt ptr %call175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.else, label %do.end180

do.end180:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.33) #10
  br label %if.end181

if.else:                                          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %if.end181

if.end181:                                        ; preds = %if.else, %do.end180
  %70 = ptrtoint ptr %call175 to i32
  %spec.select.i = select i1 %cmp.i302, i32 %70, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end181, %if.then169, %if.then81.cleanup_crit_edge, %do.end59, %do.end45, %for.body.preheader.cleanup_crit_edge, %if.then34, %do.end28, %if.then21.cleanup_crit_edge, %do.end, %if.then12.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %8, %if.then34 ], [ %16, %do.end45 ], [ %66, %if.then169 ], [ %spec.select.i, %if.end181 ], [ -12, %entry.cleanup_crit_edge ], [ %4, %do.end ], [ -517, %if.then12.cleanup_crit_edge ], [ %6, %do.end28 ], [ -517, %if.then21.cleanup_crit_edge ], [ %call52, %for.body.preheader.cleanup_crit_edge ], [ %call52, %do.end59 ], [ -517, %if.then81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qusb2_phy_init(ptr noundef %phy) #2 align 64 {
entry:
  %clk_scheme = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg1 = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_scheme) #7
  %4 = ptrtoint ptr %clk_scheme to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %clk_scheme, align 4, !annotation !170
  %vregs = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %vregs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iface_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iface_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i.ph) #10
  br label %poweroff_phy

if.end6:                                          ; preds = %if.end.i
  %cfg_ahb_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg_ahb_clk, align 4
  %call.i192 = tail call i32 @clk_prepare(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool.not.i193 = icmp eq i32 %call.i192, 0
  br i1 %tobool.not.i193, label %if.end.i196, label %if.end6.do.end12_crit_edge

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.end.i196:                                      ; preds = %if.end6
  %call1.i194 = tail call i32 @clk_enable(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i194)
  %tobool2.not.i195 = icmp eq i32 %call1.i194, 0
  br i1 %tobool2.not.i195, label %if.end14, label %if.then3.i197

if.then3.i197:                                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then3.i197, %if.end6.do.end12_crit_edge
  %retval.0.i198.ph = phi i32 [ %call1.i194, %if.then3.i197 ], [ %call.i192, %if.end6.do.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i198.ph) #10
  br label %disable_iface_clk

if.end14:                                         ; preds = %if.end.i196
  %phy_reset = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_reset, align 4
  %call15 = tail call i32 @reset_control_assert(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.45, i32 noundef %call15) #10
  br label %disable_ahb_clk

if.end22:                                         ; preds = %if.end14
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #7
  %11 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_reset, align 4
  %call24 = tail call i32 @reset_control_deassert(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.48, i32 noundef %call24) #10
  br label %disable_ahb_clk

if.end31:                                         ; preds = %if.end22
  %base = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %regs = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg1, align 4
  %disable_ctrl = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %disable_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %disable_ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %18
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %or.i = or i32 %24, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #7, !srcloc !175
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %has_pll_test = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 7
  %27 = ptrtoint ptr %has_pll_test to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_pll_test, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool33.not = icmp eq i8 %28, 0
  br i1 %tobool33.not, label %if.end31.if.end38_crit_edge, label %if.then34

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %32 = and i32 %31, 2147483647
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end31.if.end38_crit_edge
  %val.0 = phi i32 [ %33, %if.then34 ], [ 0, %if.end31.if.end38_crit_edge ]
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %tbl_num = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %tbl_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tbl_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp23.i = icmp sgt i32 %41, 0
  br i1 %cmp23.i, label %if.end38.for.body.i_crit_edge, label %if.end38.qcom_qusb2_phy_configure.exit_crit_edge

if.end38.qcom_qusb2_phy_configure.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_qusb2_phy_configure.exit

if.end38.for.body.i_crit_edge:                    ; preds = %if.end38
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end38.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end38.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qusb2_phy_init_tbl, ptr %39, i32 %i.024.i
  %in_layout.i = getelementptr %struct.qusb2_phy_init_tbl, ptr %39, i32 %i.024.i, i32 2
  %42 = ptrtoint ptr %in_layout.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %in_layout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i200 = icmp eq i32 %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %val8.i = getelementptr %struct.qusb2_phy_init_tbl, ptr %39, i32 %i.024.i, i32 1
  %44 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val8.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  br i1 %tobool.not.i200, label %do.body4.i, label %do.body.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr i32, ptr %37, i32 %48
  %49 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx3.i, align 4
  %add.ptr.i201 = getelementptr i8, ptr %35, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %46) #7, !srcloc !175
  br label %for.inc.i

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr11.i = getelementptr i8, ptr %35, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %46) #7, !srcloc !175
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body4.i, %do.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %41
  br i1 %exitcond.not.i, label %for.inc.i.qcom_qusb2_phy_configure.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.qcom_qusb2_phy_configure.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qcom_qusb2_phy_configure.exit

qcom_qusb2_phy_configure.exit:                    ; preds = %for.inc.i.qcom_qusb2_phy_configure.exit_crit_edge, %if.end38.qcom_qusb2_phy_configure.exit_crit_edge
  %51 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg1, align 4
  %overrides.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %overrides.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %overrides.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i202 = icmp eq i8 %54, 0
  br i1 %tobool.not.i202, label %qcom_qusb2_phy_configure.exit.if.end.i203_crit_edge, label %if.then.i

qcom_qusb2_phy_configure.exit.if.end.i203_crit_edge: ; preds = %qcom_qusb2_phy_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i203

if.then.i:                                        ; preds = %qcom_qusb2_phy_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %value.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 0, i32 1
  %57 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %value.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 544
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %60 = and i32 %59, -1056964609
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  %62 = and i8 %58, 63
  %and2.i.i = zext i8 %62 to i32
  %or.i.i = or i32 %61, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %63) #7, !srcloc !175
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %if.end.i203

if.end.i203:                                      ; preds = %if.then.i, %qcom_qusb2_phy_configure.exit.if.end.i203_crit_edge
  %bias_ctrl.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 4
  %65 = ptrtoint ptr %bias_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bias_ctrl.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool4.not.i = icmp eq i8 %66, 0
  br i1 %tobool4.not.i, label %if.end.i203.if.end11.i_crit_edge, label %if.then5.i

if.end.i203.if.end11.i_crit_edge:                 ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %value8.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 4, i32 1
  %69 = ptrtoint ptr %value8.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %value8.i, align 1
  %add.ptr.i94.i = getelementptr i8, ptr %68, i32 408
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %72 = and i32 %71, -1056964609
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  %74 = and i8 %70, 63
  %and2.i96.i = zext i8 %74 to i32
  %or.i97.i = or i32 %73, %and2.i96.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %75 = tail call i32 @llvm.bswap.i32(i32 %or.i97.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 %75) #7, !srcloc !175
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %if.end.i203.if.end11.i_crit_edge
  %charge_ctrl.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 5
  %77 = ptrtoint ptr %charge_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %charge_ctrl.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool13.not.i = icmp eq i8 %78, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end20.i_crit_edge, label %if.then14.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %value17.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 5, i32 1
  %81 = ptrtoint ptr %value17.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %value17.i, align 1
  %conv18.i = zext i8 %82 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 4
  %add.ptr.i98.i = getelementptr i8, ptr %80, i32 572
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %84 = and i32 %83, -805306369
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  %and2.i100.i = and i32 %shl19.i, 48
  %or.i101.i = or i32 %85, %and2.i100.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.i101.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 %86) #7, !srcloc !175
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end20.i_crit_edge
  %hstx_trim.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 1
  %88 = ptrtoint ptr %hstx_trim.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hstx_trim.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool22.not.i = icmp eq i8 %89, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end29.i_crit_edge, label %if.then23.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %regs.i = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %52, i32 0, i32 3
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 4
  %arrayidx.i204 = getelementptr i32, ptr %93, i32 2
  %94 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i204, align 4
  %value26.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 1, i32 1
  %96 = ptrtoint ptr %value26.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %value26.i, align 1
  %conv27.i = zext i8 %97 to i32
  %shl28.i = shl nuw nsw i32 %conv27.i, 4
  %add.ptr.i102.i = getelementptr i8, ptr %91, i32 %95
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %99 = and i32 %98, 268435455
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #7
  %and2.i104.i = and i32 %shl28.i, 240
  %or.i105.i = or i32 %100, %and2.i104.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i105.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102.i, i32 %101) #7, !srcloc !175
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end29.i_crit_edge
  %preemphasis.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 2
  %103 = ptrtoint ptr %preemphasis.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %preemphasis.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool31.not.i = icmp eq i8 %104, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end40.i_crit_edge, label %if.then32.i

if.end29.i.if.end40.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  %regs34.i = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %52, i32 0, i32 3
  %107 = ptrtoint ptr %regs34.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs34.i, align 4
  %arrayidx35.i = getelementptr i32, ptr %108, i32 2
  %109 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx35.i, align 4
  %value37.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 2, i32 1
  %111 = ptrtoint ptr %value37.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %value37.i, align 1
  %add.ptr.i106.i = getelementptr i8, ptr %106, i32 %110
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %114 = and i32 %113, -50331649
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #7
  %116 = and i8 %112, 3
  %and2.i108.i = zext i8 %116 to i32
  %or.i109.i = or i32 %115, %and2.i108.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %117 = tail call i32 @llvm.bswap.i32(i32 %or.i109.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %117) #7, !srcloc !175
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end40.i_crit_edge
  %preemphasis_width.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 3
  %119 = ptrtoint ptr %preemphasis_width.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %preemphasis_width.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool42.not.i = icmp eq i8 %120, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end56.i_crit_edge, label %if.then43.i

if.end40.i.if.end56.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then43.i:                                      ; preds = %if.end40.i
  %value45.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 3, i32 1
  %121 = ptrtoint ptr %value45.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %value45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %cmp.i = icmp eq i8 %122, 1
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 4
  %regs50.i = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %52, i32 0, i32 3
  %125 = ptrtoint ptr %regs50.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs50.i, align 4
  %arrayidx51.i = getelementptr i32, ptr %126, i32 2
  %127 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx51.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %124, i32 %128
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp.i, label %if.then48.i, label %if.else.i

if.then48.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = or i32 %129, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %130) #7, !srcloc !175
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  br label %if.end56.i

if.else.i:                                        ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = and i32 %129, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %132) #7, !srcloc !175
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i, %if.then48.i, %if.end40.i.if.end56.i_crit_edge
  %hsdisc_trim.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 6
  %134 = ptrtoint ptr %hsdisc_trim.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %hsdisc_trim.i, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool58.not.i = icmp eq i8 %135, 0
  br i1 %tobool58.not.i, label %if.end56.i.qusb2_phy_override_phy_params.exit_crit_edge, label %if.then59.i

if.end56.i.qusb2_phy_override_phy_params.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qusb2_phy_override_phy_params.exit

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base, align 4
  %regs61.i = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %52, i32 0, i32 3
  %138 = ptrtoint ptr %regs61.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs61.i, align 4
  %arrayidx62.i = getelementptr i32, ptr %139, i32 3
  %140 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx62.i, align 4
  %value64.i = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 9, i32 6, i32 1
  %142 = ptrtoint ptr %value64.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %value64.i, align 1
  %add.ptr.i114.i = getelementptr i8, ptr %137, i32 %141
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %145 = and i32 %144, -50331649
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #7
  %147 = and i8 %143, 3
  %and2.i116.i = zext i8 %147 to i32
  %or.i117.i = or i32 %146, %and2.i116.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %148 = tail call i32 @llvm.bswap.i32(i32 %or.i117.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 %148) #7, !srcloc !175
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %qusb2_phy_override_phy_params.exit

qusb2_phy_override_phy_params.exit:               ; preds = %if.then59.i, %if.end56.i.qusb2_phy_override_phy_params.exit_crit_edge
  tail call fastcc void @qusb2_phy_set_tune2_param(ptr noundef %1)
  %150 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base, align 4
  %152 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs, align 4
  %arrayidx43 = getelementptr i32, ptr %153, i32 9
  %154 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx43, align 4
  %add.ptr.i205 = getelementptr i8, ptr %151, i32 %155
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %157 = and i32 %156, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %157) #7, !srcloc !175
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 160, i32 noundef 2) #7
  %se_clk_scheme_default = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 10
  %159 = ptrtoint ptr %se_clk_scheme_default to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %se_clk_scheme_default, align 1, !range !177
  %has_se_clk_scheme = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 11
  %161 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %has_se_clk_scheme, align 4
  %tcsr = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 7
  %162 = ptrtoint ptr %tcsr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tcsr, align 4
  %tobool45.not = icmp eq ptr %163, null
  br i1 %tobool45.not, label %qusb2_phy_override_phy_params.exit.if.end61_crit_edge, label %if.then46

qusb2_phy_override_phy_params.exit.if.end61_crit_edge: ; preds = %qusb2_phy_override_phy_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then46:                                        ; preds = %qusb2_phy_override_phy_params.exit
  %164 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cfg1, align 4
  %clk_scheme_offset = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %clk_scheme_offset to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %clk_scheme_offset, align 4
  %call49 = call i32 @regmap_read(ptr noundef nonnull %163, i32 noundef %167, ptr noundef nonnull %clk_scheme) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.51) #10
  br label %assert_phy_reset

if.end56:                                         ; preds = %if.then46
  %168 = ptrtoint ptr %clk_scheme to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %clk_scheme, align 4
  %and = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end61.thread, label %if.end61thread-pre-split

if.end61.thread:                                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %has_se_clk_scheme, align 4
  br label %if.then64

if.end61thread-pre-split:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_load1_noabort(i32 %171)
  %.pr = load i8, ptr %has_se_clk_scheme, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61thread-pre-split, %qusb2_phy_override_phy_params.exit.if.end61_crit_edge
  %172 = phi i8 [ %.pr, %if.end61thread-pre-split ], [ %160, %qusb2_phy_override_phy_params.exit.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool63.not = icmp eq i8 %172, 0
  br i1 %tobool63.not, label %if.end61.if.then64_crit_edge, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end61.if.then64_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

if.then64:                                        ; preds = %if.end61.if.then64_crit_edge, %if.end61.thread
  %ref_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 3
  %173 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ref_clk, align 4
  %call.i206 = call i32 @clk_prepare(ptr noundef %174) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %if.end.i210, label %if.then64.do.end70_crit_edge

if.then64.do.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70

if.end.i210:                                      ; preds = %if.then64
  %call1.i208 = call i32 @clk_enable(ptr noundef %174) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool2.not.i209 = icmp eq i32 %call1.i208, 0
  br i1 %tobool2.not.i209, label %if.end.i210.if.end73_crit_edge, label %if.then3.i211

if.end.i210.if.end73_crit_edge:                   ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then3.i211:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %174) #7
  br label %do.end70

do.end70:                                         ; preds = %if.then3.i211, %if.then64.do.end70_crit_edge
  %retval.0.i212.ph = phi i32 [ %call1.i208, %if.then3.i211 ], [ %call.i206, %if.then64.do.end70_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i212.ph) #10
  br label %assert_phy_reset

if.end73:                                         ; preds = %if.end.i210.if.end73_crit_edge, %if.end61.if.end73_crit_edge
  %175 = ptrtoint ptr %has_pll_test to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %has_pll_test, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool75.not = icmp eq i8 %176, 0
  br i1 %tobool75.not, label %if.end73.if.end95_crit_edge, label %if.then76

if.end73.if.end95_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %has_se_clk_scheme, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool78.not = icmp eq i8 %178, 0
  %masksel = select i1 %tobool78.not, i32 0, i32 128
  %val.1 = or i32 %masksel, %val.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  call void @arm_heavy_mb() #7
  %179 = call i32 @llvm.bswap.i32(i32 %val.1)
  %180 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %181, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %179) #7, !srcloc !175
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 4
  %add.ptr91 = getelementptr i8, ptr %183, i32 4
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #7, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  br label %if.end95

if.end95:                                         ; preds = %if.then76, %if.end73.if.end95_crit_edge
  call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #7
  %185 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base, align 4
  %187 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs, align 4
  %arrayidx100 = getelementptr i32, ptr %188, i32 1
  %189 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx100, align 4
  %add.ptr101 = getelementptr i8, ptr %186, i32 %190
  %191 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr101) #7, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  %conv = zext i8 %191 to i32
  %mask_core_ready = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 4
  %192 = ptrtoint ptr %mask_core_ready to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %mask_core_ready, align 4
  %and105 = and i32 %193, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.end110, label %if.end112

do.end110:                                        ; preds = %if.end95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.57, i32 noundef %conv) #10
  %194 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %has_se_clk_scheme, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool114.not = icmp eq i8 %195, 0
  br i1 %tobool114.not, label %if.then115, label %do.end110.assert_phy_reset_crit_edge

do.end110.assert_phy_reset_crit_edge:             ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %assert_phy_reset

if.end112:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %phy_initialized = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 12
  %196 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %phy_initialized, align 1
  br label %cleanup

if.then115:                                       ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clk116 = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 3
  %197 = ptrtoint ptr %ref_clk116 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ref_clk116, align 4
  call void @clk_disable(ptr noundef %198) #7
  call void @clk_unprepare(ptr noundef %198) #7
  br label %assert_phy_reset

assert_phy_reset:                                 ; preds = %if.then115, %do.end110.assert_phy_reset_crit_edge, %do.end70, %do.end54
  %ret.0 = phi i32 [ %call49, %do.end54 ], [ -16, %do.end110.assert_phy_reset_crit_edge ], [ -16, %if.then115 ], [ %retval.0.i212.ph, %do.end70 ]
  %199 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %phy_reset, align 4
  %call119 = call i32 @reset_control_assert(ptr noundef %200) #7
  br label %disable_ahb_clk

disable_ahb_clk:                                  ; preds = %assert_phy_reset, %do.end29, %do.end20
  %ret.1 = phi i32 [ %call15, %do.end20 ], [ %call24, %do.end29 ], [ %ret.0, %assert_phy_reset ]
  %201 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cfg_ahb_clk, align 4
  call void @clk_disable(ptr noundef %202) #7
  call void @clk_unprepare(ptr noundef %202) #7
  br label %disable_iface_clk

disable_iface_clk:                                ; preds = %disable_ahb_clk, %do.end12
  %ret.2 = phi i32 [ %retval.0.i198.ph, %do.end12 ], [ %ret.1, %disable_ahb_clk ]
  %203 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %iface_clk, align 4
  call void @clk_disable(ptr noundef %204) #7
  call void @clk_unprepare(ptr noundef %204) #7
  br label %poweroff_phy

poweroff_phy:                                     ; preds = %disable_iface_clk, %do.end
  %ret.3 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.2, %disable_iface_clk ]
  %call124 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %vregs) #7
  br label %cleanup

cleanup:                                          ; preds = %poweroff_phy, %if.end112, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %poweroff_phy ], [ 0, %if.end112 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_scheme) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qusb2_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %cfg = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg, align 4
  %regs = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %disable_ctrl = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %disable_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %disable_ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %or.i = or i32 %13, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !175
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %has_se_clk_scheme = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_se_clk_scheme, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_reset = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_reset, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %21) #7
  %cfg_ahb_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg_ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #7
  tail call void @clk_unprepare(ptr noundef %23) #7
  %iface_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #7
  tail call void @clk_unprepare(ptr noundef %25) #7
  %vregs = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %vregs) #7
  %phy_initialized = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %phy_initialized, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qusb2_phy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode1 = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %mode1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qusb2_phy_set_tune2_param(ptr nocapture noundef readonly %qphy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qphy, align 4
  %cfg2 = getelementptr inbounds %struct.qusb2_phy, ptr %qphy, i32 0, i32 10
  %2 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg2, align 4
  %cell = getelementptr inbounds %struct.qusb2_phy, ptr %qphy, i32 0, i32 8
  %4 = ptrtoint ptr %cell to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cell, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nvmem_cell_read(ptr noundef nonnull %5, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qusb2_phy_set_tune2_param, %if.then10)) #7
          to label %cleanup [label %if.then10], !srcloc !171

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.60) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call, align 1
  tail call void @kfree(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %do.body15, label %if.end31

do.body15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qusb2_phy_set_tune2_param, %if.then27)) #7
          to label %cleanup [label %if.then27], !srcloc !171

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.60) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end12
  %update_tune1_with_efuse = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %update_tune1_with_efuse to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %update_tune1_with_efuse, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool32.not = icmp eq i8 %9, 0
  %base35 = getelementptr inbounds %struct.qusb2_phy, ptr %qphy, i32 0, i32 1
  %10 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base35, align 4
  %regs36 = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %regs36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs36, align 4
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %17 = and i32 %16, 268435455
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and2.i = and i32 %shl, 240
  %or.i = or i32 %18, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !175
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %cleanup

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx37 = getelementptr i32, ptr %13, i32 3
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx37, align 4
  %conv38 = zext i8 %7 to i32
  %shl39 = shl nuw nsw i32 %conv38, 4
  %add.ptr.i60 = getelementptr i8, ptr %11, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  %24 = and i32 %23, 268435455
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and2.i62 = and i32 %shl39, 240
  %or.i63 = or i32 %25, %and2.i62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i63) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %26) #7, !srcloc !175
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %if.then27, %do.body15, %if.then10, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qusb2_phy_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cfg1 = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %phy_initialized = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_initialized, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %switch.tableidx = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.lookup, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.qusb2_phy_runtime_suspend, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %if.end.do.body_crit_edge
  %intr_mask.0 = phi i32 [ %switch.load, %switch.lookup ], [ 452984832, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %regs = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %intr_mask.0) #7, !srcloc !175
  %has_pll_override = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %has_pll_override to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_pll_override, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %do.body.if.end11_crit_edge, label %if.then7

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %25 = or i32 %24, 1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #7, !srcloc !175
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body.if.end11_crit_edge
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not = icmp eq i32 %28, 0
  br i1 %cmp.not, label %if.end11.if.end21_crit_edge, label %if.then13

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %arrayidx16 = getelementptr i32, ptr %32, i32 7
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx16, align 4
  %autoresume_en = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 6
  %35 = ptrtoint ptr %autoresume_en to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %autoresume_en, align 4
  %add.ptr.i48 = getelementptr i8, ptr %30, i32 %34
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #7, !srcloc !172
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %or.i49 = or i32 %38, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i49) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %39) #7, !srcloc !175
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %arrayidx19 = getelementptr i32, ptr %44, i32 7
  %45 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx19, align 4
  %47 = ptrtoint ptr %autoresume_en to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %autoresume_en, align 4
  %add.ptr.i50 = getelementptr i8, ptr %42, i32 %46
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !172
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %neg.i = xor i32 %48, -1
  %and.i = and i32 %50, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %51) #7, !srcloc !175
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end11.if.end21_crit_edge
  %has_se_clk_scheme = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %has_se_clk_scheme, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool22.not = icmp eq i8 %54, 0
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %ref_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %56) #7
  tail call void @clk_unprepare(ptr noundef %56) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  %cfg_ahb_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg_ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  %iface_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %60) #7
  tail call void @clk_unprepare(ptr noundef %60) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qusb2_phy_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cfg1 = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %phy_initialized = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %phy_initialized, align 1, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iface_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iface_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %cfg_ahb_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg_ahb_clk, align 4
  %call.i57 = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i61, label %if.end5.do.end11_crit_edge

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i61:                                       ; preds = %if.end5
  %call1.i59 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool2.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool2.not.i60, label %if.end12, label %if.then3.i62

if.then3.i62:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i62, %if.end5.do.end11_crit_edge
  %retval.0.i63.ph = phi i32 [ %call1.i59, %if.then3.i62 ], [ %call.i57, %if.end5.do.end11_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i63.ph) #10
  br label %disable_iface_clk

if.end12:                                         ; preds = %if.end.i61
  %has_se_clk_scheme = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %has_se_clk_scheme to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_se_clk_scheme, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.then14, label %if.end12.do.body23_crit_edge

if.end12.do.body23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then14:                                        ; preds = %if.end12
  %ref_clk = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ref_clk, align 4
  %call.i65 = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %if.end.i69, label %if.then14.do.end20_crit_edge

if.then14.do.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.end.i69:                                       ; preds = %if.then14
  %call1.i67 = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool2.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool2.not.i68, label %if.end.i69.do.body23_crit_edge, label %if.then3.i70

if.end.i69.do.body23_crit_edge:                   ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

if.then3.i70:                                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then3.i70, %if.then14.do.end20_crit_edge
  %retval.0.i71.ph = phi i32 [ %call1.i67, %if.then3.i70 ], [ %call.i65, %if.then14.do.end20_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i71.ph) #10
  %14 = ptrtoint ptr %cfg_ahb_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg_ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %disable_iface_clk

do.body23:                                        ; preds = %if.end.i69.do.body23_crit_edge, %if.end12.do.body23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.qusb2_phy, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %regs = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i32, ptr %19, i32 10
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !175
  %has_pll_override = getelementptr inbounds %struct.qusb2_phy_cfg, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %has_pll_override to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_pll_override, align 2, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool26.not = icmp eq i8 %23, 0
  br i1 %tobool26.not, label %do.body23.cleanup_crit_edge, label %if.then27

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %31 = and i32 %30, -1610612737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #7, !srcloc !175
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  br label %cleanup

disable_iface_clk:                                ; preds = %do.end20, %do.end11
  %ret.0 = phi i32 [ %retval.0.i63.ph, %do.end11 ], [ %retval.0.i71.ph, %do.end20 ]
  %33 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %34) #7
  tail call void @clk_unprepare(ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_iface_clk, %if.then27, %do.body23.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %disable_iface_clk ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %do.body23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !157, !158, !160}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_phy_qcom_qusb2__293_1108_qusb2_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_qusb2__293_1108_qusb2_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1108, i32 1}
!2 = !{ptr @__exitcall_qusb2_phy_driver_exit, !1, !"__exitcall_qusb2_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1110, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1111, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1112, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1102, i32 11}
!12 = !{ptr @qusb2_phy_driver, !13, !"qusb2_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1099, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 972, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 976, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qusb2_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qusb2_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 980, i32 36}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 984, i32 4}
!28 = !{ptr @qusb2_phy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qusb2_phy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 988, i32 47}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 994, i32 3}
!34 = !{ptr @qusb2_phy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qusb2_phy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1005, i32 4}
!38 = !{ptr @qusb2_phy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qusb2_phy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1014, i32 8}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1016, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @qusb2_phy_probe.__UNIQUE_ID_ddebug291, !43, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1025, i32 3}
!48 = !{ptr @qusb2_phy_probe.__UNIQUE_ID_ddebug292, !47, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1028, i32 42}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1034, i32 42}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1040, i32 42}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1046, i32 42}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1052, i32 42}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1058, i32 42}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1064, i32 42}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1081, i32 3}
!65 = !{ptr @qusb2_phy_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @qusb2_phy_probe._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 1092, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @qusb2_phy_probe._entry.32, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @qusb2_phy_probe._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 374, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 374, i32 9}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 374, i32 21}
!78 = distinct !{null, !79, !"qusb2_phy_vreg_names", i1 false, i1 false}
!79 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 373, i32 27}
!80 = !{ptr @qusb2_phy_gen_ops, !81, !"qusb2_phy_gen_ops", i1 false, i1 false}
!81 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 900, i32 29}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 743, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @qusb2_phy_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @qusb2_phy_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 750, i32 3}
!89 = !{ptr @qusb2_phy_init._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @qusb2_phy_init._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 757, i32 3}
!93 = !{ptr @qusb2_phy_init._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qusb2_phy_init._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 766, i32 3}
!97 = !{ptr @qusb2_phy_init._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @qusb2_phy_init._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 812, i32 4}
!101 = !{ptr @qusb2_phy_init._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qusb2_phy_init._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 830, i32 4}
!105 = !{ptr @qusb2_phy_init._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qusb2_phy_init._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 853, i32 3}
!109 = !{ptr @qusb2_phy_init._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qusb2_phy_init._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 579, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug289, !112, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!115 = !{ptr @qusb2_phy_set_tune2_param.__UNIQUE_ID_ddebug290, !116, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!116 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 585, i32 3}
!117 = !{ptr @qusb2_phy_of_match_table, !118, !"qusb2_phy_of_match_table", i1 false, i1 false}
!118 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 907, i32 34}
!119 = !{ptr @ipq6018_phy_cfg, !120, !"ipq6018_phy_cfg", i1 false, i1 false}
!120 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 324, i32 35}
!121 = !{ptr @ipq6018_init_tbl, !122, !"ipq6018_init_tbl", i1 false, i1 false}
!122 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 139, i32 40}
!123 = !{ptr @ipq6018_regs_layout, !124, !"ipq6018_regs_layout", i1 false, i1 false}
!124 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 155, i32 27}
!125 = !{ptr @msm8996_phy_cfg, !126, !"msm8996_phy_cfg", i1 false, i1 false}
!126 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 299, i32 35}
!127 = !{ptr @msm8996_init_tbl, !128, !"msm8996_init_tbl", i1 false, i1 false}
!128 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 181, i32 40}
!129 = !{ptr @msm8996_regs_layout, !130, !"msm8996_regs_layout", i1 false, i1 false}
!130 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 168, i32 27}
!131 = !{ptr @msm8998_phy_cfg, !132, !"msm8998_phy_cfg", i1 false, i1 false}
!132 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 311, i32 35}
!133 = !{ptr @msm8998_init_tbl, !134, !"msm8998_init_tbl", i1 false, i1 false}
!134 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 210, i32 40}
!135 = !{ptr @msm8998_regs_layout, !136, !"msm8998_regs_layout", i1 false, i1 false}
!136 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 197, i32 27}
!137 = !{ptr @sm6115_phy_cfg, !138, !"sm6115_phy_cfg", i1 false, i1 false}
!138 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 361, i32 35}
!139 = !{ptr @sm6115_init_tbl, !140, !"sm6115_init_tbl", i1 false, i1 false}
!140 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 222, i32 40}
!141 = !{ptr @sdm660_phy_cfg, !142, !"sdm660_phy_cfg", i1 false, i1 false}
!142 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 349, i32 35}
!143 = !{ptr @qusb2_v2_phy_cfg, !144, !"qusb2_v2_phy_cfg", i1 false, i1 false}
!144 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 335, i32 35}
!145 = !{ptr @qusb2_v2_init_tbl, !146, !"qusb2_v2_init_tbl", i1 false, i1 false}
!146 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 252, i32 40}
!147 = !{ptr @qusb2_v2_regs_layout, !148, !"qusb2_v2_regs_layout", i1 false, i1 false}
!148 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 238, i32 27}
!149 = !{ptr @qusb2_phy_pm_ops, !150, !"qusb2_phy_pm_ops", i1 false, i1 false}
!150 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 947, i32 32}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 689, i32 3}
!153 = !{ptr @qusb2_phy_runtime_resume._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @qusb2_phy_runtime_resume._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @qusb2_phy_runtime_resume._entry.62, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 695, i32 3}
!157 = !{ptr @qusb2_phy_runtime_resume._entry_ptr.63, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @qusb2_phy_runtime_resume._entry.64, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../drivers/phy/qualcomm/phy-qcom-qusb2.c", i32 702, i32 4}
!160 = !{ptr @qusb2_phy_runtime_resume._entry_ptr.65, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{!"auto-init"}
!171 = !{i64 2148750842, i64 2148750847, i64 2148750860, i64 2148750904, i64 2148750938, i64 2148750959}
!172 = !{i64 3098850}
!173 = !{i64 2155258430}
!174 = !{i64 2155258640}
!175 = !{i64 3098432}
!176 = !{i64 2155259281}
!177 = !{i8 0, i8 2}
!178 = !{i64 2155295300}
!179 = !{i64 2155256940}
!180 = !{i64 2155257150}
!181 = !{i64 2155257791}
!182 = !{i64 2155260130}
!183 = !{i64 2155260771}
!184 = !{i64 2155259920}
!185 = !{i64 2155302612}
!186 = !{i64 2155303278}
!187 = !{i64 3098630}
!188 = !{i64 2155303562}
!189 = !{i64 2155276398}
!190 = !{i64 2155285565}
