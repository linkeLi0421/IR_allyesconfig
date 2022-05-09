; ModuleID = '/llk/IR_all_yes/drivers/phy/qualcomm/phy-qcom-qmp.c_pt.bc'
source_filename = "../drivers/phy/qualcomm/phy-qcom-qmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qmp_phy_combo_cfg = type { ptr, ptr }
%struct.qmp_phy_cfg = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i8, i8 }
%struct.qmp_phy_init_tbl = type { i32, i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.qcom_qmp = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.qmp_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.phy_configure_opts_dp, ptr }
%struct.phy_configure_opts_dp = type { i32, i32, [4 x i32], [4 x i32], i8 }
%struct.clk_fixed_rate = type { %struct.clk_hw, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.qmp_phy_dp_clks = type { ptr, %struct.clk_hw, %struct.clk_hw }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_qcom_qmp__293_6255_qcom_qmp_phy_driver_init6 = internal global ptr @qcom_qmp_phy_driver_init, section ".initcall6.init", align 4
@qcom_qmp_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_qmp_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_qmp_phy_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_qmp_phy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_qmp_phy_driver_exit = internal global ptr @qcom_qmp_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [63 x i8] c"phy_qcom_qmp.author=Vivek Gautam <vivek.gautam@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [49 x i8] c"phy_qcom_qmp.description=Qualcomm QMP PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [52 x i8] c"phy_qcom_qmp.file=drivers/phy/qualcomm/phy-qcom-qmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [28 x i8] c"phy_qcom_qmp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom-qmp-phy\00", [19 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_of_match_table = internal constant { [43 x %struct.of_device_id], [2100 x i8] } { [43 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8074_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_ufs_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8998_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq8074-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8074_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq6018_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq6018-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8074_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-qmp-usb3-dp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-qmp-usb3-dp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-qhp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_qhp_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_qmp_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qmp_v3_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-qmp-usb3-uni-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qmp_v3_usb3_uniphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8998_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm6115-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm6115_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-qmp-usb3-uni-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8150_usb3_uniphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-usb3-dp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-usb3-uni-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_usb3_uniphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-gen3x1-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_qmp_gen3x1_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-gen3x2-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_qmp_gen3x2_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-modem-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_qmp_gen3x2_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-qmp-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdx55_qmp_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdx55-qmp-usb3-uni-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdx55_usb3_uniphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-qmp-usb3-uni-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_usb3_uniphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-qmp-gen3x1-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_qmp_gen3x1_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-qmp-gen4x2-pcie-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_qmp_gen4x2_pciephy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-qmp-ufs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8450_ufsphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8450-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8350_usb3phy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcm2290-qmp-usb3-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcm2290_usb3phy_cfg }, %struct.of_device_id zeroinitializer], [2100 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_qmp_phy_runtime_suspend, ptr @qcom_qmp_phy_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@qcom_qmp_combo_phy_of_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-qmp-usb3-dp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_usb3dpphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-qmp-usb3-dp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_usb3dpphy_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc8180x-qmp-usb3-dp-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc8180x_usb3dpphy_cfg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&qmp->phy_mutex\00", [16 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 6171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get regulator supplies: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom_qmp_phy_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/phy/qualcomm/phy-qcom-qmp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry_ptr = internal global ptr @qcom_qmp_phy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dp-phy\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb3-phy\00", [23 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 6206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create lane%d phy, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry_ptr.11 = internal global ptr @qcom_qmp_phy_probe._entry.9, section ".printk_index", align 4
@qcom_qmp_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 6218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register pipe clock source\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry_ptr.14 = internal global ptr @qcom_qmp_phy_probe._entry.12, section ".printk_index", align 4
@qcom_qmp_phy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 6225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register DP clock source\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry_ptr.17 = internal global ptr @qcom_qmp_phy_probe._entry.15, section ".printk_index", align 4
@qcom_qmp_phy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 6234, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Registered Qcom-QMP phy\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_probe._entry_ptr.21 = internal global ptr @qcom_qmp_phy_probe._entry.18, section ".printk_index", align 4
@sc7180_usb3dpphy_cfg = internal constant { %struct.qmp_phy_combo_cfg, [24 x i8] } { %struct.qmp_phy_combo_cfg { ptr @sc7180_usb3phy_cfg, ptr @sc7180_dpphy_cfg }, [24 x i8] zeroinitializer }, align 32
@sm8250_usb3dpphy_cfg = internal constant { %struct.qmp_phy_combo_cfg, [24 x i8] } { %struct.qmp_phy_combo_cfg { ptr @sm8250_usb3phy_cfg, ptr @sm8250_dpphy_cfg }, [24 x i8] zeroinitializer }, align 32
@sc8180x_usb3dpphy_cfg = internal constant { %struct.qmp_phy_combo_cfg, [24 x i8] } { %struct.qmp_phy_combo_cfg { ptr @sm8150_usb3phy_cfg, ptr @sc8180x_dpphy_cfg }, [24 x i8] zeroinitializer }, align 32
@sc7180_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @qmp_v3_usb3_serdes_tbl, i32 36, ptr null, i32 0, ptr @qmp_v3_usb3_tx_tbl, i32 5, ptr null, i32 0, ptr @qmp_v3_usb3_rx_tbl, i32 9, ptr null, i32 0, ptr @qmp_v3_usb3_pcs_tbl, i32 39, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v3_phy_clk_l, i32 4, ptr @sc7180_usb3phy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v3_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sc7180_dpphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 6, i32 1, ptr @qmp_v3_dp_serdes_tbl, i32 21, ptr null, i32 0, ptr @qmp_v3_dp_tx_tbl, i32 15, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @qmp_v3_dp_serdes_tbl_rbr, i32 7, ptr @qmp_v3_dp_serdes_tbl_hbr, i32 7, ptr @qmp_v3_dp_serdes_tbl_hbr2, i32 7, ptr @qmp_v3_dp_serdes_tbl_hbr3, i32 7, ptr @qcom_qmp_v3_phy_configure_dp_phy, ptr @qcom_qmp_v3_phy_configure_dp_tx, ptr @qcom_qmp_v3_dp_phy_calibrate, ptr @qcom_qmp_v3_phy_dp_aux_init, ptr @qmp_v3_phy_clk_l, i32 4, ptr @sc7180_usb3phy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v3_usb3phy_regs_layout, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_serdes_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 201, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 133, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 96, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 6, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_rx_tbl = internal constant { [9 x %struct.qmp_phy_init_tbl], [52 x i8] } { [9 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 48, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 78, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 117, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_pcs_tbl = internal constant { [39 x %struct.qmp_phy_init_tbl], [108 x i8] } { [39 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 200, i32 131, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 209, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 186, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 183, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 78, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 101, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 107, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 29, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 68, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 134, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 19, i8 0, i8 -1 }], [108 x i8] zeroinitializer }, align 32
@qmp_v3_phy_clk_l = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@sc7180_usb3phy_reset_l = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@qmp_phy_vreg_l = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.28], [24 x i8] zeroinitializer }, align 32
@qmp_v3_usb3phy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 372, i32 216, i32 220, i32 368, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfg_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"com_aux\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdda-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdda-pll\00", [23 x i8] zeroinitializer }, align 32
@qmp_v3_dp_serdes_tbl = internal constant { [21 x %struct.qmp_phy_init_tbl], [36 x i8] } { [21 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 356, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 55, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@qmp_v3_dp_tx_tbl = internal constant { [15 x %struct.qmp_phy_init_tbl], [44 x i8] } { [15 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 92, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 61, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v3_dp_serdes_tbl_rbr = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 316, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 105, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 111, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 0, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v3_dp_serdes_tbl_hbr = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 316, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 105, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 0, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v3_dp_serdes_tbl_hbr2 = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 316, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 140, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 0, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v3_dp_serdes_tbl_hbr3 = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 316, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 105, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 42, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 8, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qmp_dp_v3_voltage_swing_hbr_rbr = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\08\0F\16\1F", [4 x i8] c"\11\1E\1F\FF", [4 x i8] c"\19\1F\FF\FF", [4 x i8] c"\1F\FF\FF\FF"], [16 x i8] zeroinitializer }, align 32
@qmp_dp_v3_pre_emphasis_hbr_rbr = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\00\0C\14\19", [4 x i8] c"\00\0B\12\FF", [4 x i8] c"\00\0B\FF\FF", [4 x i8] c"\04\FF\FF\FF"], [16 x i8] zeroinitializer }, align 32
@qmp_dp_v3_voltage_swing_hbr3_hbr2 = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\02\12\16\1A", [4 x i8] c"\09\19\1F\FF", [4 x i8] c"\10\1F\FF\FF", [4 x i8] c"\1F\FF\FF\FF"], [16 x i8] zeroinitializer }, align 32
@qmp_dp_v3_pre_emphasis_hbr3_hbr2 = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\00\0C\15\1A", [4 x i8] c"\02\0E\16\FF", [4 x i8] c"\02\11\FF\FF", [4 x i8] c"\04\FF\FF\FF"], [16 x i8] zeroinitializer }, align 32
@qcom_qmp_v3_dp_phy_calibrate.cfg1_settings = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\13#\1D", [29 x i8] zeroinitializer }, align 32
@sm8250_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_serdes_tbl, i32 40, ptr null, i32 0, ptr @sm8250_usb3_tx_tbl, i32 8, ptr null, i32 0, ptr @sm8250_usb3_rx_tbl, i32 38, ptr null, i32 0, ptr @sm8250_usb3_pcs_tbl, i32 14, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_sm8250_usbphy_clk_l, i32 3, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8250_dpphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 6, i32 1, ptr @qmp_v4_dp_serdes_tbl, i32 20, ptr null, i32 0, ptr @qmp_v4_dp_tx_tbl, i32 14, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @qmp_v4_dp_serdes_tbl_rbr, i32 7, ptr @qmp_v4_dp_serdes_tbl_hbr, i32 7, ptr @qmp_v4_dp_serdes_tbl_hbr2, i32 7, ptr @qmp_v4_dp_serdes_tbl_hbr3, i32 7, ptr @qcom_qmp_v4_phy_configure_dp_phy, ptr @qcom_qmp_v4_phy_configure_dp_tx, ptr @qcom_qmp_v4_dp_phy_calibrate, ptr @qcom_qmp_v4_phy_dp_aux_init, ptr @qmp_v4_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3phy_regs_layout, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8150_usb3_serdes_tbl = internal constant { [40 x %struct.qmp_phy_init_tbl], [96 x i8] } { [40 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }], [96 x i8] zeroinitializer }, align 32
@sm8250_usb3_tx_tbl = internal constant { [8 x %struct.qmp_phy_init_tbl], [32 x i8] } { [8 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 96, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 96, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 213, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 64, i8 0, i8 1 }, %struct.qmp_phy_init_tbl { i32 260, i32 84, i8 0, i8 2 }], [32 x i8] zeroinitializer }, align 32
@sm8250_usb3_rx_tbl = internal constant { [38 x %struct.qmp_phy_init_tbl], [120 x i8] } { [38 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 20, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 255, i8 0, i8 1 }, %struct.qmp_phy_init_tbl { i32 368, i32 127, i8 0, i8 2 }, %struct.qmp_phy_init_tbl { i32 372, i32 127, i8 0, i8 1 }, %struct.qmp_phy_init_tbl { i32 372, i32 255, i8 0, i8 2 }, %struct.qmp_phy_init_tbl { i32 376, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 151, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 123, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 16, i8 0, i8 -1 }], [120 x i8] zeroinitializer }, align 32
@sm8250_usb3_pcs_tbl = internal constant { [14 x %struct.qmp_phy_init_tbl], [56 x i8] } { [14 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 33, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 169, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 792, i32 248, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 824, i32 7, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@qmp_v4_sm8250_usbphy_clk_l = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.29, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@msm8996_usb3phy_reset_l = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@qmp_v4_usb3phy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 20, i32 776, i32 788, i32 0, i32 64, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ref_clk_src\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"common\00", [25 x i8] zeroinitializer }, align 32
@qmp_v4_dp_serdes_tbl = internal constant { [20 x %struct.qmp_phy_init_tbl], [48 x i8] } { [20 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 388, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 31, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@qmp_v4_dp_tx_tbl = internal constant { [14 x %struct.qmp_phy_init_tbl], [56 x i8] } { [14 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 232, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 42, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 32, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@qmp_v4_dp_serdes_tbl_rbr = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 344, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 105, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 111, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 4, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v4_dp_serdes_tbl_hbr = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 344, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 105, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 8, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v4_dp_serdes_tbl_hbr2 = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 344, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 140, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 8, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v4_dp_serdes_tbl_hbr3 = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 344, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 105, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 42, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 8, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@qmp_v4_phy_clk_l = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.29, ptr @.str.24, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@qcom_qmp_v4_dp_phy_calibrate.cfg1_settings = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \13#\1D", [28 x i8] zeroinitializer }, align 32
@sm8150_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_serdes_tbl, i32 40, ptr null, i32 0, ptr @sm8150_usb3_tx_tbl, i32 5, ptr null, i32 0, ptr @sm8150_usb3_rx_tbl, i32 36, ptr null, i32 0, ptr @sm8150_usb3_pcs_tbl, i32 13, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sc8180x_dpphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 6, i32 1, ptr @qmp_v4_dp_serdes_tbl, i32 20, ptr null, i32 0, ptr @qmp_v4_dp_tx_tbl, i32 14, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @qmp_v4_dp_serdes_tbl_rbr, i32 7, ptr @qmp_v4_dp_serdes_tbl_hbr, i32 7, ptr @qmp_v4_dp_serdes_tbl_hbr2, i32 7, ptr @qmp_v4_dp_serdes_tbl_hbr3, i32 7, ptr @qcom_qmp_v4_phy_configure_dp_phy, ptr @qcom_qmp_v4_phy_configure_dp_tx, ptr @qcom_qmp_v4_dp_phy_calibrate, ptr @qcom_qmp_v4_phy_dp_aux_init, ptr @qmp_v3_phy_clk_l, i32 4, ptr @sc7180_usb3phy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v3_usb3phy_regs_layout, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8150_usb3_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 213, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 32, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@sm8150_usb3_rx_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 20, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 148, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 179, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 16, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@sm8150_usb3_pcs_tbl = internal constant { [13 x %struct.qmp_phy_init_tbl], [36 x i8] } { [13 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 33, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 792, i32 248, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 824, i32 7, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_reset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 5519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get %s reset\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_qmp_phy_reset_init\00", [40 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_reset_init._entry_ptr = internal global ptr @qcom_qmp_phy_reset_init._entry, section ".printk_index", align 4
@qcom_qmp_phy_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 5867, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Underspecified device tree, falling back to legacy register regions\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_qmp_phy_create\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry_ptr = internal global ptr @qcom_qmp_phy_create._entry, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pipe%d\00", [25 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.4, i32 5901, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get lane%d pipe_clk, %d\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry_ptr.39 = internal global ptr @qcom_qmp_phy_create._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lane%d\00", [25 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.4, i32 5912, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get lane%d reset\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry_ptr.43 = internal global ptr @qcom_qmp_phy_create._entry.41, section ".printk_index", align 4
@qcom_qmp_pcie_ufs_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @qcom_qmp_phy_enable, ptr @qcom_qmp_phy_disable, ptr @qcom_qmp_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_dp_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @qcom_qmp_phy_init, ptr @qcom_qmp_phy_exit, ptr @qcom_qmp_phy_power_on, ptr @qcom_qmp_phy_power_off, ptr @qcom_qmp_phy_set_mode, ptr null, ptr null, ptr @qcom_qmp_dp_phy_configure, ptr null, ptr null, ptr @qcom_qmp_dp_phy_calibrate, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_gen_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @qcom_qmp_phy_enable, ptr @qcom_qmp_phy_disable, ptr null, ptr null, ptr @qcom_qmp_phy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.4, i32 5927, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to create qphy %d\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_create._entry_ptr.46 = internal global ptr @qcom_qmp_phy_create._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ufsphy\00", [25 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 5149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get UFS reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom_qmp_phy_init\00", [46 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_init._entry_ptr = internal global ptr @qcom_qmp_phy_init._entry, section ".printk_index", align 4
@qcom_qmp_phy_com_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 5014, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable regulators, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_qmp_phy_com_init\00", [42 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_com_init._entry_ptr = internal global ptr @qcom_qmp_phy_com_init._entry, section ".printk_index", align 4
@qcom_qmp_phy_com_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 5022, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s reset assert failed\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_com_init._entry_ptr.54 = internal global ptr @qcom_qmp_phy_com_init._entry.52, section ".printk_index", align 4
@qcom_qmp_phy_com_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 5031, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s reset deassert failed\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_com_init._entry_ptr.57 = internal global ptr @qcom_qmp_phy_com_init._entry.55, section ".printk_index", align 4
@qcom_qmp_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 5190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lane%d reset deassert failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom_qmp_phy_power_on\00", [42 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_power_on._entry_ptr = internal global ptr @qcom_qmp_phy_power_on._entry, section ".printk_index", align 4
@qcom_qmp_phy_power_on._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 5197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pipe_clk enable failed err=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_power_on._entry_ptr.62 = internal global ptr @qcom_qmp_phy_power_on._entry.60, section ".printk_index", align 4
@qcom_qmp_phy_power_on._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.4, i32 5287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy initialization timed-out\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_power_on._entry_ptr.65 = internal global ptr @qcom_qmp_phy_power_on._entry.63, section ".printk_index", align 4
@qcom_qmp_phy_serdes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 4511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy common block init timed-out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_qmp_phy_serdes_init\00", [39 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_serdes_init._entry_ptr = internal global ptr @qcom_qmp_phy_serdes_init._entry, section ".printk_index", align 4
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@phy_pipe_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 5575, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%pOFn: No clock-output-names\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy_pipe_clk_register\00", [42 x i8] zeroinitializer }, align 32
@phy_pipe_clk_register._entry_ptr = internal global ptr @phy_pipe_clk_register._entry, section ".printk_index", align 4
@clk_fixed_rate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s::link_clk\00", [19 x i8] zeroinitializer }, align 32
@qcom_qmp_dp_link_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_qmp_dp_link_clk_recalc_rate, ptr null, ptr @qcom_qmp_dp_link_clk_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s::vco_div_clk\00", [16 x i8] zeroinitializer }, align 32
@qcom_qmp_dp_pixel_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_qmp_dp_pixel_clk_recalc_rate, ptr null, ptr @qcom_qmp_dp_pixel_clk_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@qcom_qmp_dp_clks_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 5744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom_qmp_dp_clks_hw_get\00", [40 x i8] zeroinitializer }, align 32
@qcom_qmp_dp_clks_hw_get._entry_ptr = internal global ptr @qcom_qmp_dp_clks_hw_get._entry, section ".printk_index", align 4
@ipq8074_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @ipq8074_usb3_serdes_tbl, i32 32, ptr null, i32 0, ptr @msm8996_usb3_tx_tbl, i32 3, ptr null, i32 0, ptr @ipq8074_usb3_rx_tbl, i32 9, ptr null, i32 0, ptr @ipq8074_usb3_pcs_tbl, i32 23, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_phy_clk_l, i32 3, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@msm8996_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 3, ptr @msm8996_pcie_serdes_tbl, i32 43, ptr null, i32 0, ptr @msm8996_pcie_tx_tbl, i32 2, ptr null, i32 0, ptr @msm8996_pcie_rx_tbl, i32 10, ptr null, i32 0, ptr @msm8996_pcie_pcs_tbl, i32 9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_phy_clk_l, i32 3, ptr @msm8996_pciephy_reset_l, i32 3, ptr @qmp_phy_vreg_l, i32 2, ptr @pciephy_regs_layout, i32 10, i32 3, i32 1, i32 64, i8 1, i8 1, i8 1, i32 10, i32 11, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@msm8996_ufs_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 5, i32 1, ptr @msm8996_ufs_serdes_tbl, i32 47, ptr null, i32 0, ptr @msm8996_ufs_tx_tbl, i32 2, ptr null, i32 0, ptr @msm8996_ufs_rx_tbl, i32 11, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_ufs_phy_clk_l, i32 1, ptr null, i32 0, ptr @qmp_phy_vreg_l, i32 2, ptr @msm8996_ufsphy_regs_layout, i32 1, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@msm8996_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @msm8996_usb3_serdes_tbl, i32 32, ptr null, i32 0, ptr @msm8996_usb3_tx_tbl, i32 3, ptr null, i32 0, ptr @msm8996_usb3_rx_tbl, i32 10, ptr null, i32 0, ptr @msm8996_usb3_pcs_tbl, i32 9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_phy_clk_l, i32 3, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@msm8998_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @msm8998_pcie_serdes_tbl, i32 42, ptr null, i32 0, ptr @msm8998_pcie_tx_tbl, i32 4, ptr null, i32 0, ptr @msm8998_pcie_rx_tbl, i32 14, ptr null, i32 0, ptr @msm8998_pcie_pcs_tbl, i32 10, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_phy_clk_l, i32 3, ptr @ipq8074_pciephy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @pciephy_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sdm845_ufsphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 5, i32 2, ptr @sdm845_ufsphy_serdes_tbl, i32 37, ptr null, i32 0, ptr @sdm845_ufsphy_tx_tbl, i32 3, ptr null, i32 0, ptr @sdm845_ufsphy_rx_tbl, i32 16, ptr null, i32 0, ptr @sdm845_ufsphy_pcs_tbl, i32 8, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_ufs_phy_clk_l, i32 2, ptr null, i32 0, ptr @qmp_phy_vreg_l, i32 2, ptr @sdm845_ufsphy_regs_layout, i32 1, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 1, i8 1 }, [60 x i8] zeroinitializer }, align 32
@ipq8074_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @ipq8074_pcie_serdes_tbl, i32 40, ptr null, i32 0, ptr @ipq8074_pcie_tx_tbl, i32 6, ptr null, i32 0, ptr @ipq8074_pcie_rx_tbl, i32 7, ptr null, i32 0, ptr @ipq8074_pcie_pcs_tbl, i32 13, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ipq8074_pciephy_clk_l, i32 2, ptr @ipq8074_pciephy_reset_l, i32 2, ptr null, i32 0, ptr @pciephy_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@ipq6018_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @ipq6018_pcie_serdes_tbl, i32 46, ptr null, i32 0, ptr @ipq6018_pcie_tx_tbl, i32 3, ptr null, i32 0, ptr @ipq6018_pcie_rx_tbl, i32 30, ptr null, i32 0, ptr @ipq6018_pcie_pcs_tbl, i32 16, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ipq8074_pciephy_clk_l, i32 2, ptr @ipq8074_pciephy_reset_l, i32 2, ptr null, i32 0, ptr @ipq_pciephy_gen3_regs_layout, i32 3, i32 3, i32 0, i32 0, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sc8180x_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @sc8180x_qmp_pcie_serdes_tbl, i32 42, ptr null, i32 0, ptr @sc8180x_qmp_pcie_tx_tbl, i32 2, ptr null, i32 0, ptr @sc8180x_qmp_pcie_rx_tbl, i32 36, ptr null, i32 0, ptr @sc8180x_qmp_pcie_pcs_tbl, i32 5, ptr null, i32 0, ptr @sc8180x_qmp_pcie_pcs_misc_tbl, i32 7, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8250_pcie_regs_layout, i32 3, i32 3, i32 0, i32 0, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8150_ufsphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 5, i32 2, ptr @sm8150_ufsphy_serdes_tbl, i32 25, ptr null, i32 0, ptr @sm8150_ufsphy_tx_tbl, i32 6, ptr null, i32 0, ptr @sm8150_ufsphy_rx_tbl, i32 34, ptr null, i32 0, ptr @sm8150_ufsphy_pcs_tbl, i32 7, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_ufs_phy_clk_l, i32 2, ptr null, i32 0, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8150_ufsphy_regs_layout, i32 1, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sdm845_qhp_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @sdm845_qhp_pcie_serdes_tbl, i32 45, ptr null, i32 0, ptr @sdm845_qhp_pcie_tx_tbl, i32 56, ptr null, i32 0, ptr @sdm845_qhp_pcie_rx_tbl, i32 0, ptr null, i32 0, ptr @sdm845_qhp_pcie_pcs_tbl, i32 7, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sdm845_qhp_pciephy_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sdm845_qmp_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @sdm845_qmp_pcie_serdes_tbl, i32 42, ptr null, i32 0, ptr @sdm845_qmp_pcie_tx_tbl, i32 4, ptr null, i32 0, ptr @sdm845_qmp_pcie_rx_tbl, i32 16, ptr null, i32 0, ptr @sdm845_qmp_pcie_pcs_tbl, i32 17, ptr null, i32 0, ptr @sdm845_qmp_pcie_pcs_misc_tbl, i32 5, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sdm845_qmp_pciephy_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@qmp_v3_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @qmp_v3_usb3_serdes_tbl, i32 36, ptr null, i32 0, ptr @qmp_v3_usb3_tx_tbl, i32 5, ptr null, i32 0, ptr @qmp_v3_usb3_rx_tbl, i32 9, ptr null, i32 0, ptr @qmp_v3_usb3_pcs_tbl, i32 39, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v3_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v3_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_uniphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @qmp_v3_usb3_uniphy_serdes_tbl, i32 36, ptr null, i32 0, ptr @qmp_v3_usb3_uniphy_tx_tbl, i32 5, ptr null, i32 0, ptr @qmp_v3_usb3_uniphy_rx_tbl, i32 11, ptr null, i32 0, ptr @qmp_v3_usb3_uniphy_pcs_tbl, i32 41, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v3_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v3_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@msm8998_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @msm8998_usb3_serdes_tbl, i32 38, ptr null, i32 0, ptr @msm8998_usb3_tx_tbl, i32 4, ptr null, i32 0, ptr @msm8998_usb3_rx_tbl, i32 17, ptr null, i32 0, ptr @msm8998_usb3_pcs_tbl, i32 38, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @msm8996_phy_clk_l, i32 3, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v3_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm6115_ufsphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 5, i32 1, ptr @sm6115_ufsphy_serdes_tbl, i32 51, ptr null, i32 0, ptr @sm6115_ufsphy_tx_tbl, i32 2, ptr null, i32 0, ptr @sm6115_ufsphy_rx_tbl, i32 15, ptr null, i32 0, ptr @sm6115_ufsphy_pcs_tbl, i32 9, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_ufs_phy_clk_l, i32 2, ptr null, i32 0, ptr @qmp_phy_vreg_l, i32 2, ptr @sm6115_ufsphy_regs_layout, i32 1, i32 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@sm8150_usb3_uniphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_uniphy_serdes_tbl, i32 40, ptr null, i32 0, ptr @sm8150_usb3_uniphy_tx_tbl, i32 4, ptr null, i32 0, ptr @sm8150_usb3_uniphy_rx_tbl, i32 36, ptr null, i32 0, ptr @sm8150_usb3_uniphy_pcs_tbl, i32 16, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3_uniphy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8250_usb3_uniphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_uniphy_serdes_tbl, i32 40, ptr null, i32 0, ptr @sm8250_usb3_uniphy_tx_tbl, i32 6, ptr null, i32 0, ptr @sm8250_usb3_uniphy_rx_tbl, i32 36, ptr null, i32 0, ptr @sm8250_usb3_uniphy_pcs_tbl, i32 16, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3_uniphy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x1_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @sm8250_qmp_pcie_serdes_tbl, i32 41, ptr @sm8250_qmp_gen3x1_pcie_serdes_tbl, i32 1, ptr @sm8250_qmp_pcie_tx_tbl, i32 3, ptr null, i32 0, ptr @sm8250_qmp_pcie_rx_tbl, i32 30, ptr @sm8250_qmp_gen3x1_pcie_rx_tbl, i32 6, ptr @sm8250_qmp_pcie_pcs_tbl, i32 3, ptr @sm8250_qmp_gen3x1_pcie_pcs_tbl, i32 2, ptr @sm8250_qmp_pcie_pcs_misc_tbl, i32 7, ptr @sm8250_qmp_gen3x1_pcie_pcs_misc_tbl, i32 2, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8250_pcie_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x2_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 2, ptr @sm8250_qmp_pcie_serdes_tbl, i32 41, ptr null, i32 0, ptr @sm8250_qmp_pcie_tx_tbl, i32 3, ptr @sm8250_qmp_gen3x2_pcie_tx_tbl, i32 1, ptr @sm8250_qmp_pcie_rx_tbl, i32 30, ptr @sm8250_qmp_gen3x2_pcie_rx_tbl, i32 4, ptr @sm8250_qmp_pcie_pcs_tbl, i32 3, ptr @sm8250_qmp_gen3x2_pcie_pcs_tbl, i32 2, ptr @sm8250_qmp_pcie_pcs_misc_tbl, i32 7, ptr @sm8250_qmp_gen3x2_pcie_pcs_misc_tbl, i32 2, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8250_pcie_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8350_ufsphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 5, i32 2, ptr @sm8350_ufsphy_serdes_tbl, i32 25, ptr null, i32 0, ptr @sm8350_ufsphy_tx_tbl, i32 9, ptr null, i32 0, ptr @sm8350_ufsphy_rx_tbl, i32 37, ptr null, i32 0, ptr @sm8350_ufsphy_pcs_tbl, i32 15, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_ufs_phy_clk_l, i32 2, ptr null, i32 0, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8150_ufsphy_regs_layout, i32 1, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sdx55_qmp_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 2, ptr @sdx55_qmp_pcie_serdes_tbl, i32 39, ptr null, i32 0, ptr @sdx55_qmp_pcie_tx_tbl, i32 5, ptr null, i32 0, ptr @sdx55_qmp_pcie_rx_tbl, i32 25, ptr null, i32 0, ptr @sdx55_qmp_pcie_pcs_tbl, i32 4, ptr null, i32 0, ptr @sdx55_qmp_pcie_pcs_misc_tbl, i32 7, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8250_pcie_regs_layout, i32 3, i32 1, i32 0, i32 128, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sdx55_usb3_uniphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_uniphy_serdes_tbl, i32 40, ptr null, i32 0, ptr @sdx55_usb3_uniphy_tx_tbl, i32 5, ptr null, i32 0, ptr @sdx55_usb3_uniphy_rx_tbl, i32 36, ptr null, i32 0, ptr @sm8250_usb3_uniphy_pcs_tbl, i32 16, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_sdx55_usbphy_clk_l, i32 3, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3_uniphy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8350_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_serdes_tbl, i32 40, ptr null, i32 0, ptr @sm8350_usb3_tx_tbl, i32 10, ptr null, i32 0, ptr @sm8350_usb3_rx_tbl, i32 38, ptr null, i32 0, ptr @sm8350_usb3_pcs_tbl, i32 18, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_sm8250_usbphy_clk_l, i32 3, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qmp_v4_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8350_usb3_uniphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @sm8150_usb3_uniphy_serdes_tbl, i32 40, ptr null, i32 0, ptr @sm8350_usb3_uniphy_tx_tbl, i32 7, ptr null, i32 0, ptr @sm8350_usb3_uniphy_rx_tbl, i32 31, ptr null, i32 0, ptr @sm8350_usb3_uniphy_pcs_tbl, i32 16, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qmp_v4_phy_clk_l, i32 4, ptr @msm8996_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8350_usb3_uniphy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 1, i32 10, i32 11, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen3x1_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 1, ptr @sm8450_qmp_gen3x1_pcie_serdes_tbl, i32 42, ptr null, i32 0, ptr @sm8450_qmp_gen3x1_pcie_tx_tbl, i32 5, ptr null, i32 0, ptr @sm8450_qmp_gen3x1_pcie_rx_tbl, i32 22, ptr null, i32 0, ptr @sm8450_qmp_gen3x1_pcie_pcs_tbl, i32 3, ptr null, i32 0, ptr @sm8450_qmp_gen3x1_pcie_pcs_misc_tbl, i32 4, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8250_pcie_regs_layout, i32 3, i32 3, i32 0, i32 64, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen4x2_pciephy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 2, i32 2, ptr @sm8450_qmp_gen4x2_pcie_serdes_tbl, i32 41, ptr null, i32 0, ptr @sm8450_qmp_gen4x2_pcie_tx_tbl, i32 4, ptr null, i32 0, ptr @sm8450_qmp_gen4x2_pcie_rx_tbl, i32 43, ptr null, i32 0, ptr @sm8450_qmp_gen4x2_pcie_pcs_tbl, i32 4, ptr null, i32 0, ptr @sm8450_qmp_gen4x2_pcie_pcs_misc_tbl, i32 6, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sdm845_pciephy_clk_l, i32 4, ptr @sdm845_pciephy_reset_l, i32 1, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8250_pcie_regs_layout, i32 3, i32 3, i32 0, i32 128, i8 0, i8 0, i8 1, i32 995, i32 1005, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sm8450_ufsphy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 5, i32 2, ptr @sm8350_ufsphy_serdes_tbl, i32 25, ptr null, i32 0, ptr @sm8350_ufsphy_tx_tbl, i32 9, ptr null, i32 0, ptr @sm8350_ufsphy_rx_tbl, i32 37, ptr null, i32 0, ptr @sm8350_ufsphy_pcs_tbl, i32 15, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @sm8450_ufs_phy_clk_l, i32 3, ptr null, i32 0, ptr @qmp_phy_vreg_l, i32 2, ptr @sm8150_ufsphy_regs_layout, i32 1, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@qcm2290_usb3phy_cfg = internal constant { %struct.qmp_phy_cfg, [60 x i8] } { %struct.qmp_phy_cfg { i32 4, i32 1, ptr @qcm2290_usb3_serdes_tbl, i32 38, ptr null, i32 0, ptr @qcm2290_usb3_tx_tbl, i32 5, ptr null, i32 0, ptr @qcm2290_usb3_rx_tbl, i32 17, ptr null, i32 0, ptr @qcm2290_usb3_pcs_tbl, i32 21, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @qcm2290_usb3phy_clk_l, i32 3, ptr @qcm2290_usb3phy_reset_l, i32 2, ptr @qmp_phy_vreg_l, i32 2, ptr @qcm2290_usb3phy_regs_layout, i32 3, i32 1, i32 0, i32 64, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@ipq8074_usb3_serdes_tbl = internal constant { [32 x %struct.qmp_phy_init_tbl], [96 x i8] } { [32 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 172, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }], [96 x i8] zeroinitializer }, align 32
@msm8996_usb3_tx_tbl = internal constant { [3 x %struct.qmp_phy_init_tbl], [60 x i8] } { [3 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 104, i32 69, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 6, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@ipq8074_usb3_rx_tbl = internal constant { [9 x %struct.qmp_phy_init_tbl], [52 x i8] } { [9 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 28, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 184, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 0, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@ipq8074_usb3_pcs_tbl = internal constant { [23 x %struct.qmp_phy_init_tbl], [76 x i8] } { [23 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 36, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 131, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 133, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 209, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 134, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 68, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 15, i8 0, i8 -1 }], [76 x i8] zeroinitializer }, align 32
@msm8996_phy_clk_l = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@usb3phy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 192, i32 196, i32 200, i32 204, i32 208, i32 0, i32 8, i32 0, i32 380, i32 212, i32 216, i32 376, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@msm8996_pcie_serdes_tbl = internal constant { [43 x %struct.qmp_phy_init_tbl], [156 x i8] } { [43 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 51, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 324, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 51, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 64, i8 0, i8 -1 }], [156 x i8] zeroinitializer }, align 32
@msm8996_pcie_tx_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 104, i32 69, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 6, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@msm8996_pcie_rx_tbl = internal constant { [10 x %struct.qmp_phy_init_tbl], [40 x i8] } { [10 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 272, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 219, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 288, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 25, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@msm8996_pcie_pcs_tbl = internal constant { [9 x %struct.qmp_phy_init_tbl], [52 x i8] } { [9 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 88, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 4, i32 5, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 4, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 108, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 163, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 14, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@msm8996_pciephy_reset_l = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.26, ptr @.str.30, ptr @.str.75], [20 x i8] zeroinitializer }, align 32
@pciephy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 1024, i32 1028, i32 1032, i32 1096, i32 168, i32 196, i32 200, i32 204, i32 208, i32 212, i32 0, i32 8, i32 0, i32 372, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@msm8996_ufs_serdes_tbl = internal constant { [47 x %struct.qmp_phy_init_tbl], [140 x i8] } { [47 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 4, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 215, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 324, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 300, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 304, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 152, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 232, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 308, i32 214, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 50, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 0, i8 0, i8 -1 }], [140 x i8] zeroinitializer }, align 32
@msm8996_ufs_tx_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 104, i32 69, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 2, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@msm8996_ufs_rx_tbl = internal constant { [11 x %struct.qmp_phy_init_tbl], [60 x i8] } { [11 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 280, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 300, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 91, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 14, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@msm8996_ufs_phy_clk_l = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.24], [28 x i8] zeroinitializer }, align 32
@msm8996_ufsphy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 360, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@msm8996_usb3_serdes_tbl = internal constant { [32 x %struct.qmp_phy_init_tbl], [96 x i8] } { [32 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 172, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }], [96 x i8] zeroinitializer }, align 32
@msm8996_usb3_rx_tbl = internal constant { [10 x %struct.qmp_phy_init_tbl], [40 x i8] } { [10 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 64, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 187, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 22, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@msm8996_usb3_pcs_tbl = internal constant { [9 x %struct.qmp_phy_init_tbl], [52 x i8] } { [9 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 6, i32 3, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 5, i32 2, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 7, i32 9, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 66, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 9, i32 133, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 209, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 8, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@msm8998_pcie_serdes_tbl = internal constant { [42 x %struct.qmp_phy_init_tbl], [104 x i8] } { [42 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 201, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 288, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 144, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 51, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 126, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 21, i8 0, i8 -1 }], [104 x i8] zeroinitializer }, align 32
@msm8998_pcie_tx_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 68, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 6, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@msm8998_pcie_rx_tbl = internal constant { [14 x %struct.qmp_phy_init_tbl], [56 x i8] } { [14 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 260, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 113, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 64, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@msm8998_pcie_pcs_tbl = internal constant { [10 x %struct.qmp_phy_init_tbl], [40 x i8] } { [10 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 84, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 115, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 3, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@ipq8074_pciephy_reset_l = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@sdm845_ufsphy_serdes_tbl = internal constant { [37 x %struct.qmp_phy_init_tbl], [100 x i8] } { [37 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 213, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 218, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 152, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 108, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 193, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 50, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 68, i8 0, i8 -1 }], [100 x i8] zeroinitializer }, align 32
@sdm845_ufsphy_tx_tbl = internal constant { [3 x %struct.qmp_phy_init_tbl], [60 x i8] } { [3 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 140, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@sdm845_ufsphy_rx_tbl = internal constant { [16 x %struct.qmp_phy_init_tbl], [32 x i8] } { [16 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 264, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 91, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 129, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 89, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@sdm845_ufsphy_pcs_tbl = internal constant { [8 x %struct.qmp_phy_init_tbl], [32 x i8] } { [8 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 320, i32 110, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 308, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 67, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 154, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 2, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@sdm845_ufs_phy_clk_l = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.76], [24 x i8] zeroinitializer }, align 32
@sdm845_ufsphy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 352, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_aux\00", [24 x i8] zeroinitializer }, align 32
@ipq8074_pcie_serdes_tbl = internal constant { [40 x %struct.qmp_phy_init_tbl], [96 x i8] } { [40 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 324, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 3332, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 51, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 25, i8 0, i8 -1 }], [96 x i8] zeroinitializer }, align 32
@ipq8074_pcie_tx_tbl = internal constant { [6 x %struct.qmp_phy_init_tbl], [56 x i8] } { [6 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 104, i32 69, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 10, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@ipq8074_pcie_rx_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 272, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 219, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 4, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@ipq8074_pcie_pcs_tbl = internal constant { [13 x %struct.qmp_phy_init_tbl], [36 x i8] } { [13 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 84, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 4, i32 115, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 10, i32 0, i8 1, i8 -1 }, %struct.qmp_phy_init_tbl { i32 11, i32 3, i8 1, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@ipq8074_pciephy_clk_l = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@ipq6018_pcie_serdes_tbl = internal constant { [46 x %struct.qmp_phy_init_tbl], [152 x i8] } { [46 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 28, i32 125, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 144, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 212, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 41, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 104, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 83, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 232, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 300, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 304, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 50, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 8, i8 0, i8 -1 }], [152 x i8] zeroinitializer }, align 32
@ipq6018_pcie_tx_tbl = internal constant { [3 x %struct.qmp_phy_init_tbl], [60 x i8] } { [3 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@ipq6018_pcie_rx_tbl = internal constant { [30 x %struct.qmp_phy_init_tbl], [88 x i8] } { [30 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 8, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 112, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 97, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 115, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 240, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 211, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 177, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 177, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }], [88 x i8] zeroinitializer }, align 32
@ipq6018_pcie_pcs_tbl = internal constant { [16 x %struct.qmp_phy_init_tbl], [32 x i8] } { [16 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 152, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1036, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1044, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1052, i32 193, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1088, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1096, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1168, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1184, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1212, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1248, i32 88, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@ipq_pciephy_gen3_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 20, i32 0, i32 0, i32 0, i32 64, i32 0], [52 x i8] zeroinitializer }, align 32
@sc8180x_qmp_pcie_serdes_tbl = internal constant { [42 x %struct.qmp_phy_init_tbl], [104 x i8] } { [42 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 104, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 144, i8 0, i8 -1 }], [104 x i8] zeroinitializer }, align 32
@sc8180x_qmp_pcie_tx_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 5, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sc8180x_qmp_pcie_rx_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 284, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 232, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 110, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 110, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 112, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 55, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 212, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 219, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 57, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 228, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 236, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 57, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 219, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 3, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@sc8180x_qmp_pcie_pcs_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 420, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 1, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@sc8180x_qmp_pcie_pcs_misc_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 144, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 88, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 193, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sdm845_pciephy_clk_l = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@sdm845_pciephy_reset_l = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@sm8250_pcie_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 20, i32 0, i32 0, i32 0, i32 64, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refgen\00", [25 x i8] zeroinitializer }, align 32
@sm8150_ufsphy_serdes_tbl = internal constant { [25 x %struct.qmp_phy_init_tbl], [84 x i8] } { [25 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 217, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 172, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 152, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 50, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 221, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 35, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 6, i8 0, i8 -1 }], [84 x i8] zeroinitializer }, align 32
@sm8150_ufsphy_tx_tbl = internal constant { [6 x %struct.qmp_phy_init_tbl], [56 x i8] } { [6 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 216, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 12, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@sm8150_ufsphy_rx_tbl = internal constant { [34 x %struct.qmp_phy_init_tbl], [104 x i8] } { [34 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 288, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 241, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 29, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 246, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 61, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 224, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 177, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 224, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 177, i8 0, i8 -1 }], [104 x i8] zeroinitializer }, align 32
@sm8150_ufsphy_pcs_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 344, i32 109, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 67, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 336, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 2, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sm8150_ufsphy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@sdm845_qhp_pcie_serdes_tbl = internal constant { [45 x %struct.qmp_phy_init_tbl], [132 x i8] } { [45 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 220, i32 39, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 176, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 108, i32 140, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 104, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 288, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 300, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 304, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 336, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 460, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 488, i32 115, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 496, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 508, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 540, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 548, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 552, i32 34, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 556, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 456, i32 7, i8 0, i8 -1 }], [132 x i8] zeroinitializer }, align 32
@sdm845_qhp_pcie_tx_tbl = internal constant { [56 x %struct.qmp_phy_init_tbl], [160 x i8] } { [56 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 12, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 37, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 288, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 38, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 304, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 308, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 352, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 112, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 139, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 62, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 456, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 560, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 564, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 568, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 676, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 684, i32 195, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 688, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 696, i32 188, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 704, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 708, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 716, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 680, i32 1, i8 0, i8 -1 }], [160 x i8] zeroinitializer }, align 32
@sdm845_qhp_pcie_rx_tbl = internal constant { [0 x %struct.qmp_phy_init_tbl], [32 x i8] } zeroinitializer, align 32
@sdm845_qhp_pcie_pcs_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 348, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 80, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 159, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sdm845_qhp_pciephy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 684, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@sdm845_qmp_pcie_serdes_tbl = internal constant { [42 x %struct.qmp_phy_init_tbl], [104 x i8] } { [42 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 201, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 288, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 144, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 51, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 126, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 21, i8 0, i8 -1 }], [104 x i8] zeroinitializer }, align 32
@sdm845_qmp_pcie_tx_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 68, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 6, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sdm845_qmp_pcie_rx_tbl = internal constant { [16 x %struct.qmp_phy_init_tbl], [32 x i8] } { [16 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 260, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 113, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 89, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 89, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 113, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 64, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@sdm845_qmp_pcie_pcs_tbl = internal constant { [17 x %struct.qmp_phy_init_tbl], [52 x i8] } { [17 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 84, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 131, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 115, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 187, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 524, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 108, i32 0, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@sdm845_qmp_pcie_pcs_misc_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 44, i32 82, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 0, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@sdm845_qmp_pciephy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 372, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_uniphy_serdes_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 201, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 133, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_uniphy_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 96, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 198, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 6, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_uniphy_rx_tbl = internal constant { [11 x %struct.qmp_phy_init_tbl], [60 x i8] } { [11 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 192, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 80, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 78, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 117, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@qmp_v3_usb3_uniphy_pcs_tbl = internal constant { [41 x %struct.qmp_phy_init_tbl], [116 x i8] } { [41 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 200, i32 131, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 209, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 186, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 181, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 100, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 106, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 29, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 68, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 134, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 524, i32 33, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 528, i32 96, i8 0, i8 -1 }], [116 x i8] zeroinitializer }, align 32
@msm8998_usb3_serdes_tbl = internal constant { [38 x %struct.qmp_phy_init_tbl], [120 x i8] } { [38 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 312, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 104, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 201, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 156, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 152, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 133, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }], [120 x i8] zeroinitializer }, align 32
@msm8998_usb3_tx_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 96, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 0, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@msm8998_usb3_rx_tbl = internal constant { [17 x %struct.qmp_phy_init_tbl], [52 x i8] } { [17 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 48, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 78, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 67, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 5, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@msm8998_usb3_pcs_tbl = internal constant { [38 x %struct.qmp_phy_init_tbl], [120 x i8] } { [38 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 200, i32 131, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 209, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 100, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 183, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 78, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 101, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 107, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 68, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 138, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 134, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 19, i8 0, i8 -1 }], [120 x i8] zeroinitializer }, align 32
@sm6115_ufsphy_serdes_tbl = internal constant { [51 x %struct.qmp_phy_init_tbl], [156 x i8] } { [51 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 404, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 324, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 300, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 304, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 152, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 232, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 308, i32 214, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 50, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 92, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 320, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 68, i8 0, i8 -1 }], [156 x i8] zeroinitializer }, align 32
@sm6115_ufsphy_tx_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 104, i32 69, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 6, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm6115_ufsphy_rx_tbl = internal constant { [15 x %struct.qmp_phy_init_tbl], [44 x i8] } { [15 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 280, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 300, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 91, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 91, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sm6115_ufsphy_pcs_tbl = internal constant { [9 x %struct.qmp_phy_init_tbl], [52 x i8] } { [9 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 340, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 328, i32 109, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 316, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 320, i32 154, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@sm6115_ufsphy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 360, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@sm8150_usb3_uniphy_serdes_tbl = internal constant { [40 x %struct.qmp_phy_init_tbl], [96 x i8] } { [40 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 234, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }], [96 x i8] zeroinitializer }, align 32
@sm8150_usb3_uniphy_tx_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 149, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 5, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sm8150_usb3_uniphy_rx_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 384, i32 184, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 55, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 239, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 179, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@sm8150_usb3_uniphy_pcs_tbl = internal constant { [16 x %struct.qmp_phy_init_tbl], [32 x i8] } { [16 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1592, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1560, i32 248, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 33, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 12, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@qmp_v4_usb3_uniphy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 20, i32 1544, i32 1556, i32 0, i32 64, i32 0], [52 x i8] zeroinitializer }, align 32
@sm8250_usb3_uniphy_tx_tbl = internal constant { [6 x %struct.qmp_phy_init_tbl], [56 x i8] } { [6 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 213, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 2, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@sm8250_usb3_uniphy_rx_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 384, i32 184, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 123, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 31, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@sm8250_usb3_uniphy_pcs_tbl = internal constant { [16 x %struct.qmp_phy_init_tbl], [32 x i8] } { [16 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 169, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1592, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 1560, i32 248, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 33, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@sm8250_qmp_pcie_serdes_tbl = internal constant { [41 x %struct.qmp_phy_init_tbl], [116 x i8] } { [41 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 104, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 144, i8 0, i8 -1 }], [116 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x1_pcie_serdes_tbl = internal constant { [1 x %struct.qmp_phy_init_tbl], [20 x i8] } { [1 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 80, i32 7, i8 0, i8 -1 }], [20 x i8] zeroinitializer }, align 32
@sm8250_qmp_pcie_tx_tbl = internal constant { [3 x %struct.qmp_phy_init_tbl], [60 x i8] } { [3 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 53, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 17, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@sm8250_qmp_pcie_rx_tbl = internal constant { [30 x %struct.qmp_phy_init_tbl], [88 x i8] } { [30 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 8, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 112, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 28, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 212, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 219, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 228, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 236, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 54, i8 0, i8 -1 }], [88 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x1_pcie_rx_tbl = internal constant { [6 x %struct.qmp_phy_init_tbl], [56 x i8] } { [6 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 100, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 232, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 48, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@sm8250_qmp_pcie_pcs_tbl = internal constant { [3 x %struct.qmp_phy_init_tbl], [60 x i8] } { [3 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 420, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 11, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x1_pcie_pcs_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 220, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 18, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm8250_qmp_pcie_pcs_misc_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 144, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 51, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 88, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 193, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x1_pcie_pcs_misc_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 80, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 15, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x2_pcie_tx_tbl = internal constant { [1 x %struct.qmp_phy_init_tbl], [20 x i8] } { [1 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 260, i32 32, i8 0, i8 -1 }], [20 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x2_pcie_rx_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 232, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 56, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x2_pcie_pcs_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 220, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 15, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm8250_qmp_gen3x2_pcie_pcs_misc_tbl = internal constant { [2 x %struct.qmp_phy_init_tbl], [40 x i8] } { [2 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 12, i32 13, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 7, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm8350_ufsphy_serdes_tbl = internal constant { [25 x %struct.qmp_phy_init_tbl], [84 x i8] } { [25 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 217, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 172, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 152, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 101, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 221, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 35, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 6, i8 0, i8 -1 }], [84 x i8] zeroinitializer }, align 32
@sm8350_ufsphy_tx_tbl = internal constant { [9 x %struct.qmp_phy_init_tbl], [52 x i8] } { [9 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 376, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 245, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 12, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@sm8350_ufsphy_rx_tbl = internal constant { [37 x %struct.qmp_phy_init_tbl], [100 x i8] } { [37 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 288, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 90, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 241, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 27, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 232, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 109, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 352, i32 109, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 237, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 60, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 224, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 183, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 224, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 200, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 59, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 183, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 12, i8 0, i8 -1 }], [100 x i8] zeroinitializer }, align 32
@sm8350_ufsphy_pcs_tbl = internal constant { [15 x %struct.qmp_phy_init_tbl], [44 x i8] } { [15 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 344, i32 109, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 67, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 336, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 216, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 352, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 2, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sdx55_qmp_pcie_serdes_tbl = internal constant { [39 x %struct.qmp_phy_init_tbl], [108 x i8] } { [39 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 12, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 25, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 70, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 80, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 251, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 251, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 86, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 29, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 34, i8 0, i8 -1 }], [108 x i8] zeroinitializer }, align 32
@sdx55_qmp_pcie_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 136, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 246, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 0, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@sdx55_qmp_pcie_rx_tbl = internal constant { [25 x %struct.qmp_phy_init_tbl], [84 x i8] } { [25 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 8, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 308, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 312, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 336, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 39, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 456, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 460, i32 90, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 468, i32 55, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 189, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 249, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 484, i32 206, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 488, i32 98, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 496, i32 125, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 500, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 504, i32 207, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 508, i32 214, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 512, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 524, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 572, i32 18, i8 0, i8 -1 }], [84 x i8] zeroinitializer }, align 32
@sdx55_qmp_pcie_pcs_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 392, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 480, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 484, i32 2, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sdx55_qmp_pcie_pcs_misc_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 160, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 2084, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 2088, i32 0, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sdx55_usb3_uniphy_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 156, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 213, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 8, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@sdx55_usb3_uniphy_rx_tbl = internal constant { [36 x %struct.qmp_phy_init_tbl], [112 x i8] } { [36 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 384, i32 38, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 123, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 72, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 31, i8 0, i8 -1 }], [112 x i8] zeroinitializer }, align 32
@qmp_v4_sdx55_usbphy_clk_l = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@sm8350_usb3_tx_tbl = internal constant { [10 x %struct.qmp_phy_init_tbl], [40 x i8] } { [10 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 52, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 56, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 53, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 33, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm8350_usb3_rx_tbl = internal constant { [38 x %struct.qmp_phy_init_tbl], [120 x i8] } { [38 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 8, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 240, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 187, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 352, i32 123, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 187, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 61, i8 0, i8 1 }, %struct.qmp_phy_init_tbl { i32 360, i32 60, i8 0, i8 2 }, %struct.qmp_phy_init_tbl { i32 364, i32 219, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 100, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 210, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 169, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 96, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 16, i8 0, i8 -1 }], [120 x i8] zeroinitializer }, align 32
@sm8350_usb3_pcs_tbl = internal constant { [18 x %struct.qmp_phy_init_tbl], [40 x i8] } { [18 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 832, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 836, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 33, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 792, i32 248, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 828, i32 7, i8 0, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@sm8350_usb3_uniphy_tx_tbl = internal constant { [7 x %struct.qmp_phy_init_tbl], [44 x i8] } { [7 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 132, i32 165, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 33, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 14, i8 0, i8 -1 }], [44 x i8] zeroinitializer }, align 32
@sm8350_usb3_uniphy_rx_tbl = internal constant { [31 x %struct.qmp_phy_init_tbl], [76 x i8] } { [31 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 364, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 189, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 352, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 169, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 123, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 228, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 100, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 153, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 47, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 84, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 276, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 292, i32 14, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 0, i8 0, i8 -1 }], [76 x i8] zeroinitializer }, align 32
@sm8350_usb3_uniphy_pcs_tbl = internal constant { [16 x %struct.qmp_phy_init_tbl], [32 x i8] } { [16 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 464, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 4156, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 4120, i32 248, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 452, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 476, i32 75, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 492, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 33, i8 0, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@sm8350_usb3_uniphy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 0, i32 20, i32 4104, i32 4116, i32 0, i32 64, i32 0], [52 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen3x1_pcie_serdes_tbl = internal constant { [42 x %struct.qmp_phy_init_tbl], [104 x i8] } { [42 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 66, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 272, i32 36, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 284, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 280, i32 180, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 444, i32 17, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 104, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 170, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 171, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 30, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 202, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 440, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 76, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 144, i8 0, i8 -1 }], [104 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen3x1_pcie_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 228, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 4, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen3x1_pcie_rx_tbl = internal constant { [22 x %struct.qmp_phy_init_tbl], [88 x i8] } { [22 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 348, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 352, i32 255, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 216, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 220, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 92, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 166, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 240, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 240, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 244, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 5, i8 0, i8 -1 }], [88 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen3x1_pcie_pcs_tbl = internal constant { [3 x %struct.qmp_phy_init_tbl], [60 x i8] } { [3 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 392, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 5, i8 0, i8 -1 }], [60 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen3x1_pcie_pcs_misc_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 148, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 193, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen4x2_pcie_serdes_tbl = internal constant { [41 x %struct.qmp_phy_init_tbl], [116 x i8] } { [41 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 151, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 144, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 88, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 54, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 148, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 70, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 172, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 208, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 340, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 344, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 136, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 15, i8 0, i8 -1 }], [116 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen4x2_pcie_tx_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 120, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 246, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 26, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 12, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen4x2_pcie_rx_tbl = internal constant { [43 x %struct.qmp_phy_init_tbl], [156 x i8] } { [43 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 32, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 448, i32 56, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 204, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 360, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 364, i32 204, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 74, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 41, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 380, i32 197, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 384, i32 173, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 182, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 192, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 400, i32 251, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 408, i32 199, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 239, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 416, i32 191, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 420, i32 160, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 424, i32 129, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 428, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 432, i32 127, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 436, i32 32, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 44, i32 63, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 48, i32 55, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 5, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 504, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 512, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 520, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 528, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 536, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 544, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 500, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 508, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 516, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 12, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 236, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 31, i8 0, i8 -1 }], [156 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen4x2_pcie_pcs_tbl = internal constant { [4 x %struct.qmp_phy_init_tbl], [48 x i8] } { [4 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 480, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 484, i32 34, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 368, i32 46, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 392, i32 153, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@sm8450_qmp_gen4x2_pcie_pcs_misc_tbl = internal constant { [6 x %struct.qmp_phy_init_tbl], [56 x i8] } { [6 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 28, i32 193, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 348, i32 46, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@sm8450_ufs_phy_clk_l = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.78, ptr @.str.24, ptr @.str.76], [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qref\00", [27 x i8] zeroinitializer }, align 32
@qcm2290_usb3_serdes_tbl = internal constant { [38 x %struct.qmp_phy_init_tbl], [120 x i8] } { [38 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 172, i32 20, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 372, i32 48, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 180, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 8, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 412, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 376, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 130, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 224, i32 85, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 228, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 144, i32 40, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 264, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 388, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 76, i32 21, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 80, i32 52, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 84, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 396, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 296, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 12, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 16, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 28, i32 49, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 32, i32 1, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 24, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 222, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 7, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 404, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 168, i32 1, i8 0, i8 -1 }], [120 x i8] zeroinitializer }, align 32
@qcm2290_usb3_tx_tbl = internal constant { [5 x %struct.qmp_phy_init_tbl], [36 x i8] } { [5 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 96, i32 16, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 164, i32 18, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 198, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 72, i32 0, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@qcm2290_usb3_rx_tbl = internal constant { [17 x %struct.qmp_phy_init_tbl], [52 x i8] } { [17 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 48, i32 11, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 68, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 60, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 64, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 8, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 20, i32 6, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 52, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 216, i32 78, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 220, i32 24, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 248, i32 119, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 252, i32 128, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 192, i32 10, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 260, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 268, i32 22, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 256, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 356, i32 0, i8 0, i8 -1 }], [52 x i8] zeroinitializer }, align 32
@qcm2290_usb3_pcs_tbl = internal constant { [21 x %struct.qmp_phy_init_tbl], [36 x i8] } { [21 x %struct.qmp_phy_init_tbl] [%struct.qmp_phy_init_tbl { i32 12, i32 159, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 36, i32 23, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 40, i32 15, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 200, i32 131, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 196, i32 2, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 204, i32 9, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 208, i32 162, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 212, i32 133, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 128, i32 209, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 132, i32 31, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 136, i32 71, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 184, i32 117, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 188, i32 19, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 176, i32 134, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 160, i32 4, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 140, i32 68, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 112, i32 231, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 116, i32 3, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 120, i32 64, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 124, i32 0, i8 0, i8 -1 }, %struct.qmp_phy_init_tbl { i32 472, i32 136, i8 0, i8 -1 }], [36 x i8] zeroinitializer }, align 32
@qcm2290_usb3phy_clk_l = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@qcm2290_usb3phy_reset_l = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.79, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@qcm2290_usb3phy_regs_layout = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 372, i32 216, i32 220, i32 0, i32 4, i32 0], [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_phy\00", [24 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 5477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pipe_clk enable failed, err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom_qmp_phy_runtime_resume\00", [36 x i8] zeroinitializer }, align 32
@qcom_qmp_phy_runtime_resume._entry_ptr = internal global ptr @qcom_qmp_phy_runtime_resume._entry, section ".printk_index", align 4
@switch.table.qcom_qmp_phy_probe = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @qcom_qmp_pcie_ufs_ops, ptr @qcom_qmp_phy_gen_ops, ptr @qcom_qmp_phy_gen_ops, ptr @qcom_qmp_pcie_ufs_ops, ptr @qcom_qmp_phy_dp_ops], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 162000000, i64 270000000, i64 540000000, i64 810000000]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 1620, i64 2700, i64 5400, i64 8100]
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"qcom_qmp_phy_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6246, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6249, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"qcom_qmp_phy_of_match_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5940, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"qcom_qmp_phy_pm_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6088, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [34 x i8] c"qcom_qmp_combo_phy_of_match_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6072, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6157, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6170, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6194, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6197, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6205, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6217, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6224, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 6234, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"sc7180_usb3dpphy_cfg\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3764, i32 39 }
@___asan_gen_.166 = private unnamed_addr constant [21 x i8] c"sm8250_usb3dpphy_cfg\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4154, i32 39 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"sc8180x_usb3dpphy_cfg\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4024, i32 39 }
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"sc7180_usb3phy_cfg\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3697, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"sc7180_dpphy_cfg\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3729, i32 33 }
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"qmp_v3_usb3_serdes_tbl\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1050, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"qmp_v3_usb3_tx_tbl\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1089, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant [19 x i8] c"qmp_v3_usb3_rx_tbl\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1179, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c"qmp_v3_usb3_pcs_tbl\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1191, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"qmp_v3_phy_clk_l\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3289, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"sc7180_usb3phy_reset_l\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3332, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"qmp_phy_vreg_l\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3345, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"qmp_v3_usb3phy_regs_layout\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 186, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3290, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3290, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3290, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3290, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3333, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3346, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3346, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant [21 x i8] c"qmp_v3_dp_serdes_tbl\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1097, i32 38 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"qmp_v3_dp_tx_tbl\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1161, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"qmp_v3_dp_serdes_tbl_rbr\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1121, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [25 x i8] c"qmp_v3_dp_serdes_tbl_hbr\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1131, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [26 x i8] c"qmp_v3_dp_serdes_tbl_hbr2\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1141, i32 38 }
@___asan_gen_.238 = private unnamed_addr constant [26 x i8] c"qmp_v3_dp_serdes_tbl_hbr3\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1151, i32 38 }
@___asan_gen_.241 = private unnamed_addr constant [32 x i8] c"qmp_dp_v3_voltage_swing_hbr_rbr\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4583, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant [31 x i8] c"qmp_dp_v3_pre_emphasis_hbr_rbr\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4576, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant [34 x i8] c"qmp_dp_v3_voltage_swing_hbr3_hbr2\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4569, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant [33 x i8] c"qmp_dp_v3_pre_emphasis_hbr3_hbr2\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4562, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4760, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant [19 x i8] c"sm8250_usb3phy_cfg\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4058, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"sm8250_dpphy_cfg\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4119, i32 33 }
@___asan_gen_.262 = private unnamed_addr constant [23 x i8] c"sm8150_usb3_serdes_tbl\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1714, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant [19 x i8] c"sm8250_usb3_tx_tbl\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1930, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant [19 x i8] c"sm8250_usb3_rx_tbl\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1941, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c"sm8250_usb3_pcs_tbl\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1982, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant [27 x i8] c"qmp_v4_sm8250_usbphy_clk_l\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3302, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant [24 x i8] c"msm8996_usb3phy_reset_l\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3328, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant [27 x i8] c"qmp_v4_usb3phy_regs_layout\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 207, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3303, i32 9 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3329, i32 9 }
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"qmp_v4_dp_serdes_tbl\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2066, i32 38 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"qmp_v4_dp_tx_tbl\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2129, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"qmp_v4_dp_serdes_tbl_rbr\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2089, i32 38 }
@___asan_gen_.298 = private unnamed_addr constant [25 x i8] c"qmp_v4_dp_serdes_tbl_hbr\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2099, i32 38 }
@___asan_gen_.301 = private unnamed_addr constant [26 x i8] c"qmp_v4_dp_serdes_tbl_hbr2\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2109, i32 38 }
@___asan_gen_.304 = private unnamed_addr constant [26 x i8] c"qmp_v4_dp_serdes_tbl_hbr3\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2119, i32 38 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"qmp_v4_phy_clk_l\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3297, i32 27 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"cfg1_settings\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4958, i32 18 }
@___asan_gen_.313 = private unnamed_addr constant [19 x i8] c"sm8150_usb3phy_cfg\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3926, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant [18 x i8] c"sc8180x_dpphy_cfg\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3989, i32 33 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"sm8150_usb3_tx_tbl\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1757, i32 38 }
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"sm8150_usb3_rx_tbl\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1765, i32 38 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"sm8150_usb3_pcs_tbl\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1804, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5519, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5866, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5892, i32 41 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5899, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5909, i32 42 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5912, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant [22 x i8] c"qcom_qmp_pcie_ufs_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5814, i32 29 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c"qcom_qmp_phy_dp_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5803, i32 29 }
@___asan_gen_.373 = private unnamed_addr constant [21 x i8] c"qcom_qmp_phy_gen_ops\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5796, i32 29 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5927, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5143, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5147, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5014, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5021, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5030, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5189, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5197, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5287, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4510, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5573, i32 36 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5575, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5769, i32 31 }
@___asan_gen_.460 = private unnamed_addr constant [25 x i8] c"qcom_qmp_dp_link_clk_ops\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5732, i32 29 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5777, i32 31 }
@___asan_gen_.466 = private unnamed_addr constant [26 x i8] c"qcom_qmp_dp_pixel_clk_ops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5691, i32 29 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5744, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c"ipq8074_usb3phy_cfg\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3349, i32 33 }
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c"msm8996_pciephy_cfg\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3374, i32 33 }
@___asan_gen_.484 = private unnamed_addr constant [16 x i8] c"msm8996_ufs_cfg\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3406, i32 33 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c"msm8996_usb3phy_cfg\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3432, i32 33 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c"msm8998_pciephy_cfg\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3849, i32 33 }
@___asan_gen_.493 = private unnamed_addr constant [18 x i8] c"sdm845_ufsphy_cfg\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3798, i32 33 }
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c"ipq8074_pciephy_cfg\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3465, i32 33 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c"ipq6018_pciephy_cfg\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3496, i32 33 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c"sc8180x_pciephy_cfg\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3959, i32 33 }
@___asan_gen_.505 = private unnamed_addr constant [18 x i8] c"sm8150_ufsphy_cfg\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3901, i32 33 }
@___asan_gen_.508 = private unnamed_addr constant [23 x i8] c"sdm845_qhp_pciephy_cfg\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3557, i32 33 }
@___asan_gen_.511 = private unnamed_addr constant [23 x i8] c"sdm845_qmp_pciephy_cfg\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3526, i32 33 }
@___asan_gen_.514 = private unnamed_addr constant [19 x i8] c"qmp_v3_usb3phy_cfg\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3665, i32 33 }
@___asan_gen_.517 = private unnamed_addr constant [23 x i8] c"qmp_v3_usb3_uniphy_cfg\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3769, i32 33 }
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c"msm8998_usb3phy_cfg\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3874, i32 33 }
@___asan_gen_.523 = private unnamed_addr constant [18 x i8] c"sm6115_ufsphy_cfg\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3824, i32 33 }
@___asan_gen_.526 = private unnamed_addr constant [23 x i8] c"sm8150_usb3_uniphy_cfg\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4029, i32 33 }
@___asan_gen_.529 = private unnamed_addr constant [23 x i8] c"sm8250_usb3_uniphy_cfg\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4090, i32 33 }
@___asan_gen_.532 = private unnamed_addr constant [30 x i8] c"sm8250_qmp_gen3x1_pciephy_cfg\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3586, i32 33 }
@___asan_gen_.535 = private unnamed_addr constant [30 x i8] c"sm8250_qmp_gen3x2_pciephy_cfg\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3625, i32 33 }
@___asan_gen_.538 = private unnamed_addr constant [18 x i8] c"sm8350_ufsphy_cfg\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4220, i32 33 }
@___asan_gen_.541 = private unnamed_addr constant [22 x i8] c"sdx55_qmp_pciephy_cfg\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4188, i32 33 }
@___asan_gen_.544 = private unnamed_addr constant [22 x i8] c"sdx55_usb3_uniphy_cfg\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4159, i32 33 }
@___asan_gen_.547 = private unnamed_addr constant [19 x i8] c"sm8350_usb3phy_cfg\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4245, i32 33 }
@___asan_gen_.550 = private unnamed_addr constant [23 x i8] c"sm8350_usb3_uniphy_cfg\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4277, i32 33 }
@___asan_gen_.553 = private unnamed_addr constant [30 x i8] c"sm8450_qmp_gen3x1_pciephy_cfg\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4331, i32 33 }
@___asan_gen_.556 = private unnamed_addr constant [30 x i8] c"sm8450_qmp_gen4x2_pciephy_cfg\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4362, i32 33 }
@___asan_gen_.559 = private unnamed_addr constant [18 x i8] c"sm8450_ufsphy_cfg\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4306, i32 33 }
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c"qcm2290_usb3phy_cfg\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 4394, i32 33 }
@___asan_gen_.565 = private unnamed_addr constant [24 x i8] c"ipq8074_usb3_serdes_tbl\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 267, i32 38 }
@___asan_gen_.568 = private unnamed_addr constant [20 x i8] c"msm8996_usb3_tx_tbl\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 608, i32 38 }
@___asan_gen_.571 = private unnamed_addr constant [20 x i8] c"ipq8074_usb3_rx_tbl\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 304, i32 38 }
@___asan_gen_.574 = private unnamed_addr constant [21 x i8] c"ipq8074_usb3_pcs_tbl\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 316, i32 38 }
@___asan_gen_.577 = private unnamed_addr constant [18 x i8] c"msm8996_phy_clk_l\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3281, i32 27 }
@___asan_gen_.580 = private unnamed_addr constant [20 x i8] c"usb3phy_regs_layout\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 172, i32 27 }
@___asan_gen_.583 = private unnamed_addr constant [24 x i8] c"msm8996_pcie_serdes_tbl\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 342, i32 38 }
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c"msm8996_pcie_tx_tbl\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 388, i32 38 }
@___asan_gen_.589 = private unnamed_addr constant [20 x i8] c"msm8996_pcie_rx_tbl\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 393, i32 38 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c"msm8996_pcie_pcs_tbl\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 406, i32 38 }
@___asan_gen_.595 = private unnamed_addr constant [24 x i8] c"msm8996_pciephy_reset_l\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3324, i32 27 }
@___asan_gen_.598 = private unnamed_addr constant [20 x i8] c"pciephy_regs_layout\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 156, i32 27 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3325, i32 19 }
@___asan_gen_.604 = private unnamed_addr constant [23 x i8] c"msm8996_ufs_serdes_tbl\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 502, i32 38 }
@___asan_gen_.607 = private unnamed_addr constant [19 x i8] c"msm8996_ufs_tx_tbl\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 552, i32 38 }
@___asan_gen_.610 = private unnamed_addr constant [19 x i8] c"msm8996_ufs_rx_tbl\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 557, i32 38 }
@___asan_gen_.613 = private unnamed_addr constant [22 x i8] c"msm8996_ufs_phy_clk_l\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3285, i32 27 }
@___asan_gen_.616 = private unnamed_addr constant [27 x i8] c"msm8996_ufsphy_regs_layout\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 144, i32 27 }
@___asan_gen_.619 = private unnamed_addr constant [24 x i8] c"msm8996_usb3_serdes_tbl\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 571, i32 38 }
@___asan_gen_.622 = private unnamed_addr constant [20 x i8] c"msm8996_usb3_rx_tbl\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 614, i32 38 }
@___asan_gen_.625 = private unnamed_addr constant [21 x i8] c"msm8996_usb3_pcs_tbl\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 627, i32 38 }
@___asan_gen_.628 = private unnamed_addr constant [24 x i8] c"msm8998_pcie_serdes_tbl\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 420, i32 38 }
@___asan_gen_.631 = private unnamed_addr constant [20 x i8] c"msm8998_pcie_tx_tbl\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 465, i32 38 }
@___asan_gen_.634 = private unnamed_addr constant [20 x i8] c"msm8998_pcie_rx_tbl\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 472, i32 38 }
@___asan_gen_.637 = private unnamed_addr constant [21 x i8] c"msm8998_pcie_pcs_tbl\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 489, i32 38 }
@___asan_gen_.640 = private unnamed_addr constant [24 x i8] c"ipq8074_pciephy_reset_l\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3461, i32 27 }
@___asan_gen_.643 = private unnamed_addr constant [25 x i8] c"sdm845_ufsphy_serdes_tbl\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1440, i32 38 }
@___asan_gen_.646 = private unnamed_addr constant [21 x i8] c"sdm845_ufsphy_tx_tbl\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1482, i32 38 }
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c"sdm845_ufsphy_rx_tbl\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1488, i32 38 }
@___asan_gen_.652 = private unnamed_addr constant [22 x i8] c"sdm845_ufsphy_pcs_tbl\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1507, i32 38 }
@___asan_gen_.655 = private unnamed_addr constant [21 x i8] c"sdm845_ufs_phy_clk_l\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3310, i32 27 }
@___asan_gen_.658 = private unnamed_addr constant [26 x i8] c"sdm845_ufsphy_regs_layout\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 244, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3311, i32 9 }
@___asan_gen_.664 = private unnamed_addr constant [24 x i8] c"ipq8074_pcie_serdes_tbl\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 749, i32 38 }
@___asan_gen_.667 = private unnamed_addr constant [20 x i8] c"ipq8074_pcie_tx_tbl\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 792, i32 38 }
@___asan_gen_.670 = private unnamed_addr constant [20 x i8] c"ipq8074_pcie_rx_tbl\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 801, i32 38 }
@___asan_gen_.673 = private unnamed_addr constant [21 x i8] c"ipq8074_pcie_pcs_tbl\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 811, i32 38 }
@___asan_gen_.676 = private unnamed_addr constant [22 x i8] c"ipq8074_pciephy_clk_l\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3457, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant [24 x i8] c"ipq6018_pcie_serdes_tbl\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 642, i32 38 }
@___asan_gen_.682 = private unnamed_addr constant [20 x i8] c"ipq6018_pcie_tx_tbl\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 691, i32 38 }
@___asan_gen_.685 = private unnamed_addr constant [20 x i8] c"ipq6018_pcie_rx_tbl\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 697, i32 38 }
@___asan_gen_.688 = private unnamed_addr constant [21 x i8] c"ipq6018_pcie_pcs_tbl\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 730, i32 38 }
@___asan_gen_.691 = private unnamed_addr constant [29 x i8] c"ipq_pciephy_gen3_regs_layout\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 149, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant [28 x i8] c"sc8180x_qmp_pcie_serdes_tbl\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2146, i32 38 }
@___asan_gen_.697 = private unnamed_addr constant [24 x i8] c"sc8180x_qmp_pcie_tx_tbl\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2191, i32 38 }
@___asan_gen_.700 = private unnamed_addr constant [24 x i8] c"sc8180x_qmp_pcie_rx_tbl\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2196, i32 38 }
@___asan_gen_.703 = private unnamed_addr constant [25 x i8] c"sc8180x_qmp_pcie_pcs_tbl\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2235, i32 38 }
@___asan_gen_.706 = private unnamed_addr constant [30 x i8] c"sc8180x_qmp_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2243, i32 38 }
@___asan_gen_.709 = private unnamed_addr constant [21 x i8] c"sdm845_pciephy_clk_l\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3293, i32 27 }
@___asan_gen_.712 = private unnamed_addr constant [23 x i8] c"sdm845_pciephy_reset_l\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3340, i32 27 }
@___asan_gen_.715 = private unnamed_addr constant [24 x i8] c"sm8250_pcie_regs_layout\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 254, i32 27 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3294, i32 27 }
@___asan_gen_.721 = private unnamed_addr constant [25 x i8] c"sm8150_ufsphy_serdes_tbl\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1627, i32 38 }
@___asan_gen_.724 = private unnamed_addr constant [21 x i8] c"sm8150_ufsphy_tx_tbl\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1657, i32 38 }
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c"sm8150_ufsphy_rx_tbl\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1666, i32 38 }
@___asan_gen_.730 = private unnamed_addr constant [22 x i8] c"sm8150_ufsphy_pcs_tbl\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1704, i32 38 }
@___asan_gen_.733 = private unnamed_addr constant [26 x i8] c"sm8150_ufsphy_regs_layout\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 261, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant [27 x i8] c"sdm845_qhp_pcie_serdes_tbl\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 930, i32 38 }
@___asan_gen_.739 = private unnamed_addr constant [23 x i8] c"sdm845_qhp_pcie_tx_tbl\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 978, i32 38 }
@___asan_gen_.742 = private unnamed_addr constant [23 x i8] c"sdm845_qhp_pcie_rx_tbl\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1037, i32 38 }
@___asan_gen_.745 = private unnamed_addr constant [24 x i8] c"sdm845_qhp_pcie_pcs_tbl\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1040, i32 38 }
@___asan_gen_.748 = private unnamed_addr constant [31 x i8] c"sdm845_qhp_pciephy_regs_layout\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 201, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant [27 x i8] c"sdm845_qmp_pcie_serdes_tbl\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 827, i32 38 }
@___asan_gen_.754 = private unnamed_addr constant [23 x i8] c"sdm845_qmp_pcie_tx_tbl\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 872, i32 38 }
@___asan_gen_.757 = private unnamed_addr constant [23 x i8] c"sdm845_qmp_pcie_rx_tbl\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 879, i32 38 }
@___asan_gen_.760 = private unnamed_addr constant [24 x i8] c"sdm845_qmp_pcie_pcs_tbl\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 898, i32 38 }
@___asan_gen_.763 = private unnamed_addr constant [29 x i8] c"sdm845_qmp_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 922, i32 38 }
@___asan_gen_.766 = private unnamed_addr constant [31 x i8] c"sdm845_qmp_pciephy_regs_layout\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 195, i32 27 }
@___asan_gen_.769 = private unnamed_addr constant [30 x i8] c"qmp_v3_usb3_uniphy_serdes_tbl\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1238, i32 38 }
@___asan_gen_.772 = private unnamed_addr constant [26 x i8] c"qmp_v3_usb3_uniphy_tx_tbl\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1277, i32 38 }
@___asan_gen_.775 = private unnamed_addr constant [26 x i8] c"qmp_v3_usb3_uniphy_rx_tbl\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1285, i32 38 }
@___asan_gen_.778 = private unnamed_addr constant [27 x i8] c"qmp_v3_usb3_uniphy_pcs_tbl\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1299, i32 38 }
@___asan_gen_.781 = private unnamed_addr constant [24 x i8] c"msm8998_usb3_serdes_tbl\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1518, i32 38 }
@___asan_gen_.784 = private unnamed_addr constant [20 x i8] c"msm8998_usb3_tx_tbl\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1559, i32 38 }
@___asan_gen_.787 = private unnamed_addr constant [20 x i8] c"msm8998_usb3_rx_tbl\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1566, i32 38 }
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c"msm8998_usb3_pcs_tbl\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1586, i32 38 }
@___asan_gen_.793 = private unnamed_addr constant [25 x i8] c"sm6115_ufsphy_serdes_tbl\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1349, i32 38 }
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c"sm6115_ufsphy_tx_tbl\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1405, i32 38 }
@___asan_gen_.799 = private unnamed_addr constant [21 x i8] c"sm6115_ufsphy_rx_tbl\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1410, i32 38 }
@___asan_gen_.802 = private unnamed_addr constant [22 x i8] c"sm6115_ufsphy_pcs_tbl\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1428, i32 38 }
@___asan_gen_.805 = private unnamed_addr constant [26 x i8] c"sm6115_ufsphy_regs_layout\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 249, i32 27 }
@___asan_gen_.808 = private unnamed_addr constant [30 x i8] c"sm8150_usb3_uniphy_serdes_tbl\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1822, i32 38 }
@___asan_gen_.811 = private unnamed_addr constant [26 x i8] c"sm8150_usb3_uniphy_tx_tbl\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1865, i32 38 }
@___asan_gen_.814 = private unnamed_addr constant [26 x i8] c"sm8150_usb3_uniphy_rx_tbl\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1872, i32 38 }
@___asan_gen_.817 = private unnamed_addr constant [27 x i8] c"sm8150_usb3_uniphy_pcs_tbl\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1911, i32 38 }
@___asan_gen_.820 = private unnamed_addr constant [31 x i8] c"qmp_v4_usb3_uniphy_regs_layout\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 216, i32 27 }
@___asan_gen_.823 = private unnamed_addr constant [26 x i8] c"sm8250_usb3_uniphy_tx_tbl\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1999, i32 38 }
@___asan_gen_.826 = private unnamed_addr constant [26 x i8] c"sm8250_usb3_uniphy_rx_tbl\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2008, i32 38 }
@___asan_gen_.829 = private unnamed_addr constant [27 x i8] c"sm8250_usb3_uniphy_pcs_tbl\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2047, i32 38 }
@___asan_gen_.832 = private unnamed_addr constant [27 x i8] c"sm8250_qmp_pcie_serdes_tbl\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2253, i32 38 }
@___asan_gen_.835 = private unnamed_addr constant [34 x i8] c"sm8250_qmp_gen3x1_pcie_serdes_tbl\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2297, i32 38 }
@___asan_gen_.838 = private unnamed_addr constant [23 x i8] c"sm8250_qmp_pcie_tx_tbl\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2301, i32 38 }
@___asan_gen_.841 = private unnamed_addr constant [23 x i8] c"sm8250_qmp_pcie_rx_tbl\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2307, i32 38 }
@___asan_gen_.844 = private unnamed_addr constant [30 x i8] c"sm8250_qmp_gen3x1_pcie_rx_tbl\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2340, i32 38 }
@___asan_gen_.847 = private unnamed_addr constant [24 x i8] c"sm8250_qmp_pcie_pcs_tbl\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2349, i32 38 }
@___asan_gen_.850 = private unnamed_addr constant [31 x i8] c"sm8250_qmp_gen3x1_pcie_pcs_tbl\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2355, i32 38 }
@___asan_gen_.853 = private unnamed_addr constant [29 x i8] c"sm8250_qmp_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2360, i32 38 }
@___asan_gen_.856 = private unnamed_addr constant [36 x i8] c"sm8250_qmp_gen3x1_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2370, i32 38 }
@___asan_gen_.859 = private unnamed_addr constant [30 x i8] c"sm8250_qmp_gen3x2_pcie_tx_tbl\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2375, i32 38 }
@___asan_gen_.862 = private unnamed_addr constant [30 x i8] c"sm8250_qmp_gen3x2_pcie_rx_tbl\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2379, i32 38 }
@___asan_gen_.865 = private unnamed_addr constant [31 x i8] c"sm8250_qmp_gen3x2_pcie_pcs_tbl\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2386, i32 38 }
@___asan_gen_.868 = private unnamed_addr constant [36 x i8] c"sm8250_qmp_gen3x2_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2391, i32 38 }
@___asan_gen_.871 = private unnamed_addr constant [25 x i8] c"sm8350_ufsphy_serdes_tbl\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2538, i32 38 }
@___asan_gen_.874 = private unnamed_addr constant [21 x i8] c"sm8350_ufsphy_tx_tbl\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2568, i32 38 }
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c"sm8350_ufsphy_rx_tbl\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2580, i32 38 }
@___asan_gen_.880 = private unnamed_addr constant [22 x i8] c"sm8350_ufsphy_pcs_tbl\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2620, i32 38 }
@___asan_gen_.883 = private unnamed_addr constant [26 x i8] c"sdx55_qmp_pcie_serdes_tbl\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2443, i32 38 }
@___asan_gen_.886 = private unnamed_addr constant [22 x i8] c"sdx55_qmp_pcie_tx_tbl\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2485, i32 38 }
@___asan_gen_.889 = private unnamed_addr constant [22 x i8] c"sdx55_qmp_pcie_rx_tbl\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2493, i32 38 }
@___asan_gen_.892 = private unnamed_addr constant [23 x i8] c"sdx55_qmp_pcie_pcs_tbl\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2521, i32 38 }
@___asan_gen_.895 = private unnamed_addr constant [28 x i8] c"sdx55_qmp_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2528, i32 38 }
@___asan_gen_.898 = private unnamed_addr constant [25 x i8] c"sdx55_usb3_uniphy_tx_tbl\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2396, i32 38 }
@___asan_gen_.901 = private unnamed_addr constant [25 x i8] c"sdx55_usb3_uniphy_rx_tbl\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2404, i32 38 }
@___asan_gen_.904 = private unnamed_addr constant [26 x i8] c"qmp_v4_sdx55_usbphy_clk_l\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3315, i32 27 }
@___asan_gen_.907 = private unnamed_addr constant [19 x i8] c"sm8350_usb3_tx_tbl\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2638, i32 38 }
@___asan_gen_.910 = private unnamed_addr constant [19 x i8] c"sm8350_usb3_rx_tbl\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2651, i32 38 }
@___asan_gen_.913 = private unnamed_addr constant [20 x i8] c"sm8350_usb3_pcs_tbl\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2692, i32 38 }
@___asan_gen_.916 = private unnamed_addr constant [26 x i8] c"sm8350_usb3_uniphy_tx_tbl\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2713, i32 38 }
@___asan_gen_.919 = private unnamed_addr constant [26 x i8] c"sm8350_usb3_uniphy_rx_tbl\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2723, i32 38 }
@___asan_gen_.922 = private unnamed_addr constant [27 x i8] c"sm8350_usb3_uniphy_pcs_tbl\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2757, i32 38 }
@___asan_gen_.925 = private unnamed_addr constant [31 x i8] c"sm8350_usb3_uniphy_regs_layout\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 225, i32 27 }
@___asan_gen_.928 = private unnamed_addr constant [34 x i8] c"sm8450_qmp_gen3x1_pcie_serdes_tbl\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2869, i32 38 }
@___asan_gen_.931 = private unnamed_addr constant [30 x i8] c"sm8450_qmp_gen3x1_pcie_tx_tbl\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2914, i32 38 }
@___asan_gen_.934 = private unnamed_addr constant [30 x i8] c"sm8450_qmp_gen3x1_pcie_rx_tbl\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2922, i32 38 }
@___asan_gen_.937 = private unnamed_addr constant [31 x i8] c"sm8450_qmp_gen3x1_pcie_pcs_tbl\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2947, i32 38 }
@___asan_gen_.940 = private unnamed_addr constant [36 x i8] c"sm8450_qmp_gen3x1_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2953, i32 38 }
@___asan_gen_.943 = private unnamed_addr constant [34 x i8] c"sm8450_qmp_gen4x2_pcie_serdes_tbl\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2960, i32 38 }
@___asan_gen_.946 = private unnamed_addr constant [30 x i8] c"sm8450_qmp_gen4x2_pcie_tx_tbl\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3004, i32 38 }
@___asan_gen_.949 = private unnamed_addr constant [30 x i8] c"sm8450_qmp_gen4x2_pcie_rx_tbl\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3011, i32 38 }
@___asan_gen_.952 = private unnamed_addr constant [31 x i8] c"sm8450_qmp_gen4x2_pcie_pcs_tbl\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3062, i32 38 }
@___asan_gen_.955 = private unnamed_addr constant [36 x i8] c"sm8450_qmp_gen4x2_pcie_pcs_misc_tbl\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3069, i32 38 }
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c"sm8450_ufs_phy_clk_l\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3306, i32 27 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3307, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant [24 x i8] c"qcm2290_usb3_serdes_tbl\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2776, i32 38 }
@___asan_gen_.967 = private unnamed_addr constant [20 x i8] c"qcm2290_usb3_tx_tbl\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2817, i32 38 }
@___asan_gen_.970 = private unnamed_addr constant [20 x i8] c"qcm2290_usb3_rx_tbl\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2825, i32 38 }
@___asan_gen_.973 = private unnamed_addr constant [21 x i8] c"qcm2290_usb3_pcs_tbl\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 2845, i32 38 }
@___asan_gen_.976 = private unnamed_addr constant [22 x i8] c"qcm2290_usb3phy_clk_l\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3319, i32 27 }
@___asan_gen_.979 = private unnamed_addr constant [24 x i8] c"qcm2290_usb3phy_reset_l\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3336, i32 27 }
@___asan_gen_.982 = private unnamed_addr constant [28 x i8] c"qcm2290_usb3phy_regs_layout\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 234, i32 27 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 3337, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.994 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.995 = private constant [39 x i8] c"../drivers/phy/qualcomm/phy-qcom-qmp.c\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 5477, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant [32 x i8] c"switch.table.qcom_qmp_phy_probe\00", align 1
@llvm.compiler.used = appending global [331 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_qcom_qmp_phy_driver_exit, ptr @__initcall__kmod_phy_qcom_qmp__293_6255_qcom_qmp_phy_driver_init6, ptr @phy_pipe_clk_register._entry, ptr @phy_pipe_clk_register._entry_ptr, ptr @qcom_qmp_dp_clks_hw_get._entry, ptr @qcom_qmp_dp_clks_hw_get._entry_ptr, ptr @qcom_qmp_phy_com_init._entry, ptr @qcom_qmp_phy_com_init._entry.52, ptr @qcom_qmp_phy_com_init._entry.55, ptr @qcom_qmp_phy_com_init._entry_ptr, ptr @qcom_qmp_phy_com_init._entry_ptr.54, ptr @qcom_qmp_phy_com_init._entry_ptr.57, ptr @qcom_qmp_phy_create._entry, ptr @qcom_qmp_phy_create._entry.37, ptr @qcom_qmp_phy_create._entry.41, ptr @qcom_qmp_phy_create._entry.44, ptr @qcom_qmp_phy_create._entry_ptr, ptr @qcom_qmp_phy_create._entry_ptr.39, ptr @qcom_qmp_phy_create._entry_ptr.43, ptr @qcom_qmp_phy_create._entry_ptr.46, ptr @qcom_qmp_phy_driver_exit, ptr @qcom_qmp_phy_init._entry, ptr @qcom_qmp_phy_init._entry_ptr, ptr @qcom_qmp_phy_power_on._entry, ptr @qcom_qmp_phy_power_on._entry.60, ptr @qcom_qmp_phy_power_on._entry.63, ptr @qcom_qmp_phy_power_on._entry_ptr, ptr @qcom_qmp_phy_power_on._entry_ptr.62, ptr @qcom_qmp_phy_power_on._entry_ptr.65, ptr @qcom_qmp_phy_probe._entry, ptr @qcom_qmp_phy_probe._entry.12, ptr @qcom_qmp_phy_probe._entry.15, ptr @qcom_qmp_phy_probe._entry.18, ptr @qcom_qmp_phy_probe._entry.9, ptr @qcom_qmp_phy_probe._entry_ptr, ptr @qcom_qmp_phy_probe._entry_ptr.11, ptr @qcom_qmp_phy_probe._entry_ptr.14, ptr @qcom_qmp_phy_probe._entry_ptr.17, ptr @qcom_qmp_phy_probe._entry_ptr.21, ptr @qcom_qmp_phy_reset_init._entry, ptr @qcom_qmp_phy_reset_init._entry_ptr, ptr @qcom_qmp_phy_runtime_resume._entry, ptr @qcom_qmp_phy_runtime_resume._entry_ptr, ptr @qcom_qmp_phy_serdes_init._entry, ptr @qcom_qmp_phy_serdes_init._entry_ptr, ptr @qcom_qmp_phy_driver, ptr @.str, ptr @qcom_qmp_phy_of_match_table, ptr @qcom_qmp_phy_pm_ops, ptr @qcom_qmp_combo_phy_of_match_table, ptr @qcom_qmp_phy_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @sc7180_usb3dpphy_cfg, ptr @sm8250_usb3dpphy_cfg, ptr @sc8180x_usb3dpphy_cfg, ptr @sc7180_usb3phy_cfg, ptr @sc7180_dpphy_cfg, ptr @qmp_v3_usb3_serdes_tbl, ptr @qmp_v3_usb3_tx_tbl, ptr @qmp_v3_usb3_rx_tbl, ptr @qmp_v3_usb3_pcs_tbl, ptr @qmp_v3_phy_clk_l, ptr @sc7180_usb3phy_reset_l, ptr @qmp_phy_vreg_l, ptr @qmp_v3_usb3phy_regs_layout, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @qmp_v3_dp_serdes_tbl, ptr @qmp_v3_dp_tx_tbl, ptr @qmp_v3_dp_serdes_tbl_rbr, ptr @qmp_v3_dp_serdes_tbl_hbr, ptr @qmp_v3_dp_serdes_tbl_hbr2, ptr @qmp_v3_dp_serdes_tbl_hbr3, ptr @qmp_dp_v3_voltage_swing_hbr_rbr, ptr @qmp_dp_v3_pre_emphasis_hbr_rbr, ptr @qmp_dp_v3_voltage_swing_hbr3_hbr2, ptr @qmp_dp_v3_pre_emphasis_hbr3_hbr2, ptr @qcom_qmp_v3_dp_phy_calibrate.cfg1_settings, ptr @sm8250_usb3phy_cfg, ptr @sm8250_dpphy_cfg, ptr @sm8150_usb3_serdes_tbl, ptr @sm8250_usb3_tx_tbl, ptr @sm8250_usb3_rx_tbl, ptr @sm8250_usb3_pcs_tbl, ptr @qmp_v4_sm8250_usbphy_clk_l, ptr @msm8996_usb3phy_reset_l, ptr @qmp_v4_usb3phy_regs_layout, ptr @.str.29, ptr @.str.30, ptr @qmp_v4_dp_serdes_tbl, ptr @qmp_v4_dp_tx_tbl, ptr @qmp_v4_dp_serdes_tbl_rbr, ptr @qmp_v4_dp_serdes_tbl_hbr, ptr @qmp_v4_dp_serdes_tbl_hbr2, ptr @qmp_v4_dp_serdes_tbl_hbr3, ptr @qmp_v4_phy_clk_l, ptr @qcom_qmp_v4_dp_phy_calibrate.cfg1_settings, ptr @sm8150_usb3phy_cfg, ptr @sc8180x_dpphy_cfg, ptr @sm8150_usb3_tx_tbl, ptr @sm8150_usb3_rx_tbl, ptr @sm8150_usb3_pcs_tbl, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @qcom_qmp_pcie_ufs_ops, ptr @qcom_qmp_phy_dp_ops, ptr @qcom_qmp_phy_gen_ops, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @qcom_qmp_dp_link_clk_ops, ptr @.str.72, ptr @qcom_qmp_dp_pixel_clk_ops, ptr @.str.73, ptr @.str.74, ptr @ipq8074_usb3phy_cfg, ptr @msm8996_pciephy_cfg, ptr @msm8996_ufs_cfg, ptr @msm8996_usb3phy_cfg, ptr @msm8998_pciephy_cfg, ptr @sdm845_ufsphy_cfg, ptr @ipq8074_pciephy_cfg, ptr @ipq6018_pciephy_cfg, ptr @sc8180x_pciephy_cfg, ptr @sm8150_ufsphy_cfg, ptr @sdm845_qhp_pciephy_cfg, ptr @sdm845_qmp_pciephy_cfg, ptr @qmp_v3_usb3phy_cfg, ptr @qmp_v3_usb3_uniphy_cfg, ptr @msm8998_usb3phy_cfg, ptr @sm6115_ufsphy_cfg, ptr @sm8150_usb3_uniphy_cfg, ptr @sm8250_usb3_uniphy_cfg, ptr @sm8250_qmp_gen3x1_pciephy_cfg, ptr @sm8250_qmp_gen3x2_pciephy_cfg, ptr @sm8350_ufsphy_cfg, ptr @sdx55_qmp_pciephy_cfg, ptr @sdx55_usb3_uniphy_cfg, ptr @sm8350_usb3phy_cfg, ptr @sm8350_usb3_uniphy_cfg, ptr @sm8450_qmp_gen3x1_pciephy_cfg, ptr @sm8450_qmp_gen4x2_pciephy_cfg, ptr @sm8450_ufsphy_cfg, ptr @qcm2290_usb3phy_cfg, ptr @ipq8074_usb3_serdes_tbl, ptr @msm8996_usb3_tx_tbl, ptr @ipq8074_usb3_rx_tbl, ptr @ipq8074_usb3_pcs_tbl, ptr @msm8996_phy_clk_l, ptr @usb3phy_regs_layout, ptr @msm8996_pcie_serdes_tbl, ptr @msm8996_pcie_tx_tbl, ptr @msm8996_pcie_rx_tbl, ptr @msm8996_pcie_pcs_tbl, ptr @msm8996_pciephy_reset_l, ptr @pciephy_regs_layout, ptr @.str.75, ptr @msm8996_ufs_serdes_tbl, ptr @msm8996_ufs_tx_tbl, ptr @msm8996_ufs_rx_tbl, ptr @msm8996_ufs_phy_clk_l, ptr @msm8996_ufsphy_regs_layout, ptr @msm8996_usb3_serdes_tbl, ptr @msm8996_usb3_rx_tbl, ptr @msm8996_usb3_pcs_tbl, ptr @msm8998_pcie_serdes_tbl, ptr @msm8998_pcie_tx_tbl, ptr @msm8998_pcie_rx_tbl, ptr @msm8998_pcie_pcs_tbl, ptr @ipq8074_pciephy_reset_l, ptr @sdm845_ufsphy_serdes_tbl, ptr @sdm845_ufsphy_tx_tbl, ptr @sdm845_ufsphy_rx_tbl, ptr @sdm845_ufsphy_pcs_tbl, ptr @sdm845_ufs_phy_clk_l, ptr @sdm845_ufsphy_regs_layout, ptr @.str.76, ptr @ipq8074_pcie_serdes_tbl, ptr @ipq8074_pcie_tx_tbl, ptr @ipq8074_pcie_rx_tbl, ptr @ipq8074_pcie_pcs_tbl, ptr @ipq8074_pciephy_clk_l, ptr @ipq6018_pcie_serdes_tbl, ptr @ipq6018_pcie_tx_tbl, ptr @ipq6018_pcie_rx_tbl, ptr @ipq6018_pcie_pcs_tbl, ptr @ipq_pciephy_gen3_regs_layout, ptr @sc8180x_qmp_pcie_serdes_tbl, ptr @sc8180x_qmp_pcie_tx_tbl, ptr @sc8180x_qmp_pcie_rx_tbl, ptr @sc8180x_qmp_pcie_pcs_tbl, ptr @sc8180x_qmp_pcie_pcs_misc_tbl, ptr @sdm845_pciephy_clk_l, ptr @sdm845_pciephy_reset_l, ptr @sm8250_pcie_regs_layout, ptr @.str.77, ptr @sm8150_ufsphy_serdes_tbl, ptr @sm8150_ufsphy_tx_tbl, ptr @sm8150_ufsphy_rx_tbl, ptr @sm8150_ufsphy_pcs_tbl, ptr @sm8150_ufsphy_regs_layout, ptr @sdm845_qhp_pcie_serdes_tbl, ptr @sdm845_qhp_pcie_tx_tbl, ptr @sdm845_qhp_pcie_rx_tbl, ptr @sdm845_qhp_pcie_pcs_tbl, ptr @sdm845_qhp_pciephy_regs_layout, ptr @sdm845_qmp_pcie_serdes_tbl, ptr @sdm845_qmp_pcie_tx_tbl, ptr @sdm845_qmp_pcie_rx_tbl, ptr @sdm845_qmp_pcie_pcs_tbl, ptr @sdm845_qmp_pcie_pcs_misc_tbl, ptr @sdm845_qmp_pciephy_regs_layout, ptr @qmp_v3_usb3_uniphy_serdes_tbl, ptr @qmp_v3_usb3_uniphy_tx_tbl, ptr @qmp_v3_usb3_uniphy_rx_tbl, ptr @qmp_v3_usb3_uniphy_pcs_tbl, ptr @msm8998_usb3_serdes_tbl, ptr @msm8998_usb3_tx_tbl, ptr @msm8998_usb3_rx_tbl, ptr @msm8998_usb3_pcs_tbl, ptr @sm6115_ufsphy_serdes_tbl, ptr @sm6115_ufsphy_tx_tbl, ptr @sm6115_ufsphy_rx_tbl, ptr @sm6115_ufsphy_pcs_tbl, ptr @sm6115_ufsphy_regs_layout, ptr @sm8150_usb3_uniphy_serdes_tbl, ptr @sm8150_usb3_uniphy_tx_tbl, ptr @sm8150_usb3_uniphy_rx_tbl, ptr @sm8150_usb3_uniphy_pcs_tbl, ptr @qmp_v4_usb3_uniphy_regs_layout, ptr @sm8250_usb3_uniphy_tx_tbl, ptr @sm8250_usb3_uniphy_rx_tbl, ptr @sm8250_usb3_uniphy_pcs_tbl, ptr @sm8250_qmp_pcie_serdes_tbl, ptr @sm8250_qmp_gen3x1_pcie_serdes_tbl, ptr @sm8250_qmp_pcie_tx_tbl, ptr @sm8250_qmp_pcie_rx_tbl, ptr @sm8250_qmp_gen3x1_pcie_rx_tbl, ptr @sm8250_qmp_pcie_pcs_tbl, ptr @sm8250_qmp_gen3x1_pcie_pcs_tbl, ptr @sm8250_qmp_pcie_pcs_misc_tbl, ptr @sm8250_qmp_gen3x1_pcie_pcs_misc_tbl, ptr @sm8250_qmp_gen3x2_pcie_tx_tbl, ptr @sm8250_qmp_gen3x2_pcie_rx_tbl, ptr @sm8250_qmp_gen3x2_pcie_pcs_tbl, ptr @sm8250_qmp_gen3x2_pcie_pcs_misc_tbl, ptr @sm8350_ufsphy_serdes_tbl, ptr @sm8350_ufsphy_tx_tbl, ptr @sm8350_ufsphy_rx_tbl, ptr @sm8350_ufsphy_pcs_tbl, ptr @sdx55_qmp_pcie_serdes_tbl, ptr @sdx55_qmp_pcie_tx_tbl, ptr @sdx55_qmp_pcie_rx_tbl, ptr @sdx55_qmp_pcie_pcs_tbl, ptr @sdx55_qmp_pcie_pcs_misc_tbl, ptr @sdx55_usb3_uniphy_tx_tbl, ptr @sdx55_usb3_uniphy_rx_tbl, ptr @qmp_v4_sdx55_usbphy_clk_l, ptr @sm8350_usb3_tx_tbl, ptr @sm8350_usb3_rx_tbl, ptr @sm8350_usb3_pcs_tbl, ptr @sm8350_usb3_uniphy_tx_tbl, ptr @sm8350_usb3_uniphy_rx_tbl, ptr @sm8350_usb3_uniphy_pcs_tbl, ptr @sm8350_usb3_uniphy_regs_layout, ptr @sm8450_qmp_gen3x1_pcie_serdes_tbl, ptr @sm8450_qmp_gen3x1_pcie_tx_tbl, ptr @sm8450_qmp_gen3x1_pcie_rx_tbl, ptr @sm8450_qmp_gen3x1_pcie_pcs_tbl, ptr @sm8450_qmp_gen3x1_pcie_pcs_misc_tbl, ptr @sm8450_qmp_gen4x2_pcie_serdes_tbl, ptr @sm8450_qmp_gen4x2_pcie_tx_tbl, ptr @sm8450_qmp_gen4x2_pcie_rx_tbl, ptr @sm8450_qmp_gen4x2_pcie_pcs_tbl, ptr @sm8450_qmp_gen4x2_pcie_pcs_misc_tbl, ptr @sm8450_ufs_phy_clk_l, ptr @.str.78, ptr @qcm2290_usb3_serdes_tbl, ptr @qcm2290_usb3_tx_tbl, ptr @qcm2290_usb3_rx_tbl, ptr @qcm2290_usb3_pcs_tbl, ptr @qcm2290_usb3phy_clk_l, ptr @qcm2290_usb3phy_reset_l, ptr @qcm2290_usb3phy_regs_layout, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.qcom_qmp_phy_probe], section "llvm.metadata"
@0 = internal global [303 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_of_match_table to i32), i32 8428, i32 10528, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_combo_phy_of_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_usb3dpphy_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3dpphy_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_usb3dpphy_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dpphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_serdes_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_rx_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_pcs_tbl to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_phy_clk_l to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_usb3phy_reset_l to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_phy_vreg_l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3phy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_dp_serdes_tbl to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_dp_tx_tbl to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_dp_serdes_tbl_rbr to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_dp_serdes_tbl_hbr to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_dp_serdes_tbl_hbr2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_dp_serdes_tbl_hbr3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_dp_v3_voltage_swing_hbr_rbr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_dp_v3_pre_emphasis_hbr_rbr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_dp_v3_voltage_swing_hbr3_hbr2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_dp_v3_pre_emphasis_hbr3_hbr2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_v3_dp_phy_calibrate.cfg1_settings to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_dpphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_serdes_tbl to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_tx_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_rx_tbl to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_pcs_tbl to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_sm8250_usbphy_clk_l to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_usb3phy_reset_l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_usb3phy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_dp_serdes_tbl to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_dp_tx_tbl to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_dp_serdes_tbl_rbr to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_dp_serdes_tbl_hbr to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_dp_serdes_tbl_hbr2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_dp_serdes_tbl_hbr3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_phy_clk_l to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_v4_dp_phy_calibrate.cfg1_settings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_dpphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_rx_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_pcs_tbl to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_reset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_create._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_create._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_pcie_ufs_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_dp_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_gen_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_create._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_com_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_com_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_com_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_power_on._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_power_on._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_serdes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_pipe_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_dp_link_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_dp_pixel_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_dp_clks_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_ufs_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufsphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ufsphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qhp_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_uniphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_ufsphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_uniphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_uniphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x1_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x2_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_ufsphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qmp_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_usb3_uniphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_uniphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen3x1_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen4x2_pciephy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_ufsphy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3phy_cfg to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_usb3_serdes_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_usb3_tx_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_usb3_rx_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_usb3_pcs_tbl to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_phy_clk_l to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3phy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_pcie_serdes_tbl to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_pcie_tx_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_pcie_rx_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_pcie_pcs_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_pciephy_reset_l to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciephy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_ufs_serdes_tbl to i32), i32 564, i32 704, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_ufs_tx_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_ufs_rx_tbl to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_ufs_phy_clk_l to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_ufsphy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_usb3_serdes_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_usb3_rx_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_usb3_pcs_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_pcie_serdes_tbl to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_pcie_tx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_pcie_rx_tbl to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_pcie_pcs_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pciephy_reset_l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufsphy_serdes_tbl to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufsphy_tx_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufsphy_rx_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufsphy_pcs_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufs_phy_clk_l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ufsphy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pcie_serdes_tbl to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pcie_tx_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pcie_rx_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pcie_pcs_tbl to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_pciephy_clk_l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_pcie_serdes_tbl to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_pcie_tx_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_pcie_rx_tbl to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq6018_pcie_pcs_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq_pciephy_gen3_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_qmp_pcie_serdes_tbl to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_qmp_pcie_tx_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_qmp_pcie_rx_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_qmp_pcie_pcs_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc8180x_qmp_pcie_pcs_misc_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_pciephy_clk_l to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_pciephy_reset_l to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_pcie_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ufsphy_serdes_tbl to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ufsphy_tx_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ufsphy_rx_tbl to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ufsphy_pcs_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ufsphy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qhp_pcie_serdes_tbl to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qhp_pcie_tx_tbl to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qhp_pcie_rx_tbl to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qhp_pcie_pcs_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qhp_pciephy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pcie_serdes_tbl to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pcie_tx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pcie_rx_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pcie_pcs_tbl to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pcie_pcs_misc_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qmp_pciephy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_uniphy_serdes_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_uniphy_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_uniphy_rx_tbl to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v3_usb3_uniphy_pcs_tbl to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_usb3_serdes_tbl to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_usb3_tx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_usb3_rx_tbl to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8998_usb3_pcs_tbl to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_ufsphy_serdes_tbl to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_ufsphy_tx_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_ufsphy_rx_tbl to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_ufsphy_pcs_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm6115_ufsphy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_uniphy_serdes_tbl to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_uniphy_tx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_uniphy_rx_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_usb3_uniphy_pcs_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_usb3_uniphy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_uniphy_tx_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_uniphy_rx_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_usb3_uniphy_pcs_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_pcie_serdes_tbl to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x1_pcie_serdes_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_pcie_tx_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_pcie_rx_tbl to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x1_pcie_rx_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_pcie_pcs_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x1_pcie_pcs_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_pcie_pcs_misc_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x1_pcie_pcs_misc_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x2_pcie_tx_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x2_pcie_rx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x2_pcie_pcs_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_qmp_gen3x2_pcie_pcs_misc_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_ufsphy_serdes_tbl to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_ufsphy_tx_tbl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_ufsphy_rx_tbl to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_ufsphy_pcs_tbl to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qmp_pcie_serdes_tbl to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qmp_pcie_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qmp_pcie_rx_tbl to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qmp_pcie_pcs_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_qmp_pcie_pcs_misc_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_usb3_uniphy_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdx55_usb3_uniphy_rx_tbl to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_v4_sdx55_usbphy_clk_l to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_tx_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_rx_tbl to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_pcs_tbl to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_uniphy_tx_tbl to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_uniphy_rx_tbl to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_uniphy_pcs_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8350_usb3_uniphy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen3x1_pcie_serdes_tbl to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen3x1_pcie_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen3x1_pcie_rx_tbl to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen3x1_pcie_pcs_tbl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen3x1_pcie_pcs_misc_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen4x2_pcie_serdes_tbl to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen4x2_pcie_tx_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen4x2_pcie_rx_tbl to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen4x2_pcie_pcs_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_qmp_gen4x2_pcie_pcs_misc_tbl to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8450_ufs_phy_clk_l to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3_serdes_tbl to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3_tx_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3_rx_tbl to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3_pcs_tbl to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3phy_clk_l to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3phy_reset_l to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcm2290_usb3phy_regs_layout to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_qmp_phy_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qcom_qmp_phy_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_qmp_phy_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qmp_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_qmp_phy_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %prop_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup123_crit_edge, label %if.end

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end14.thread

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @of_match_device(ptr noundef nonnull @qcom_qmp_combo_phy_of_match_table, ptr noundef %dev1) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.cleanup123_crit_edge, label %if.end9

if.then5.cleanup123_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end9:                                          ; preds = %if.then5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call6, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.end9.cleanup123_crit_edge, label %if.end14

if.end9.cleanup123_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end14:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end14.if.then17_crit_edge, label %if.then22.thread

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.end14.thread:                                  ; preds = %if.end
  %call15256 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %cmp.i257 = icmp ugt ptr %call15256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.end14.thread.if.then17_crit_edge, label %lor.lhs.false

if.end14.thread.if.then17_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %if.end14.thread.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %call15262 = phi ptr [ %call15256, %if.end14.thread.if.then17_crit_edge ], [ %call15, %if.end14.if.then17_crit_edge ]
  %6 = ptrtoint ptr %call15262 to i32
  br label %cleanup123

lor.lhs.false:                                    ; preds = %if.end14.thread
  %has_phy_dp_com_ctrl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %call3, i32 0, i32 50
  %7 = ptrtoint ptr %has_phy_dp_com_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_phy_dp_com_ctrl, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool21.not = icmp eq i8 %8, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.else_crit_edge, label %if.then22

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then22:                                        ; preds = %lor.lhs.false
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #11
  %dp_com = getelementptr inbounds %struct.qcom_qmp, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dp_com to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %dp_com, align 4
  %cmp.i220 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then22.if.then26_crit_edge, label %if.then22.if.else_crit_edge

if.then22.if.else_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then22.if.then26_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then22.thread:                                 ; preds = %if.end14
  %call23289 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #11
  %dp_com290 = getelementptr inbounds %struct.qcom_qmp, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dp_com290 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call23289, ptr %dp_com290, align 4
  %cmp.i220291 = icmp ugt ptr %call23289, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220291, label %if.then22.thread.if.then26_crit_edge, label %if.then32

if.then22.thread.if.then26_crit_edge:             ; preds = %if.then22.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then26:                                        ; preds = %if.then22.thread.if.then26_crit_edge, %if.then22.if.then26_crit_edge
  %call23297 = phi ptr [ %call23289, %if.then22.thread.if.then26_crit_edge ], [ %call23, %if.then22.if.then26_crit_edge ]
  %11 = ptrtoint ptr %call23297 to i32
  br label %cleanup123

if.then32:                                        ; preds = %if.then22.thread
  %call33 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #11
  %cmp.i221 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call33 to i32
  br label %cleanup123

if.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %dp_cfg38 = getelementptr inbounds %struct.qmp_phy_combo_cfg, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dp_cfg38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp_cfg38, align 4
  br label %do.body

if.else:                                          ; preds = %if.then22.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %nlanes = getelementptr inbounds %struct.qmp_phy_cfg, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %nlanes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nlanes, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end37
  %cfg.1259276 = phi ptr [ %5, %if.end37 ], [ %call3, %if.else ]
  %usb_cfg.1260272 = phi ptr [ %5, %if.end37 ], [ null, %if.else ]
  %call15261268 = phi ptr [ %call15, %if.end37 ], [ %call15256, %if.else ]
  %dp_serdes.0 = phi ptr [ %call33, %if.end37 ], [ null, %if.else ]
  %dp_cfg.0 = phi ptr [ %14, %if.end37 ], [ null, %if.else ]
  %expected_phys.0 = phi i32 [ 2, %if.end37 ], [ %16, %if.else ]
  %phy_mutex = getelementptr inbounds %struct.qcom_qmp, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %phy_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @qcom_qmp_phy_probe.__key) #11
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %num_clks.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg.1259276, i32 0, i32 35
  %19 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_clks.i, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 8) #11
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !608

devm_kcalloc.exit.thread.i:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %clks21.i = getelementptr inbounds %struct.qcom_qmp, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %clks21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %clks21.i, align 4
  br label %cleanup123

devm_kcalloc.exit.i:                              ; preds = %do.body
  %24 = extractvalue { i32, i1 } %21, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %24, i32 noundef 3520) #11
  %clks.i = getelementptr inbounds %struct.qcom_qmp, ptr %18, i32 0, i32 2
  %25 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i.i, ptr %clks.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.cleanup123_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.cleanup123_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp23.not.i = icmp eq i32 %20, 0
  br i1 %cmp23.not.i, label %for.cond.preheader.i.qcom_qmp_phy_clk_init.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qcom_qmp_phy_clk_init.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_clk_init.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %clk_list.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg.1259276, i32 0, i32 34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %clk_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_list.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %27, i32 %i.024.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clks.i, align 4
  %arrayidx4.i = getelementptr %struct.clk_bulk_data, ptr %31, i32 %i.024.i
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %20
  br i1 %exitcond.not.i, label %for.body.i.qcom_qmp_phy_clk_init.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.qcom_qmp_phy_clk_init.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_clk_init.exit

qcom_qmp_phy_clk_init.exit:                       ; preds = %for.body.i.qcom_qmp_phy_clk_init.exit_crit_edge, %for.cond.preheader.i.qcom_qmp_phy_clk_init.exit_crit_edge
  %33 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clks.i, align 4
  %call6.i = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %20, ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool41.not = icmp eq i32 %call6.i, 0
  br i1 %tobool41.not, label %if.end43, label %qcom_qmp_phy_clk_init.exit.cleanup123_crit_edge

qcom_qmp_phy_clk_init.exit.cleanup123_crit_edge:  ; preds = %qcom_qmp_phy_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end43:                                         ; preds = %qcom_qmp_phy_clk_init.exit
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i, align 4
  %num_resets.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg.1259276, i32 0, i32 37
  %37 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_resets.i, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 4) #11
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread.i223, label %devm_kcalloc.exit.i226, !prof !608

devm_kcalloc.exit.thread.i223:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %resets28.i = getelementptr inbounds %struct.qcom_qmp, ptr %36, i32 0, i32 3
  %41 = ptrtoint ptr %resets28.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %resets28.i, align 4
  br label %cleanup123

devm_kcalloc.exit.i226:                           ; preds = %if.end43
  %42 = extractvalue { i32, i1 } %39, 0
  %call5.i.i.i224 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %42, i32 noundef 3520) #11
  %resets.i = getelementptr inbounds %struct.qcom_qmp, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %resets.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i.i224, ptr %resets.i, align 4
  %tobool.not.i225 = icmp eq ptr %call5.i.i.i224, null
  br i1 %tobool.not.i225, label %devm_kcalloc.exit.i226.cleanup123_crit_edge, label %for.cond.preheader.i227

devm_kcalloc.exit.i226.cleanup123_crit_edge:      ; preds = %devm_kcalloc.exit.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

for.cond.preheader.i227:                          ; preds = %devm_kcalloc.exit.i226
  %44 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_resets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp31.i = icmp sgt i32 %45, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i228, label %for.cond.preheader.i227.if.end47_crit_edge

for.cond.preheader.i227.if.end47_crit_edge:       ; preds = %for.cond.preheader.i227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

for.body.lr.ph.i228:                              ; preds = %for.cond.preheader.i227
  %reset_list.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg.1259276, i32 0, i32 36
  br label %for.body.i230

for.body.i230:                                    ; preds = %for.inc.i.for.body.i230_crit_edge, %for.body.lr.ph.i228
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i228 ], [ %inc.i231, %for.inc.i.for.body.i230_crit_edge ]
  %46 = ptrtoint ptr %reset_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reset_list.i, align 4
  %arrayidx.i229 = getelementptr ptr, ptr %47, i32 %i.032.i
  %48 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i229, align 4
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef %49, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %qcom_qmp_phy_reset_init.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i230
  %50 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resets.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %51, i32 %i.032.i
  %52 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i.i, ptr %arrayidx10.i, align 4
  %inc.i231 = add nuw nsw i32 %i.032.i, 1
  %53 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_resets.i, align 4
  %cmp.i232 = icmp slt i32 %inc.i231, %54
  br i1 %cmp.i232, label %for.inc.i.for.body.i230_crit_edge, label %for.inc.i.if.end47_crit_edge

for.inc.i.if.end47_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

for.inc.i.for.body.i230_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i230

qcom_qmp_phy_reset_init.exit:                     ; preds = %for.body.i230
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %49) #14
  %55 = ptrtoint ptr %call.i.i.i to i32
  br label %cleanup123

if.end47:                                         ; preds = %for.inc.i.if.end47_crit_edge, %for.cond.preheader.i227.if.end47_crit_edge
  %call48 = tail call fastcc i32 @qcom_qmp_phy_vreg_init(ptr noundef %dev1, ptr noundef %cfg.1259276)
  %56 = zext i32 %call48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call48, label %do.end54 [
    i32 0, label %if.end56
    i32 -517, label %if.end47.cleanup123_crit_edge
  ]

if.end47.cleanup123_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call48) #14
  br label %cleanup123

if.end56:                                         ; preds = %if.end47
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node, align 8
  %call57 = tail call fastcc i32 @of_get_available_child_count(ptr noundef %58)
  call void @__sanitizer_cov_trace_cmp4(i32 %call57, i32 %expected_phys.0)
  %cmp58 = icmp sgt i32 %call57, %expected_phys.0
  br i1 %cmp58, label %if.end56.cleanup123_crit_edge, label %if.end60

if.end56.cleanup123_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end60:                                         ; preds = %if.end56
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call57, i32 4) #11
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !608

devm_kcalloc.exit.thread:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %phys316 = getelementptr inbounds %struct.qcom_qmp, ptr %call.i, i32 0, i32 5
  %61 = ptrtoint ptr %phys316 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %phys316, align 4
  br label %cleanup123

devm_kcalloc.exit:                                ; preds = %if.end60
  %62 = extractvalue { i32, i1 } %59, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %62, i32 noundef 3520) #11
  %phys = getelementptr inbounds %struct.qcom_qmp, ptr %call.i, i32 0, i32 5
  %63 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call5.i.i, ptr %phys, align 4
  %tobool63.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool63.not, label %devm_kcalloc.exit.cleanup123_crit_edge, label %if.end65

devm_kcalloc.exit.cleanup123_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end65:                                         ; preds = %devm_kcalloc.exit
  %call.i233 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  tail call void @pm_runtime_forbid(ptr noundef %dev1) #11
  %64 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node, align 8
  %call68 = tail call ptr @of_get_next_available_child(ptr noundef %65, ptr noundef null) #11
  %cmp69.not350 = icmp eq ptr %call68, null
  br i1 %cmp69.not350, label %if.end65.for.end_crit_edge, label %for.body.lr.ph

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end65
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end111.for.body_crit_edge, %for.body.lr.ph
  %id.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end111.for.body_crit_edge ]
  %cfg.2354 = phi ptr [ %cfg.1259276, %for.body.lr.ph ], [ %cfg.3, %if.end111.for.body_crit_edge ]
  %serdes.0353 = phi ptr [ %call15261268, %for.body.lr.ph ], [ %serdes.1, %if.end111.for.body_crit_edge ]
  %child.0351 = phi ptr [ %call68, %for.body.lr.ph ], [ %call113, %if.end111.for.body_crit_edge ]
  %call70 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0351, ptr noundef nonnull @.str.7) #11
  br i1 %call70, label %for.body.if.end76_crit_edge, label %if.else72

for.body.if.end76_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.else72:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.0351, ptr noundef nonnull @.str.8) #11
  %spec.select = select i1 %call73, ptr %call15261268, ptr %serdes.0353
  %spec.select219 = select i1 %call73, ptr %usb_cfg.1260272, ptr %cfg.2354
  br label %if.end76

if.end76:                                         ; preds = %if.else72, %for.body.if.end76_crit_edge
  %serdes.1 = phi ptr [ %dp_serdes.0, %for.body.if.end76_crit_edge ], [ %spec.select, %if.else72 ]
  %cfg.3 = phi ptr [ %dp_cfg.0, %for.body.if.end76_crit_edge ], [ %spec.select219, %if.else72 ]
  %66 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prop_name.i) #11
  %68 = call ptr @memset(ptr %prop_name.i, i32 255, i32 32)
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #11
  %tobool.not.i235 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i235, label %if.end76.qcom_qmp_phy_create.exit.thread_crit_edge, label %if.end.i

if.end76.qcom_qmp_phy_create.exit.thread_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_create.exit.thread

if.end.i:                                         ; preds = %if.end76
  %cfg2.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %cfg2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %cfg.3, ptr %cfg2.i, align 4
  %serdes3.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %serdes3.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %serdes.1, ptr %serdes3.i, align 4
  %call4.i = call ptr @of_iomap(ptr noundef nonnull %child.0351, i32 noundef 0) #11
  %tx.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call4.i, ptr %tx.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i.qcom_qmp_phy_create.exit.thread_crit_edge, label %if.end8.i

if.end.i.qcom_qmp_phy_create.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_create.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = call ptr @of_iomap(ptr noundef nonnull %child.0351, i32 noundef 1) #11
  %rx.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 4
  %72 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i, ptr %rx.i, align 4
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.end8.i.qcom_qmp_phy_create.exit.thread_crit_edge, label %if.end13.i

if.end8.i.qcom_qmp_phy_create.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_create.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %call14.i = call ptr @of_iomap(ptr noundef nonnull %child.0351, i32 noundef 2) #11
  %pcs.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 5
  %73 = ptrtoint ptr %pcs.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call14.i, ptr %pcs.i, align 4
  %tobool16.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool16.not.i, label %if.end13.i.qcom_qmp_phy_create.exit.thread_crit_edge, label %if.end18.i

if.end13.i.qcom_qmp_phy_create.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_create.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  %is_dual_lane_phy.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg.3, i32 0, i32 51
  %74 = ptrtoint ptr %is_dual_lane_phy.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_dual_lane_phy.i, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool19.not.i = icmp eq i8 %75, 0
  %call38.i = call ptr @of_iomap(ptr noundef nonnull %child.0351, i32 noundef 3) #11
  br i1 %tobool19.not.i, label %if.else37.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end18.i
  %tx2.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %tx2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call38.i, ptr %tx2.i, align 4
  %call22.i = call ptr @of_iomap(ptr noundef nonnull %child.0351, i32 noundef 4) #11
  %rx2.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 7
  %77 = ptrtoint ptr %rx2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call22.i, ptr %rx2.i, align 4
  %tobool24.not.i = icmp eq ptr %call38.i, null
  %tobool26.not.i = icmp eq ptr %call22.i, null
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool26.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33) #14
  %78 = ptrtoint ptr %tx2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx2.i, align 4
  %pcs_misc.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 8
  %80 = ptrtoint ptr %pcs_misc.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %pcs_misc.i, align 4
  %81 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 1024
  store ptr %add.ptr.i, ptr %tx2.i, align 4
  %83 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %84, i32 1024
  %85 = ptrtoint ptr %rx2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr32.i, ptr %rx2.i, align 4
  br label %if.end40.i

if.else.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = call ptr @of_iomap(ptr noundef nonnull %child.0351, i32 noundef 5) #11
  %pcs_misc35.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 8
  %86 = ptrtoint ptr %pcs_misc35.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call34.i, ptr %pcs_misc35.i, align 4
  br label %if.end40.i

if.else37.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %pcs_misc39.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 8
  %87 = ptrtoint ptr %pcs_misc39.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call38.i, ptr %pcs_misc39.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else37.i, %if.else.i, %do.end.i
  %call45.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name.i, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %id.0355) #11
  %call47.i = call ptr @of_clk_get_by_name(ptr noundef nonnull %child.0351, ptr noundef nonnull %prop_name.i) #11
  %pipe_clk.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 9
  %88 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call47.i, ptr %pipe_clk.i, align 4
  %cmp.i.i236 = icmp ugt ptr %call47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i236, label %if.then50.i, label %if.end40.i.if.end65.i_crit_edge

if.end40.i.if.end65.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then50.i:                                      ; preds = %if.end40.i
  %89 = ptrtoint ptr %cfg.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cfg.3, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %90, label %if.end63.i [
    i32 2, label %if.then50.i.if.then54.i_crit_edge
    i32 4, label %if.then50.i.if.then54.i_crit_edge473
  ]

if.then50.i.if.then54.i_crit_edge473:             ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54.i

if.then50.i.if.then54.i_crit_edge:                ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then54.i

if.then54.i:                                      ; preds = %if.then50.i.if.then54.i_crit_edge, %if.then50.i.if.then54.i_crit_edge473
  %cmp57.not.i = icmp eq ptr %call47.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp57.not.i, label %if.then54.i.qcom_qmp_phy_create.exit.thread_crit_edge, label %do.end61.i

if.then54.i.qcom_qmp_phy_create.exit.thread_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_create.exit.thread

do.end61.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %call47.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %id.0355, i32 noundef %92) #14
  br label %qcom_qmp_phy_create.exit

if.end63.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %pipe_clk.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end63.i, %if.end40.i.if.end65.i_crit_edge
  %has_lane_rst.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg.3, i32 0, i32 46
  %94 = ptrtoint ptr %has_lane_rst.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %has_lane_rst.i, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool66.not.i = icmp eq i8 %95, 0
  br i1 %tobool66.not.i, label %if.end65.i.if.end81.i_crit_edge, label %if.then67.i

if.end65.i.if.end81.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

if.then67.i:                                      ; preds = %if.end65.i
  %call69.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop_name.i, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %id.0355) #11
  %call.i.i.i237 = call ptr @__of_reset_control_get(ptr noundef nonnull %child.0351, ptr noundef nonnull %prop_name.i, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %lane_rst.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 12
  %96 = ptrtoint ptr %lane_rst.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i.i.i237, ptr %lane_rst.i, align 4
  %cmp.i178.i = icmp ugt ptr %call.i.i.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178.i, label %do.end77.i, label %if.then67.i.if.end81.i_crit_edge

if.then67.i.if.end81.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

do.end77.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %id.0355) #14
  %97 = ptrtoint ptr %lane_rst.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lane_rst.i, align 4
  %99 = ptrtoint ptr %98 to i32
  br label %qcom_qmp_phy_create.exit

if.end81.i:                                       ; preds = %if.then67.i.if.end81.i_crit_edge, %if.end65.i.if.end81.i_crit_edge
  %100 = ptrtoint ptr %cfg.3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cfg.3, align 4
  %switch.tableidx = add i32 %101, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %102 = icmp ult i32 %switch.tableidx, 5
  br i1 %102, label %switch.lookup, label %if.end81.i.if.end94.i_crit_edge

if.end81.i.if.end94.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94.i

switch.lookup:                                    ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.qcom_qmp_phy_probe, i32 0, i32 %switch.tableidx
  %103 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %103)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %switch.lookup, %if.end81.i.if.end94.i_crit_edge
  %ops.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @qcom_qmp_phy_gen_ops, %if.end81.i.if.end94.i_crit_edge ]
  %call95.i = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0351, ptr noundef nonnull %ops.0.i) #11
  %cmp.i179.i = icmp ugt ptr %call95.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %if.then97.i, label %qcom_qmp_phy_create.exit.thread321

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %call95.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %104) #14
  br label %qcom_qmp_phy_create.exit

qcom_qmp_phy_create.exit.thread321:               ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call95.i, ptr %call.i.i, align 4
  %index.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 10
  %106 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %id.0355, ptr %index.i, align 4
  %qmp103.i = getelementptr inbounds %struct.qmp_phy, ptr %call.i.i, i32 0, i32 11
  %107 = ptrtoint ptr %qmp103.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %67, ptr %qmp103.i, align 4
  %phys.i = getelementptr inbounds %struct.qcom_qmp, ptr %67, i32 0, i32 5
  %108 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %phys.i, align 4
  %arrayidx.i238 = getelementptr ptr, ptr %109, i32 %id.0355
  %110 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i.i, ptr %arrayidx.i238, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call95.i, i32 0, i32 8
  %111 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name.i) #11
  br label %if.end83

qcom_qmp_phy_create.exit.thread:                  ; preds = %if.then54.i.qcom_qmp_phy_create.exit.thread_crit_edge, %if.end13.i.qcom_qmp_phy_create.exit.thread_crit_edge, %if.end8.i.qcom_qmp_phy_create.exit.thread_crit_edge, %if.end.i.qcom_qmp_phy_create.exit.thread_crit_edge, %if.end76.qcom_qmp_phy_create.exit.thread_crit_edge
  %retval.0.i239.ph = phi i32 [ -517, %if.then54.i.qcom_qmp_phy_create.exit.thread_crit_edge ], [ -12, %if.end13.i.qcom_qmp_phy_create.exit.thread_crit_edge ], [ -12, %if.end8.i.qcom_qmp_phy_create.exit.thread_crit_edge ], [ -12, %if.end.i.qcom_qmp_phy_create.exit.thread_crit_edge ], [ -12, %if.end76.qcom_qmp_phy_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name.i) #11
  br label %do.end82

qcom_qmp_phy_create.exit:                         ; preds = %if.then97.i, %do.end77.i, %do.end61.i
  %retval.0.i239 = phi i32 [ %99, %do.end77.i ], [ %104, %if.then97.i ], [ %92, %do.end61.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prop_name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i239)
  %tobool78.not = icmp eq i32 %retval.0.i239, 0
  br i1 %tobool78.not, label %qcom_qmp_phy_create.exit.if.end83_crit_edge, label %qcom_qmp_phy_create.exit.do.end82_crit_edge

qcom_qmp_phy_create.exit.do.end82_crit_edge:      ; preds = %qcom_qmp_phy_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end82

qcom_qmp_phy_create.exit.if.end83_crit_edge:      ; preds = %qcom_qmp_phy_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

do.end82:                                         ; preds = %qcom_qmp_phy_create.exit.do.end82_crit_edge, %qcom_qmp_phy_create.exit.thread
  %retval.0.i239320 = phi i32 [ %retval.0.i239.ph, %qcom_qmp_phy_create.exit.thread ], [ %retval.0.i239, %qcom_qmp_phy_create.exit.do.end82_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %id.0355, i32 noundef %retval.0.i239320) #14
  br label %err_node_put

if.end83:                                         ; preds = %qcom_qmp_phy_create.exit.if.end83_crit_edge, %qcom_qmp_phy_create.exit.thread321
  %112 = ptrtoint ptr %cfg.3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cfg.3, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %113, label %if.end83.if.end111_crit_edge [
    i32 4, label %if.end83.if.then88_crit_edge
    i32 2, label %if.end83.if.then88_crit_edge474
    i32 6, label %if.then100
  ]

if.end83.if.then88_crit_edge474:                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

if.end83.if.then88_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then88

if.end83.if.end111_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then88:                                        ; preds = %if.end83.if.then88_crit_edge, %if.end83.if.then88_crit_edge474
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #11
  %115 = call ptr @memset(ptr %init.i, i32 0, i32 28)
  %call.i240 = call i32 @of_property_read_string(ptr noundef nonnull %child.0351, ptr noundef nonnull @.str.68, ptr noundef nonnull %init.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.not.i241 = icmp eq i32 %call.i240, 0
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i241, label %if.end.i244, label %do.end.i242

do.end.i242:                                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.69, ptr noundef nonnull %child.0351) #14
  br label %do.end94

if.end.i244:                                      ; preds = %if.then88
  %call.i.i243 = call noalias ptr @devm_kmalloc(ptr noundef %117, i32 noundef 24, i32 noundef 3520) #11
  %tobool3.not.i = icmp eq ptr %call.i.i243, null
  br i1 %tobool3.not.i, label %if.end.i244.do.end94_crit_edge, label %if.end5.i

if.end.i244.do.end94_crit_edge:                   ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end5.i:                                        ; preds = %if.end.i244
  %118 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @clk_fixed_rate_ops, ptr %ops.i, align 4
  %fixed_rate.i = getelementptr inbounds %struct.clk_fixed_rate, ptr %call.i.i243, i32 0, i32 1
  %119 = ptrtoint ptr %fixed_rate.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 125000000, ptr %fixed_rate.i, align 4
  %init6.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i243, i32 0, i32 2
  %120 = ptrtoint ptr %init6.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %init.i, ptr %init6.i, align 4
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  %call9.i245 = call i32 @devm_clk_hw_register(ptr noundef %122, ptr noundef nonnull %call.i.i243) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i245)
  %tobool10.not.i = icmp eq i32 %call9.i245, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end5.i.do.end94_crit_edge

if.end5.i.do.end94_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end12.i:                                       ; preds = %if.end5.i
  %call14.i246 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %child.0351, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i.i243) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i246)
  %tobool15.not.i = icmp eq i32 %call14.i246, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.do.end94_crit_edge

if.end12.i.do.end94_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94

if.end17.i:                                       ; preds = %if.end12.i
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  %call.i37.i = call i32 @devm_add_action(ptr noundef %124, ptr noundef nonnull @phy_clk_release_provider, ptr noundef nonnull %child.0351) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i.i, label %phy_pipe_clk_register.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_clk_del_provider(ptr noundef nonnull %child.0351) #11
  br label %do.end94

phy_pipe_clk_register.exit:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #11
  br label %if.end111

do.end94:                                         ; preds = %if.then.i.i, %if.end12.i.do.end94_crit_edge, %if.end5.i.do.end94_crit_edge, %if.end.i244.do.end94_crit_edge, %do.end.i242
  %retval.0.i247.ph = phi i32 [ %call.i37.i, %if.then.i.i ], [ %call.i240, %do.end.i242 ], [ %call14.i246, %if.end12.i.do.end94_crit_edge ], [ %call9.i245, %if.end5.i.do.end94_crit_edge ], [ -12, %if.end.i244.do.end94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #11
  %125 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.13) #14
  br label %err_node_put

if.then100:                                       ; preds = %if.end83
  %127 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %128, i32 %id.0355
  %129 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx, align 4
  %call102 = call fastcc i32 @phy_dp_clks_register(ptr noundef nonnull %call.i, ptr noundef %130, ptr noundef nonnull %child.0351)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then100.if.end111_crit_edge, label %do.end107

if.then100.if.end111_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

do.end107:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.16) #14
  br label %err_node_put

if.end111:                                        ; preds = %if.then100.if.end111_crit_edge, %phy_pipe_clk_register.exit, %if.end83.if.end111_crit_edge
  %inc = add i32 %id.0355, 1
  %133 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %of_node, align 8
  %call113 = call ptr @of_get_next_available_child(ptr noundef %134, ptr noundef nonnull %child.0351) #11
  %cmp69.not = icmp eq ptr %call113, null
  br i1 %cmp69.not, label %if.end111.for.end_crit_edge, label %if.end111.for.body_crit_edge

if.end111.for.body_crit_edge:                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end111.for.end_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end111.for.end_crit_edge, %if.end65.for.end_crit_edge
  %call114 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #11
  %cmp.i248 = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.else120, label %do.end119

do.end119:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19) #14
  br label %if.end121

if.else120:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %do.end119
  %135 = ptrtoint ptr %call114 to i32
  %spec.select.i = select i1 %cmp.i248, i32 %135, i32 0
  br label %cleanup123

err_node_put:                                     ; preds = %do.end107, %do.end94, %do.end82
  %ret.0 = phi i32 [ %retval.0.i239320, %do.end82 ], [ %retval.0.i247.ph, %do.end94 ], [ %call102, %do.end107 ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  call void @of_node_put(ptr noundef nonnull %child.0351) #11
  br label %cleanup123

cleanup123:                                       ; preds = %err_node_put, %if.end121, %devm_kcalloc.exit.cleanup123_crit_edge, %devm_kcalloc.exit.thread, %if.end56.cleanup123_crit_edge, %do.end54, %if.end47.cleanup123_crit_edge, %qcom_qmp_phy_reset_init.exit, %devm_kcalloc.exit.i226.cleanup123_crit_edge, %devm_kcalloc.exit.thread.i223, %qcom_qmp_phy_clk_init.exit.cleanup123_crit_edge, %devm_kcalloc.exit.i.cleanup123_crit_edge, %devm_kcalloc.exit.thread.i, %if.then35, %if.then26, %if.then17, %if.end9.cleanup123_crit_edge, %if.then5.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %retval.1 = phi i32 [ %6, %if.then17 ], [ %11, %if.then26 ], [ %12, %if.then35 ], [ %ret.0, %err_node_put ], [ %spec.select.i, %if.end121 ], [ -12, %entry.cleanup123_crit_edge ], [ %call6.i, %qcom_qmp_phy_clk_init.exit.cleanup123_crit_edge ], [ %55, %qcom_qmp_phy_reset_init.exit ], [ %call48, %if.end47.cleanup123_crit_edge ], [ %call48, %do.end54 ], [ -22, %if.end56.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %if.then5.cleanup123_crit_edge ], [ -22, %if.end9.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i226.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i223 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_qmp_phy_vreg_init(ptr noundef %dev, ptr nocapture noundef readonly %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_vregs = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg, i32 0, i32 39
  %2 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vregs, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 12) #11
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !608

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vregs21 = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vregs21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vregs21, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #11
  %vregs = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %vregs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %vregs, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.not = icmp eq i32 %3, 0
  br i1 %cmp23.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vreg_list = getelementptr inbounds %struct.qmp_phy_cfg, ptr %cfg, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %vreg_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vreg_list, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.024
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vregs, align 4
  %arrayidx4 = getelementptr %struct.regulator_bulk_data, ptr %14, i32 %i.024
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vregs, align 4
  %call6 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %3, ptr noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ %call6, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_available_child_count(ptr noundef %np) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef null) #11
  %cmp.not5 = icmp eq ptr %call, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.06 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %num.07, 1
  %call1 = tail call ptr @of_get_next_available_child(ptr noundef %np, ptr noundef nonnull %child.06) #11
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @phy_dp_clks_register(ptr nocapture noundef readonly %qmp, ptr noundef %qphy, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #11
  %0 = getelementptr inbounds i8, ptr %init, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #11
  %2 = call ptr @memset(ptr %name, i32 255, i32 64)
  %3 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qmp, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 28, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %qphy, ptr %call.i, align 4
  %dp_clks2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 16
  %6 = ptrtoint ptr %dp_clks2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %dp_clks2, align 4
  %7 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qmp, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end.dev_name.exit_crit_edge ]
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str.71, ptr noundef %retval.0.i)
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @qcom_qmp_dp_link_clk_ops, ptr %ops, align 4
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name, ptr %init, align 4
  %dp_link_hw = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %call.i, i32 0, i32 1
  %init8 = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %call.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %init8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init8, align 4
  %16 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qmp, align 4
  %call11 = call i32 @devm_clk_hw_register(ptr noundef %17, ptr noundef %dp_link_hw) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %dev_name.exit
  %18 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qmp, align 4
  %init_name.i57 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i57, align 8
  %tobool.not.i58 = icmp eq ptr %21, null
  br i1 %tobool.not.i58, label %if.end.i59, label %if.end14.dev_name.exit61_crit_edge

if.end14.dev_name.exit61_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit61

if.end.i59:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %dev_name.exit61

dev_name.exit61:                                  ; preds = %if.end.i59, %if.end14.dev_name.exit61_crit_edge
  %retval.0.i60 = phi ptr [ %23, %if.end.i59 ], [ %21, %if.end14.dev_name.exit61_crit_edge ]
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 64, ptr noundef nonnull @.str.72, ptr noundef %retval.0.i60)
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @qcom_qmp_dp_pixel_clk_ops, ptr %ops, align 4
  %25 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name, ptr %init, align 4
  %dp_pixel_hw = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %call.i, i32 0, i32 2
  %init22 = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %call.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %init22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init, ptr %init22, align 4
  %27 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qmp, align 4
  %call25 = call i32 @devm_clk_hw_register(ptr noundef %28, ptr noundef %dp_pixel_hw) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %dev_name.exit61.cleanup_crit_edge

dev_name.exit61.cleanup_crit_edge:                ; preds = %dev_name.exit61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %dev_name.exit61
  %call29 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @qcom_qmp_dp_clks_hw_get, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %29 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qmp, align 4
  %call.i62 = call i32 @devm_add_action(ptr noundef %30, ptr noundef nonnull @phy_clk_release_provider, ptr noundef %np) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end32.cleanup_crit_edge, label %if.then.i

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_clk_del_provider(ptr noundef %np) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %dev_name.exit61.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call11, %dev_name.exit.cleanup_crit_edge ], [ %call25, %dev_name.exit61.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ %call.i62, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_v3_phy_configure_dp_phy(ptr nocapture noundef readonly %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_clks1 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 16
  %0 = ptrtoint ptr %dp_clks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_clks1, align 4
  %dp_opts2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !609
  tail call void @arm_heavy_mb() #11
  %pcs.i = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 5
  %2 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1962934272) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !611
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1543503872) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !612
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcs.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83886080) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !613
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcs.i, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 83886080) #11, !srcloc !610
  %10 = ptrtoint ptr %dp_opts2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_opts2, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 1620, label %entry.do.body11_crit_edge
    i32 2700, label %sw.bb8
    i32 5400, label %sw.bb9
    i32 8100, label %sw.bb10
  ]

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body11:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %entry.do.body11_crit_edge
  %pixel_freq.0 = phi i32 [ 1350000000, %sw.bb10 ], [ 1350000000, %sw.bb9 ], [ 1350000000, %sw.bb8 ], [ 810000000, %entry.do.body11_crit_edge ]
  %phy_vco_div.0 = phi i32 [ 0, %sw.bb10 ], [ 33554432, %sw.bb9 ], [ 16777216, %sw.bb8 ], [ 16777216, %entry.do.body11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !614
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcs.i, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %phy_vco_div.0) #11, !srcloc !610
  %clk = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %17 = ptrtoint ptr %dp_opts2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dp_opts2, align 4
  %mul = mul i32 %18, 100000
  %call17 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %mul) #11
  %clk18 = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %clk18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk18, align 4
  %call19 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef %pixel_freq.0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !615
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcs.i, align 4
  %add.ptr24 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 67108864) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !616
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcs.i, align 4
  %add.ptr29 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 16777216) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !617
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcs.i, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 83886080) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !618
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcs.i, align 4
  %add.ptr39 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !619
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcs.i, align 4
  %add.ptr44 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 150994944) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !620
  tail call void @arm_heavy_mb() #11
  %serdes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 2
  %31 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serdes, align 4
  %add.ptr48 = getelementptr i8, ptr %32, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 536870912) #11, !srcloc !610
  %call49 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call49, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4731) #11
  %33 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serdes, align 4
  %add.ptr61270 = getelementptr i8, ptr %34, i32 344
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61270) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !622
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp64.not272 = icmp eq i32 %36, 0
  br i1 %cmp64.not272, label %do.body11.land.lhs.true_crit_edge, label %do.body11.do.body88_crit_edge

do.body11.do.body88_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body88

do.body11.land.lhs.true_crit_edge:                ; preds = %do.body11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then80.land.lhs.true_crit_edge, %do.body11.land.lhs.true_crit_edge
  %call67 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call67, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call67, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then80

if.then80:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %37 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serdes, align 4
  %add.ptr61 = getelementptr i8, ptr %38, i32 344
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !622
  %40 = and i32 %39, 16777216
  %cmp64.not = icmp eq i32 %40, 0
  br i1 %cmp64.not, label %if.then80.land.lhs.true_crit_edge, label %if.then80.do.body88_crit_edge

if.then80.do.body88_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body88

if.then80.land.lhs.true_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %41 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serdes, align 4
  %add.ptr74 = getelementptr i8, ptr %42, i32 344
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !623
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp84.not = icmp eq i32 %44, 0
  br i1 %cmp84.not, label %for.end.cleanup_crit_edge, label %for.end.do.body88_crit_edge

for.end.do.body88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body88

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body88:                                        ; preds = %for.end.do.body88_crit_edge, %if.then80.do.body88_crit_edge, %do.body11.do.body88_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !624
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcs.i, align 4
  %add.ptr92 = getelementptr i8, ptr %46, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 419430400) #11, !srcloc !610
  %call96 = tail call i64 @ktime_get() #11
  %add.i255 = add i64 %call96, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4740) #11
  %47 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcs.i, align 4
  %add.ptr114273 = getelementptr i8, ptr %48, i32 192
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114273) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !625
  %50 = and i32 %49, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp119.not275 = icmp eq i32 %50, 0
  br i1 %cmp119.not275, label %do.body88.land.lhs.true123_crit_edge, label %do.body88.do.body149_crit_edge

do.body88.do.body149_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body149

do.body88.land.lhs.true123_crit_edge:             ; preds = %do.body88
  br label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.then137.land.lhs.true123_crit_edge, %do.body88.land.lhs.true123_crit_edge
  %call124 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call124, i64 %add.i255)
  %cmp3.i257 = icmp sgt i64 %call124, %add.i255
  br i1 %cmp3.i257, label %for.end141, label %if.then137

if.then137:                                       ; preds = %land.lhs.true123
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %51 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcs.i, align 4
  %add.ptr114 = getelementptr i8, ptr %52, i32 192
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !625
  %54 = and i32 %53, 33554432
  %cmp119.not = icmp eq i32 %54, 0
  br i1 %cmp119.not, label %if.then137.land.lhs.true123_crit_edge, label %if.then137.do.body149_crit_edge

if.then137.do.body149_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body149

if.then137.land.lhs.true123_crit_edge:            ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true123

for.end141:                                       ; preds = %land.lhs.true123
  %55 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pcs.i, align 4
  %add.ptr131 = getelementptr i8, ptr %56, i32 192
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !626
  %58 = and i32 %57, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp144.not = icmp eq i32 %58, 0
  br i1 %cmp144.not, label %for.end141.cleanup_crit_edge, label %for.end141.do.body149_crit_edge

for.end141.do.body149_crit_edge:                  ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body149

for.end141.cleanup_crit_edge:                     ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body149:                                       ; preds = %for.end141.do.body149_crit_edge, %if.then137.do.body149_crit_edge, %do.body88.do.body149_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !627
  tail call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcs.i, align 4
  %add.ptr153 = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 402653184) #11, !srcloc !610
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 429496000) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !628
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcs.i, align 4
  %add.ptr158 = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 419430400) #11, !srcloc !610
  %call162 = tail call i64 @ktime_get() #11
  %add.i260 = add i64 %call162, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4751) #11
  %64 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcs.i, align 4
  %add.ptr180277 = getelementptr i8, ptr %65, i32 192
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180277) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !629
  %67 = and i32 %66, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp185.not279 = icmp eq i32 %67, 0
  br i1 %cmp185.not279, label %do.body149.land.lhs.true189_crit_edge, label %do.body149.cleanup_crit_edge

do.body149.cleanup_crit_edge:                     ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body149.land.lhs.true189_crit_edge:            ; preds = %do.body149
  br label %land.lhs.true189

land.lhs.true189:                                 ; preds = %if.then203.land.lhs.true189_crit_edge, %do.body149.land.lhs.true189_crit_edge
  %call190 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call190, i64 %add.i260)
  %cmp3.i262 = icmp sgt i64 %call190, %add.i260
  br i1 %cmp3.i262, label %for.end207, label %if.then203

if.then203:                                       ; preds = %land.lhs.true189
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %68 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcs.i, align 4
  %add.ptr180 = getelementptr i8, ptr %69, i32 192
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !629
  %71 = and i32 %70, 33554432
  %cmp185.not = icmp eq i32 %71, 0
  br i1 %cmp185.not, label %if.then203.land.lhs.true189_crit_edge, label %if.then203.cleanup_crit_edge

if.then203.cleanup_crit_edge:                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then203.land.lhs.true189_crit_edge:            ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true189

for.end207:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcs.i, align 4
  %add.ptr197 = getelementptr i8, ptr %73, i32 192
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !630
  %75 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp210.not = icmp eq i32 %75, 0
  %spec.select = select i1 %cmp210.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end207, %if.then203.cleanup_crit_edge, %do.body149.cleanup_crit_edge, %for.end141.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ -110, %for.end141.cleanup_crit_edge ], [ 0, %do.body149.cleanup_crit_edge ], [ %spec.select, %for.end207 ], [ 0, %if.then203.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qmp_v3_phy_configure_dp_tx(ptr nocapture noundef readonly %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qcom_qmp_phy_configure_dp_swing(ptr noundef %qphy, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lanes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  %. = select i1 %cmp2, i32 1040187392, i32 1056964608
  %.28 = select i1 %cmp2, i32 318767104, i32 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !631
  tail call void @arm_heavy_mb() #11
  %tx = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 3
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %.28) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !632
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %.) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !633
  tail call void @arm_heavy_mb() #11
  %tx2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 6
  %6 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx2, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %.28) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !634
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx2, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %.) #11, !srcloc !610
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_v3_dp_phy_calibrate(ptr nocapture noundef %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_aux_cfg = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 14
  %0 = ptrtoint ptr %dp_aux_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_aux_cfg, align 4
  %inc = add i32 %1, 1
  %rem = urem i32 %inc, 3
  store i32 %rem, ptr %dp_aux_cfg, align 4
  %arrayidx = getelementptr [3 x i8], ptr @qcom_qmp_v3_dp_phy_calibrate.cfg1_settings, i32 0, i32 %rem
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !635
  tail call void @arm_heavy_mb() #11
  %conv = zext i8 %3 to i32
  %4 = shl nuw i32 %conv, 24
  %pcs = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 5
  %5 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !610
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qmp_v3_phy_dp_aux_init(ptr nocapture noundef %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !636
  tail call void @arm_heavy_mb() #11
  %pcs = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 5
  %0 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1694498816) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !637
  tail call void @arm_heavy_mb() #11
  %serdes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 2
  %2 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 452984832) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !638
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 33554432) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !639
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcs, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 2097152000) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !640
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serdes, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1056964608) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !641
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcs, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !642
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 318767104) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !643
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcs, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 603979776) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !644
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcs, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !645
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcs, align 4
  %add.ptr35 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 167772160) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !646
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcs, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 637534208) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !647
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcs, align 4
  %add.ptr43 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 167772160) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !648
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcs, align 4
  %add.ptr47 = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 50331648) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !649
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcs, align 4
  %add.ptr51 = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -1157627904) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !650
  tail call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcs, align 4
  %add.ptr55 = getelementptr i8, ptr %29, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 50331648) #11, !srcloc !610
  %dp_aux_cfg = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 14
  %30 = ptrtoint ptr %dp_aux_cfg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dp_aux_cfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !651
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcs, align 4
  %add.ptr59 = getelementptr i8, ptr %32, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 520093696) #11, !srcloc !610
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qcom_qmp_phy_configure_dp_swing(ptr nocapture noundef readonly %qphy, i32 noundef %drv_lvl_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_opts1 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 15
  %lanes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 15, i32 1
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p_level.03 = phi i32 [ %7, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %v_level.02 = phi i32 [ %4, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qmp_phy, ptr %qphy, i32 0, i32 15, i32 2, i32 %i.04
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %v_level.02, i32 %3)
  %arrayidx3 = getelementptr %struct.qmp_phy, ptr %qphy, i32 0, i32 15, i32 3, i32 %i.04
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %p_level.03, i32 %6)
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %v_level.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %4, %for.body.for.end_crit_edge ]
  %p_level.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ]
  %8 = ptrtoint ptr %dp_opts1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_opts1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2701, i32 %9)
  %cmp10 = icmp ult i32 %9, 2701
  %qmp_dp_v3_voltage_swing_hbr_rbr.qmp_dp_v3_voltage_swing_hbr3_hbr2 = select i1 %cmp10, ptr @qmp_dp_v3_voltage_swing_hbr_rbr, ptr @qmp_dp_v3_voltage_swing_hbr3_hbr2
  %qmp_dp_v3_pre_emphasis_hbr_rbr.qmp_dp_v3_pre_emphasis_hbr3_hbr2 = select i1 %cmp10, ptr @qmp_dp_v3_pre_emphasis_hbr_rbr, ptr @qmp_dp_v3_pre_emphasis_hbr3_hbr2
  %pre_emphasis_cfg.0.in = getelementptr [4 x [4 x i8]], ptr %qmp_dp_v3_pre_emphasis_hbr_rbr.qmp_dp_v3_pre_emphasis_hbr3_hbr2, i32 0, i32 %v_level.0.lcssa, i32 %p_level.0.lcssa
  %voltage_swing_cfg.0.in = getelementptr [4 x [4 x i8]], ptr %qmp_dp_v3_voltage_swing_hbr_rbr.qmp_dp_v3_voltage_swing_hbr3_hbr2, i32 0, i32 %v_level.0.lcssa, i32 %p_level.0.lcssa
  %10 = ptrtoint ptr %pre_emphasis_cfg.0.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %pre_emphasis_cfg.0 = load i8, ptr %pre_emphasis_cfg.0.in, align 1
  %11 = ptrtoint ptr %voltage_swing_cfg.0.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %voltage_swing_cfg.0 = load i8, ptr %voltage_swing_cfg.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %voltage_swing_cfg.0)
  %cmp19 = icmp eq i8 %voltage_swing_cfg.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %pre_emphasis_cfg.0)
  %cmp22 = icmp eq i8 %pre_emphasis_cfg.0, -1
  %or.cond = select i1 %cmp19, i1 %cmp22, i1 false
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = or i8 %voltage_swing_cfg.0, 32
  %13 = or i8 %pre_emphasis_cfg.0, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !652
  tail call void @arm_heavy_mb() #11
  %conv31 = zext i8 %12 to i32
  %14 = shl nuw i32 %conv31, 24
  %tx = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 3
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %drv_lvl_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !653
  tail call void @arm_heavy_mb() #11
  %conv35 = zext i8 %13 to i32
  %17 = shl nuw i32 %conv35, 24
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %17) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !654
  tail call void @arm_heavy_mb() #11
  %tx2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 6
  %20 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx2, align 4
  %add.ptr42 = getelementptr i8, ptr %21, i32 %drv_lvl_reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %14) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !655
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx2, align 4
  %add.ptr48 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %17) #11, !srcloc !610
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_v4_phy_configure_dp_phy(ptr nocapture noundef readonly %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_clks1 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 16
  %0 = ptrtoint ptr %dp_clks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp_clks1, align 4
  %dp_opts2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !656
  tail call void @arm_heavy_mb() #11
  %pcs = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 5
  %2 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !609
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1962934272) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !611
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcs, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1543503872) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !657
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcs, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 318767104) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !658
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcs, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -1543503872) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !659
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 83886080) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !660
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcs, align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 83886080) #11, !srcloc !610
  %16 = ptrtoint ptr %dp_opts2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_opts2, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %17, label %entry.cleanup_crit_edge [
    i32 1620, label %entry.do.body26_crit_edge
    i32 2700, label %sw.bb23
    i32 5400, label %sw.bb24
    i32 8100, label %sw.bb25
  ]

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

do.body26:                                        ; preds = %sw.bb25, %sw.bb24, %sw.bb23, %entry.do.body26_crit_edge
  %pixel_freq.0 = phi i32 [ 1350000000, %sw.bb25 ], [ 1350000000, %sw.bb24 ], [ 1350000000, %sw.bb23 ], [ 810000000, %entry.do.body26_crit_edge ]
  %phy_vco_div.0 = phi i32 [ 0, %sw.bb25 ], [ 33554432, %sw.bb24 ], [ 16777216, %sw.bb23 ], [ 16777216, %entry.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !661
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcs, align 4
  %add.ptr30 = getelementptr i8, ptr %20, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %phy_vco_div.0) #11, !srcloc !610
  %clk = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %23 = ptrtoint ptr %dp_opts2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_opts2, align 4
  %mul = mul i32 %24, 100000
  %call32 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %mul) #11
  %clk33 = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %1, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %clk33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk33, align 4
  %call34 = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef %pixel_freq.0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !662
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcs, align 4
  %add.ptr39 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !663
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcs, align 4
  %add.ptr44 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 83886080) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !664
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcs, align 4
  %add.ptr49 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 16777216) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !665
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcs, align 4
  %add.ptr54 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 150994944) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !666
  tail call void @arm_heavy_mb() #11
  %serdes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 2
  %35 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serdes, align 4
  %add.ptr58 = getelementptr i8, ptr %36, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 536870912) #11, !srcloc !610
  %call59 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call59, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4869) #11
  %37 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %serdes, align 4
  %add.ptr71588 = getelementptr i8, ptr %38, i32 376
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71588) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !667
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp74.not590 = icmp eq i32 %40, 0
  br i1 %cmp74.not590, label %do.body26.land.lhs.true_crit_edge, label %do.body26.if.end97_crit_edge

do.body26.if.end97_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

do.body26.land.lhs.true_crit_edge:                ; preds = %do.body26
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then90.land.lhs.true_crit_edge, %do.body26.land.lhs.true_crit_edge
  %call77 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call77, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call77, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then90

if.then90:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %41 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %serdes, align 4
  %add.ptr71 = getelementptr i8, ptr %42, i32 376
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !667
  %44 = and i32 %43, 16777216
  %cmp74.not = icmp eq i32 %44, 0
  br i1 %cmp74.not, label %if.then90.land.lhs.true_crit_edge, label %if.then90.if.end97_crit_edge

if.then90.if.end97_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then90.land.lhs.true_crit_edge:                ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %45 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serdes, align 4
  %add.ptr84 = getelementptr i8, ptr %46, i32 376
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !668
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp94.not = icmp eq i32 %48, 0
  br i1 %cmp94.not, label %for.end.cleanup_crit_edge, label %for.end.if.end97_crit_edge

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end97:                                         ; preds = %for.end.if.end97_crit_edge, %if.then90.if.end97_crit_edge, %do.body26.if.end97_crit_edge
  %call101 = tail call i64 @ktime_get() #11
  %add.i552 = add i64 %call101, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4876) #11
  %49 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serdes, align 4
  %add.ptr119591 = getelementptr i8, ptr %50, i32 320
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119591) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !669
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp124.not593 = icmp eq i32 %52, 0
  br i1 %cmp124.not593, label %if.end97.land.lhs.true128_crit_edge, label %if.end97.if.end153_crit_edge

if.end97.if.end153_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end97.land.lhs.true128_crit_edge:              ; preds = %if.end97
  br label %land.lhs.true128

land.lhs.true128:                                 ; preds = %if.then142.land.lhs.true128_crit_edge, %if.end97.land.lhs.true128_crit_edge
  %call129 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call129, i64 %add.i552)
  %cmp3.i554 = icmp sgt i64 %call129, %add.i552
  br i1 %cmp3.i554, label %for.end146, label %if.then142

if.then142:                                       ; preds = %land.lhs.true128
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %53 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %serdes, align 4
  %add.ptr119 = getelementptr i8, ptr %54, i32 320
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !669
  %56 = and i32 %55, 16777216
  %cmp124.not = icmp eq i32 %56, 0
  br i1 %cmp124.not, label %if.then142.land.lhs.true128_crit_edge, label %if.then142.if.end153_crit_edge

if.then142.if.end153_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then142.land.lhs.true128_crit_edge:            ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true128

for.end146:                                       ; preds = %land.lhs.true128
  %57 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serdes, align 4
  %add.ptr136 = getelementptr i8, ptr %58, i32 320
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !670
  %60 = and i32 %59, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp149.not = icmp eq i32 %60, 0
  br i1 %cmp149.not, label %for.end146.cleanup_crit_edge, label %for.end146.if.end153_crit_edge

for.end146.if.end153_crit_edge:                   ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

for.end146.cleanup_crit_edge:                     ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end153:                                        ; preds = %for.end146.if.end153_crit_edge, %if.then142.if.end153_crit_edge, %if.end97.if.end153_crit_edge
  %call157 = tail call i64 @ktime_get() #11
  %add.i557 = add i64 %call157, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4883) #11
  %61 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %serdes, align 4
  %add.ptr175595 = getelementptr i8, ptr %62, i32 320
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175595) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !671
  %64 = and i32 %63, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp180.not597 = icmp eq i32 %64, 0
  br i1 %cmp180.not597, label %if.end153.land.lhs.true184_crit_edge, label %if.end153.do.body210_crit_edge

if.end153.do.body210_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body210

if.end153.land.lhs.true184_crit_edge:             ; preds = %if.end153
  br label %land.lhs.true184

land.lhs.true184:                                 ; preds = %if.then198.land.lhs.true184_crit_edge, %if.end153.land.lhs.true184_crit_edge
  %call185 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call185, i64 %add.i557)
  %cmp3.i559 = icmp sgt i64 %call185, %add.i557
  br i1 %cmp3.i559, label %for.end202, label %if.then198

if.then198:                                       ; preds = %land.lhs.true184
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %65 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %serdes, align 4
  %add.ptr175 = getelementptr i8, ptr %66, i32 320
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !671
  %68 = and i32 %67, 33554432
  %cmp180.not = icmp eq i32 %68, 0
  br i1 %cmp180.not, label %if.then198.land.lhs.true184_crit_edge, label %if.then198.do.body210_crit_edge

if.then198.do.body210_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body210

if.then198.land.lhs.true184_crit_edge:            ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true184

for.end202:                                       ; preds = %land.lhs.true184
  %69 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %serdes, align 4
  %add.ptr192 = getelementptr i8, ptr %70, i32 320
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !672
  %72 = and i32 %71, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp205.not = icmp eq i32 %72, 0
  br i1 %cmp205.not, label %for.end202.cleanup_crit_edge, label %for.end202.do.body210_crit_edge

for.end202.do.body210_crit_edge:                  ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body210

for.end202.cleanup_crit_edge:                     ; preds = %for.end202
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body210:                                       ; preds = %for.end202.do.body210_crit_edge, %if.then198.do.body210_crit_edge, %if.end153.do.body210_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !673
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcs, align 4
  %add.ptr214 = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 419430400) #11, !srcloc !610
  %call218 = tail call i64 @ktime_get() #11
  %add.i562 = add i64 %call218, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4892) #11
  %75 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcs, align 4
  %add.ptr236599 = getelementptr i8, ptr %76, i32 220
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236599) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !674
  %78 = and i32 %77, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp241.not601 = icmp eq i32 %78, 0
  br i1 %cmp241.not601, label %do.body210.land.lhs.true245_crit_edge, label %do.body210.if.end270_crit_edge

do.body210.if.end270_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

do.body210.land.lhs.true245_crit_edge:            ; preds = %do.body210
  br label %land.lhs.true245

land.lhs.true245:                                 ; preds = %if.then259.land.lhs.true245_crit_edge, %do.body210.land.lhs.true245_crit_edge
  %call246 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call246, i64 %add.i562)
  %cmp3.i564 = icmp sgt i64 %call246, %add.i562
  br i1 %cmp3.i564, label %for.end263, label %if.then259

if.then259:                                       ; preds = %land.lhs.true245
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %79 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcs, align 4
  %add.ptr236 = getelementptr i8, ptr %80, i32 220
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !674
  %82 = and i32 %81, 16777216
  %cmp241.not = icmp eq i32 %82, 0
  br i1 %cmp241.not, label %if.then259.land.lhs.true245_crit_edge, label %if.then259.if.end270_crit_edge

if.then259.if.end270_crit_edge:                   ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

if.then259.land.lhs.true245_crit_edge:            ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true245

for.end263:                                       ; preds = %land.lhs.true245
  %83 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcs, align 4
  %add.ptr253 = getelementptr i8, ptr %84, i32 220
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !675
  %86 = and i32 %85, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp266.not = icmp eq i32 %86, 0
  br i1 %cmp266.not, label %for.end263.cleanup_crit_edge, label %for.end263.if.end270_crit_edge

for.end263.if.end270_crit_edge:                   ; preds = %for.end263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end270

for.end263.cleanup_crit_edge:                     ; preds = %for.end263
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end270:                                        ; preds = %for.end263.if.end270_crit_edge, %if.then259.if.end270_crit_edge, %do.body210.if.end270_crit_edge
  %call274 = tail call i64 @ktime_get() #11
  %add.i567 = add i64 %call274, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4899) #11
  %87 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcs, align 4
  %add.ptr292603 = getelementptr i8, ptr %88, i32 220
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr292603) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !676
  %90 = and i32 %89, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp297.not605 = icmp eq i32 %90, 0
  br i1 %cmp297.not605, label %if.end270.land.lhs.true301_crit_edge, label %if.end270.if.end326_crit_edge

if.end270.if.end326_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end326

if.end270.land.lhs.true301_crit_edge:             ; preds = %if.end270
  br label %land.lhs.true301

land.lhs.true301:                                 ; preds = %if.then315.land.lhs.true301_crit_edge, %if.end270.land.lhs.true301_crit_edge
  %call302 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call302, i64 %add.i567)
  %cmp3.i569 = icmp sgt i64 %call302, %add.i567
  br i1 %cmp3.i569, label %for.end319, label %if.then315

if.then315:                                       ; preds = %land.lhs.true301
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %91 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcs, align 4
  %add.ptr292 = getelementptr i8, ptr %92, i32 220
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr292) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !676
  %94 = and i32 %93, 33554432
  %cmp297.not = icmp eq i32 %94, 0
  br i1 %cmp297.not, label %if.then315.land.lhs.true301_crit_edge, label %if.then315.if.end326_crit_edge

if.then315.if.end326_crit_edge:                   ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end326

if.then315.land.lhs.true301_crit_edge:            ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true301

for.end319:                                       ; preds = %land.lhs.true301
  %95 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcs, align 4
  %add.ptr309 = getelementptr i8, ptr %96, i32 220
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr309) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !677
  %98 = and i32 %97, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp322.not = icmp eq i32 %98, 0
  br i1 %cmp322.not, label %for.end319.cleanup_crit_edge, label %for.end319.if.end326_crit_edge

for.end319.if.end326_crit_edge:                   ; preds = %for.end319
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end326

for.end319.cleanup_crit_edge:                     ; preds = %for.end319
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end326:                                        ; preds = %for.end319.if.end326_crit_edge, %if.then315.if.end326_crit_edge, %if.end270.if.end326_crit_edge
  %lanes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 15, i32 1
  %99 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %lanes, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %100, label %if.else344 [
    i32 1, label %if.end326.do.body347_crit_edge
    i32 2, label %if.then339
  ]

if.end326.do.body347_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body347

if.then339:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body347

if.else344:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body347

do.body347:                                       ; preds = %if.else344, %if.then339, %if.end326.do.body347_crit_edge
  %drvr1_en.0 = phi i32 [ 268435456, %if.then339 ], [ 268435456, %if.else344 ], [ 318767104, %if.end326.do.body347_crit_edge ]
  %bias1_en.0 = phi i32 [ 1056964608, %if.then339 ], [ 1056964608, %if.else344 ], [ 1040187392, %if.end326.do.body347_crit_edge ]
  %bias0_en.0 = phi i32 [ 352321536, %if.then339 ], [ 1056964608, %if.else344 ], [ 352321536, %if.end326.do.body347_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !678
  tail call void @arm_heavy_mb() #11
  %tx = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 3
  %102 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx, align 4
  %add.ptr350 = getelementptr i8, ptr %103, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr350, i32 268435456) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !679
  tail call void @arm_heavy_mb() #11
  %104 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx, align 4
  %add.ptr355 = getelementptr i8, ptr %105, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr355, i32 %bias0_en.0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !680
  tail call void @arm_heavy_mb() #11
  %tx2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 6
  %106 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx2, align 4
  %add.ptr359 = getelementptr i8, ptr %107, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr359, i32 %drvr1_en.0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !681
  tail call void @arm_heavy_mb() #11
  %108 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx2, align 4
  %add.ptr364 = getelementptr i8, ptr %109, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr364, i32 %bias1_en.0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !682
  tail call void @arm_heavy_mb() #11
  %110 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pcs, align 4
  %add.ptr369 = getelementptr i8, ptr %111, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr369, i32 402653184) #11, !srcloc !610
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 429496000) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !683
  tail call void @arm_heavy_mb() #11
  %113 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pcs, align 4
  %add.ptr374 = getelementptr i8, ptr %114, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr374, i32 419430400) #11, !srcloc !610
  %call378 = tail call i64 @ktime_get() #11
  %add.i572 = add i64 %call378, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4937) #11
  %115 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pcs, align 4
  %add.ptr396607 = getelementptr i8, ptr %116, i32 220
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr396607) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !684
  %118 = and i32 %117, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp401.not609 = icmp eq i32 %118, 0
  br i1 %cmp401.not609, label %do.body347.land.lhs.true405_crit_edge, label %do.body347.do.body431_crit_edge

do.body347.do.body431_crit_edge:                  ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body431

do.body347.land.lhs.true405_crit_edge:            ; preds = %do.body347
  br label %land.lhs.true405

land.lhs.true405:                                 ; preds = %if.then419.land.lhs.true405_crit_edge, %do.body347.land.lhs.true405_crit_edge
  %call406 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call406, i64 %add.i572)
  %cmp3.i574 = icmp sgt i64 %call406, %add.i572
  br i1 %cmp3.i574, label %for.end423, label %if.then419

if.then419:                                       ; preds = %land.lhs.true405
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #11
  %119 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pcs, align 4
  %add.ptr396 = getelementptr i8, ptr %120, i32 220
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr396) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !684
  %122 = and i32 %121, 33554432
  %cmp401.not = icmp eq i32 %122, 0
  br i1 %cmp401.not, label %if.then419.land.lhs.true405_crit_edge, label %if.then419.do.body431_crit_edge

if.then419.do.body431_crit_edge:                  ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body431

if.then419.land.lhs.true405_crit_edge:            ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true405

for.end423:                                       ; preds = %land.lhs.true405
  %123 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pcs, align 4
  %add.ptr413 = getelementptr i8, ptr %124, i32 220
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr413) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !685
  %126 = and i32 %125, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp426.not = icmp eq i32 %126, 0
  br i1 %cmp426.not, label %for.end423.cleanup_crit_edge, label %for.end423.do.body431_crit_edge

for.end423.do.body431_crit_edge:                  ; preds = %for.end423
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body431

for.end423.cleanup_crit_edge:                     ; preds = %for.end423
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body431:                                       ; preds = %for.end423.do.body431_crit_edge, %if.then419.do.body431_crit_edge, %do.body347.do.body431_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !686
  tail call void @arm_heavy_mb() #11
  %127 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx, align 4
  %add.ptr435 = getelementptr i8, ptr %128, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr435, i32 167772160) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !687
  tail call void @arm_heavy_mb() #11
  %129 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tx2, align 4
  %add.ptr440 = getelementptr i8, ptr %130, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr440, i32 167772160) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !688
  tail call void @arm_heavy_mb() #11
  %131 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx, align 4
  %add.ptr445 = getelementptr i8, ptr %132, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr445, i32 654311424) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !689
  tail call void @arm_heavy_mb() #11
  %133 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tx2, align 4
  %add.ptr450 = getelementptr i8, ptr %134, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr450, i32 654311424) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !690
  tail call void @arm_heavy_mb() #11
  %135 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx, align 4
  %add.ptr455 = getelementptr i8, ptr %136, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr455, i32 536870912) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !691
  tail call void @arm_heavy_mb() #11
  %137 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tx2, align 4
  %add.ptr460 = getelementptr i8, ptr %138, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr460, i32 536870912) #11, !srcloc !610
  br label %cleanup

cleanup:                                          ; preds = %do.body431, %for.end423.cleanup_crit_edge, %for.end319.cleanup_crit_edge, %for.end263.cleanup_crit_edge, %for.end202.cleanup_crit_edge, %for.end146.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body431 ], [ -22, %entry.cleanup_crit_edge ], [ -110, %for.end.cleanup_crit_edge ], [ -110, %for.end146.cleanup_crit_edge ], [ -110, %for.end202.cleanup_crit_edge ], [ -110, %for.end263.cleanup_crit_edge ], [ -110, %for.end319.cleanup_crit_edge ], [ -110, %for.end423.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qmp_v4_phy_configure_dp_tx(ptr nocapture noundef readonly %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !692
  tail call void @arm_heavy_mb() #11
  %tx = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 3
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 654311424) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !693
  tail call void @arm_heavy_mb() #11
  %tx2 = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 6
  %2 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx2, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 654311424) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !694
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 536870912) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !695
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx2, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 536870912) #11, !srcloc !610
  %8 = tail call fastcc i32 @qcom_qmp_phy_configure_dp_swing(ptr noundef %qphy, i32 noundef 20)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_v4_dp_phy_calibrate(ptr nocapture noundef %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_aux_cfg = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 14
  %0 = ptrtoint ptr %dp_aux_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_aux_cfg, align 4
  %inc = add i32 %1, 1
  %rem = and i32 %inc, 3
  store i32 %rem, ptr %dp_aux_cfg, align 4
  %arrayidx = getelementptr [4 x i8], ptr @qcom_qmp_v4_dp_phy_calibrate.cfg1_settings, i32 0, i32 %rem
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !696
  tail call void @arm_heavy_mb() #11
  %conv = zext i8 %3 to i32
  %4 = shl nuw i32 %conv, 24
  %pcs = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 5
  %5 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !610
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_qmp_v4_phy_dp_aux_init(ptr nocapture noundef %qphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !697
  tail call void @arm_heavy_mb() #11
  %pcs = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 5
  %0 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1728053248) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !698
  tail call void @arm_heavy_mb() #11
  %serdes = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 2
  %2 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serdes, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 385875968) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !699
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !700
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcs, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 318767104) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !701
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcs, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1543503872) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !702
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcs, align 4
  %add.ptr19 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !703
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 167772160) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !704
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcs, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 637534208) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !705
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcs, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 167772160) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !706
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcs, align 4
  %add.ptr35 = getelementptr i8, ptr %19, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 50331648) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !707
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcs, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 -1224736768) #11, !srcloc !610
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !708
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcs, align 4
  %add.ptr43 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 50331648) #11, !srcloc !610
  %dp_aux_cfg = getelementptr inbounds %struct.qmp_phy, ptr %qphy, i32 0, i32 14
  %24 = ptrtoint ptr %dp_aux_cfg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dp_aux_cfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !709
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcs, align 4
  %add.ptr47 = getelementptr i8, ptr %26, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 520093696) #11, !srcloc !610
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_enable(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qcom_qmp_phy_init(ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @qcom_qmp_phy_power_on(ptr noundef %phy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @qcom_qmp_phy_exit(ptr noundef %phy)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_disable(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qcom_qmp_phy_power_off(ptr noundef %phy)
  %call1 = tail call i32 @qcom_qmp_phy_exit(ptr noundef %phy)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_qmp_phy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %mode1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %qmp1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %qmp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmp1, align 4
  %cfg2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg2, align 4
  %no_pcs_sw_reset = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 52
  %6 = ptrtoint ptr %no_pcs_sw_reset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %no_pcs_sw_reset, align 2, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  %ufs_reset = getelementptr inbounds %struct.qcom_qmp, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %ufs_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ufs_reset, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then4:                                         ; preds = %if.then
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %11, ptr noundef nonnull @.str.47, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %12 = ptrtoint ptr %ufs_reset to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %ufs_reset, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.then4.if.end14_crit_edge

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call.i to i32
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.48, i32 noundef %13) #14
  %16 = ptrtoint ptr %ufs_reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ufs_reset, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then4.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %17 = ptrtoint ptr %ufs_reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ufs_reset, align 4
  %call16 = tail call i32 @reset_control_assert(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %if.end14.if.end20_crit_edge, %entry.if.end20_crit_edge
  %19 = ptrtoint ptr %qmp1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qmp1, align 4
  %21 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg2, align 4
  %serdes3.i = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %serdes3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serdes3.i, align 4
  %pcs4.i = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %pcs4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcs4.i, align 4
  %dp_com5.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %dp_com5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dp_com5.i, align 4
  %phy_mutex.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #11
  %init_count.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 7
  %29 = ptrtoint ptr %init_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %init_count.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %init_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.qcom_qmp_phy_com_init.exit.thread_crit_edge

if.end20.qcom_qmp_phy_com_init.exit.thread_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_com_init.exit.thread

if.end.i:                                         ; preds = %if.end20
  %num_vregs.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 39
  %31 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_vregs.i, align 4
  %vregs.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 4
  %33 = ptrtoint ptr %vregs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vregs.i, align 4
  %call.i47 = tail call i32 @regulator_bulk_enable(i32 noundef %32, ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool7.not.i = icmp eq i32 %call.i47, 0
  br i1 %tobool7.not.i, label %for.cond.preheader.i, label %qcom_qmp_phy_com_init.exit.thread51

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_resets.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 37
  %35 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_resets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp150.i = icmp sgt i32 %36, 0
  br i1 %cmp150.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.cond21.preheader.i_crit_edge

for.cond.preheader.i.for.cond21.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond21.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %resets.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 3
  br label %for.body.i

qcom_qmp_phy_com_init.exit.thread51:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.50, i32 noundef %call.i47) #14
  tail call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  br label %cleanup

for.cond21.preheader.i:                           ; preds = %for.inc.i.for.cond21.preheader.i_crit_edge, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ %36, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge ], [ %50, %for.inc.i.for.cond21.preheader.i_crit_edge ]
  %resets24.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 3
  br label %for.cond21.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0151.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %for.inc.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resets.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %i.0151.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %call10.i = tail call i32 @reset_control_assert(ptr noundef %42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.inc.i, label %do.end15.i

do.end15.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %20, align 4
  %reset_list.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 36
  %45 = ptrtoint ptr %reset_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset_list.i, align 4
  %arrayidx17.i = getelementptr ptr, ptr %46, i32 %i.0151.i
  %47 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.53, ptr noundef %48) #14
  br label %qcom_qmp_phy_com_init.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc19.i = add nuw nsw i32 %i.0151.i, 1
  %49 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_resets.i, align 4
  %cmp.i48 = icmp slt i32 %inc19.i, %50
  br i1 %cmp.i48, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond21.preheader.i_crit_edge

for.inc.i.for.cond21.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond21.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond21.i:                                     ; preds = %for.body23.i.for.cond21.i_crit_edge, %for.cond21.preheader.i
  %i.1.in.i = phi i32 [ %i.1.i, %for.body23.i.for.cond21.i_crit_edge ], [ %.lcssa.i, %for.cond21.preheader.i ]
  %i.1.i = add i32 %i.1.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1.i)
  %cmp22.i = icmp sgt i32 %i.1.i, -1
  br i1 %cmp22.i, label %for.body23.i, label %for.end38.i

for.body23.i:                                     ; preds = %for.cond21.i
  %51 = ptrtoint ptr %resets24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %resets24.i, align 4
  %arrayidx25.i = getelementptr ptr, ptr %52, i32 %i.1.i
  %53 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx25.i, align 4
  %call26.i = tail call i32 @reset_control_deassert(ptr noundef %54) #11
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %for.body23.i.for.cond21.i_crit_edge, label %do.end31.i

for.body23.i.for.cond21.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond21.i

do.end31.i:                                       ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %20, align 4
  %57 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg2, align 4
  %reset_list34.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %58, i32 0, i32 36
  %59 = ptrtoint ptr %reset_list34.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset_list34.i, align 4
  %arrayidx35.i = getelementptr ptr, ptr %60, i32 %i.1.i
  %61 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx35.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.56, ptr noundef %62) #14
  br label %err_rst.i

for.end38.i:                                      ; preds = %for.cond21.i
  %num_clks.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 35
  %63 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.qcom_qmp, ptr %20, i32 0, i32 2
  %65 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clks.i, align 4
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %64, ptr noundef %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end38.i.err_rst.i_crit_edge

for.end38.i.err_rst.i_crit_edge:                  ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_rst.i

if.end.i.i:                                       ; preds = %for.end38.i
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %64, ptr noundef %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end42.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_unprepare(i32 noundef %64, ptr noundef %66) #11
  br label %err_rst.i

if.end42.i:                                       ; preds = %if.end.i.i
  %has_phy_dp_com_ctrl.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 50
  %67 = ptrtoint ptr %has_phy_dp_com_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %has_phy_dp_com_ctrl.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool43.not.i = icmp eq i8 %68, 0
  br i1 %tobool43.not.i, label %if.end42.i.if.end45.i_crit_edge, label %if.then44.i

if.end42.i.if.end45.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %70 = or i32 %69, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %70) #11, !srcloc !610
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %add.ptr.i129.i = getelementptr i8, ptr %28, i32 28
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %73 = or i32 %72, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 %73) #11, !srcloc !610
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %add.ptr.i131.i = getelementptr i8, ptr %28, i32 16
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %76 = or i32 %75, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %76) #11, !srcloc !610
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %79 = or i32 %78, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %79) #11, !srcloc !610
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %82 = and i32 %81, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 %82) #11, !srcloc !610
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %add.ptr.i135.i = getelementptr i8, ptr %28, i32 12
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %85 = and i32 %84, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %85) #11, !srcloc !610
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %add.ptr.i137.i = getelementptr i8, ptr %28, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %88 = and i32 %87, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 %88) #11, !srcloc !610
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.end42.i.if.end45.i_crit_edge
  %has_phy_com_ctrl.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 45
  %90 = ptrtoint ptr %has_phy_com_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %has_phy_com_ctrl.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool46.not.i = icmp eq i8 %91, 0
  %regs49.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 40
  %92 = ptrtoint ptr %regs49.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs49.i, align 4
  br i1 %tobool46.not.i, label %if.else.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx48.i = getelementptr i32, ptr %93, i32 1
  %94 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx48.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %24, i32 %95
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %97 = or i32 %96, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %97) #11, !srcloc !610
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %qcom_qmp_phy_com_init.exit.thread

if.else.i:                                        ; preds = %if.end45.i
  %arrayidx50.i = getelementptr i32, ptr %93, i32 17
  %99 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool51.not.i = icmp eq i32 %100, 0
  %pwrdn_ctrl56.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %22, i32 0, i32 42
  %101 = ptrtoint ptr %pwrdn_ctrl56.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pwrdn_ctrl56.i, align 4
  br i1 %tobool51.not.i, label %if.else55.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i141.i = getelementptr i8, ptr %26, i32 %100
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #11, !srcloc !621
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %or.i142.i = or i32 %104, %102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i142.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 %105) #11, !srcloc !610
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %qcom_qmp_phy_com_init.exit.thread

if.else55.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @qphy_setbits(ptr noundef %26, i32 noundef 4, i32 noundef %102) #11
  br label %qcom_qmp_phy_com_init.exit.thread

err_rst.i:                                        ; preds = %if.then3.i.i, %for.end38.i.err_rst.i_crit_edge, %do.end31.i
  %ret.0.i = phi i32 [ %call26.i, %do.end31.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %for.end38.i.err_rst.i_crit_edge ]
  %107 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_resets.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.in.i, i32 %108)
  %cmp62153.i = icmp slt i32 %i.1.in.i, %108
  br i1 %cmp62153.i, label %err_rst.i.while.body.i_crit_edge, label %err_rst.i.qcom_qmp_phy_com_init.exit_crit_edge

err_rst.i.qcom_qmp_phy_com_init.exit_crit_edge:   ; preds = %err_rst.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_com_init.exit

err_rst.i.while.body.i_crit_edge:                 ; preds = %err_rst.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_rst.i.while.body.i_crit_edge
  %inc60154.i = phi i32 [ %inc60.i, %while.body.i.while.body.i_crit_edge ], [ %i.1.in.i, %err_rst.i.while.body.i_crit_edge ]
  %109 = ptrtoint ptr %resets24.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %resets24.i, align 4
  %arrayidx64.i = getelementptr ptr, ptr %110, i32 %inc60154.i
  %111 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx64.i, align 4
  %call65.i = tail call i32 @reset_control_assert(ptr noundef %112) #11
  %inc60.i = add nsw i32 %inc60154.i, 1
  %113 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %num_resets.i, align 4
  %cmp62.i = icmp slt i32 %inc60.i, %114
  br i1 %cmp62.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.qcom_qmp_phy_com_init.exit_crit_edge

while.body.i.qcom_qmp_phy_com_init.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_com_init.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

qcom_qmp_phy_com_init.exit.thread:                ; preds = %if.else55.i, %if.then52.i, %if.then47.i, %if.end20.qcom_qmp_phy_com_init.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  br label %if.end24

qcom_qmp_phy_com_init.exit:                       ; preds = %while.body.i.qcom_qmp_phy_com_init.exit_crit_edge, %err_rst.i.qcom_qmp_phy_com_init.exit_crit_edge, %do.end15.i
  %ret.1.i = phi i32 [ %call10.i, %do.end15.i ], [ %ret.0.i, %err_rst.i.qcom_qmp_phy_com_init.exit_crit_edge ], [ %ret.0.i, %while.body.i.qcom_qmp_phy_com_init.exit_crit_edge ]
  %115 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_vregs.i, align 4
  %117 = ptrtoint ptr %vregs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vregs.i, align 4
  %call68.i = tail call i32 @regulator_bulk_disable(i32 noundef %116, ptr noundef %118) #11
  tail call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool22.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool22.not, label %qcom_qmp_phy_com_init.exit.if.end24_crit_edge, label %qcom_qmp_phy_com_init.exit.cleanup_crit_edge

qcom_qmp_phy_com_init.exit.cleanup_crit_edge:     ; preds = %qcom_qmp_phy_com_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

qcom_qmp_phy_com_init.exit.if.end24_crit_edge:    ; preds = %qcom_qmp_phy_com_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %qcom_qmp_phy_com_init.exit.if.end24_crit_edge, %qcom_qmp_phy_com_init.exit.thread
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %120)
  %cmp = icmp eq i32 %120, 6
  br i1 %cmp, label %if.then25, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %dp_aux_init = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 33
  %121 = ptrtoint ptr %dp_aux_init to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dp_aux_init, align 4
  tail call void %122(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end24.cleanup_crit_edge, %qcom_qmp_phy_com_init.exit.cleanup_crit_edge, %qcom_qmp_phy_com_init.exit.thread51, %if.end14.cleanup_crit_edge, %if.then9
  %retval.0 = phi i32 [ %13, %if.then9 ], [ %call16, %if.end14.cleanup_crit_edge ], [ %ret.1.i, %qcom_qmp_phy_com_init.exit.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end24.cleanup_crit_edge ], [ %call.i47, %qcom_qmp_phy_com_init.exit.thread51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %qmp1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %qmp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmp1, align 4
  %cfg2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg2, align 4
  %tx3 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx3, align 4
  %rx4 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx4, align 4
  %pcs5 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pcs5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcs5, align 4
  %pcs_misc6 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %pcs_misc6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs_misc6, align 4
  %serdes3.i = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %serdes3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serdes3.i, align 4
  %dp_opts4.i = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 15
  %serdes_tbl5.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %serdes_tbl5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serdes_tbl5.i, align 4
  %serdes_tbl_num6.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %serdes_tbl_num6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %serdes_tbl_num6.i, align 4
  %regs.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 40
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %tobool.not.i.i.i = icmp ne ptr %17, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26.i.i.i = icmp sgt i32 %19, 0
  %or.cond.i.i.i = and i1 %tobool.not.i.i.i, %cmp26.i.i.i
  br i1 %or.cond.i.i.i, label %entry.for.body.i.i.i_crit_edge, label %entry.qcom_qmp_phy_configure.exit.i_crit_edge

entry.qcom_qmp_phy_configure.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure.exit.i

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %t.028.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %17, %entry.for.body.i.i.i_crit_edge ]
  %i.027.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %entry.for.body.i.i.i_crit_edge ]
  %lane_mask1.i.i.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %lane_mask1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lane_mask1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i.i.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end5.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

if.end5.i.i.i:                                    ; preds = %for.body.i.i.i
  %in_layout.i.i.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %in_layout.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %in_layout.i.i.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool6.not.i.i.i = icmp eq i8 %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %val11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val11.i.i.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %29 = ptrtoint ptr %t.028.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t.028.i.i.i, align 4
  br i1 %tobool6.not.i.i.i, label %do.body8.i.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr i32, ptr %21, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %28) #11, !srcloc !610
  br label %for.inc.i.i.i

do.body8.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i.i = getelementptr i8, ptr %15, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i.i, i32 %28) #11, !srcloc !610
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.body8.i.i.i, %do.body.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.027.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %19
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.qcom_qmp_phy_configure.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.qcom_qmp_phy_configure.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure.exit.i

qcom_qmp_phy_configure.exit.i:                    ; preds = %for.inc.i.i.i.qcom_qmp_phy_configure.exit.i_crit_edge, %entry.qcom_qmp_phy_configure.exit.i_crit_edge
  %serdes_tbl_sec.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %serdes_tbl_sec.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serdes_tbl_sec.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %qcom_qmp_phy_configure.exit.i.if.end.i_crit_edge, label %if.then.i

qcom_qmp_phy_configure.exit.i.if.end.i_crit_edge: ; preds = %qcom_qmp_phy_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %qcom_qmp_phy_configure.exit.i
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %serdes_tbl_num_sec.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 5
  %37 = ptrtoint ptr %serdes_tbl_num_sec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %serdes_tbl_num_sec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp26.i.i2.i = icmp sgt i32 %38, 0
  br i1 %cmp26.i.i2.i, label %if.then.i.for.body.i.i8.i_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i.for.body.i.i8.i_crit_edge:              ; preds = %if.then.i
  br label %for.body.i.i8.i

for.body.i.i8.i:                                  ; preds = %for.inc.i.i21.i.for.body.i.i8.i_crit_edge, %if.then.i.for.body.i.i8.i_crit_edge
  %t.028.i.i4.i = phi ptr [ %incdec.ptr.i.i19.i, %for.inc.i.i21.i.for.body.i.i8.i_crit_edge ], [ %34, %if.then.i.for.body.i.i8.i_crit_edge ]
  %i.027.i.i5.i = phi i32 [ %inc.i.i18.i, %for.inc.i.i21.i.for.body.i.i8.i_crit_edge ], [ 0, %if.then.i.for.body.i.i8.i_crit_edge ]
  %lane_mask1.i.i6.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i4.i, i32 0, i32 3
  %39 = ptrtoint ptr %lane_mask1.i.i6.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lane_mask1.i.i6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool3.not.i.i7.i = icmp eq i8 %40, 0
  br i1 %tobool3.not.i.i7.i, label %for.body.i.i8.i.for.inc.i.i21.i_crit_edge, label %if.end5.i.i12.i

for.body.i.i8.i.for.inc.i.i21.i_crit_edge:        ; preds = %for.body.i.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i21.i

if.end5.i.i12.i:                                  ; preds = %for.body.i.i8.i
  %in_layout.i.i9.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i4.i, i32 0, i32 2
  %41 = ptrtoint ptr %in_layout.i.i9.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in_layout.i.i9.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool6.not.i.i10.i = icmp eq i8 %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i11.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i4.i, i32 0, i32 1
  %43 = ptrtoint ptr %val11.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val11.i.i11.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  %46 = ptrtoint ptr %t.028.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %t.028.i.i4.i, align 4
  br i1 %tobool6.not.i.i10.i, label %do.body8.i.i17.i, label %do.body.i.i15.i

do.body.i.i15.i:                                  ; preds = %if.end5.i.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i13.i = getelementptr i32, ptr %36, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i13.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %15, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 %45) #11, !srcloc !610
  br label %for.inc.i.i21.i

do.body8.i.i17.i:                                 ; preds = %if.end5.i.i12.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i16.i = getelementptr i8, ptr %15, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i16.i, i32 %45) #11, !srcloc !610
  br label %for.inc.i.i21.i

for.inc.i.i21.i:                                  ; preds = %do.body8.i.i17.i, %do.body.i.i15.i, %for.body.i.i8.i.for.inc.i.i21.i_crit_edge
  %inc.i.i18.i = add nuw nsw i32 %i.027.i.i5.i, 1
  %incdec.ptr.i.i19.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i4.i, i32 1
  %exitcond.not.i.i20.i = icmp eq i32 %inc.i.i18.i, %38
  br i1 %exitcond.not.i.i20.i, label %for.inc.i.i21.i.if.end.i_crit_edge, label %for.inc.i.i21.i.for.body.i.i8.i_crit_edge

for.inc.i.i21.i.for.body.i.i8.i_crit_edge:        ; preds = %for.inc.i.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i8.i

for.inc.i.i21.i.if.end.i_crit_edge:               ; preds = %for.inc.i.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.i21.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %qcom_qmp_phy_configure.exit.i.if.end.i_crit_edge
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp.i = icmp eq i32 %51, 6
  br i1 %cmp.i, label %if.then9.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then9.i:                                       ; preds = %if.end.i
  %52 = ptrtoint ptr %dp_opts4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dp_opts4.i, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %53, label %if.then9.i.qcom_qmp_phy_serdes_init.exit_crit_edge [
    i32 1620, label %sw.bb.i
    i32 2700, label %sw.bb11.i
    i32 5400, label %sw.bb13.i
    i32 8100, label %sw.bb15.i
  ]

if.then9.i.qcom_qmp_phy_serdes_init.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_serdes_init.exit

sw.bb.i:                                          ; preds = %if.then9.i
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %serdes_tbl_rbr.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 22
  %57 = ptrtoint ptr %serdes_tbl_rbr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serdes_tbl_rbr.i, align 4
  %serdes_tbl_rbr_num.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 23
  %59 = ptrtoint ptr %serdes_tbl_rbr_num.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %serdes_tbl_rbr_num.i, align 4
  %tobool.not.i.i23.i = icmp ne ptr %58, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp26.i.i24.i = icmp sgt i32 %60, 0
  %or.cond.i.i25.i = and i1 %tobool.not.i.i23.i, %cmp26.i.i24.i
  br i1 %or.cond.i.i25.i, label %sw.bb.i.for.body.i.i30.i_crit_edge, label %sw.bb.i.if.end17.i_crit_edge

sw.bb.i.if.end17.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb.i.for.body.i.i30.i_crit_edge:               ; preds = %sw.bb.i
  br label %for.body.i.i30.i

for.body.i.i30.i:                                 ; preds = %for.inc.i.i43.i.for.body.i.i30.i_crit_edge, %sw.bb.i.for.body.i.i30.i_crit_edge
  %t.028.i.i26.i = phi ptr [ %incdec.ptr.i.i41.i, %for.inc.i.i43.i.for.body.i.i30.i_crit_edge ], [ %58, %sw.bb.i.for.body.i.i30.i_crit_edge ]
  %i.027.i.i27.i = phi i32 [ %inc.i.i40.i, %for.inc.i.i43.i.for.body.i.i30.i_crit_edge ], [ 0, %sw.bb.i.for.body.i.i30.i_crit_edge ]
  %lane_mask1.i.i28.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i26.i, i32 0, i32 3
  %61 = ptrtoint ptr %lane_mask1.i.i28.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %lane_mask1.i.i28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool3.not.i.i29.i = icmp eq i8 %62, 0
  br i1 %tobool3.not.i.i29.i, label %for.body.i.i30.i.for.inc.i.i43.i_crit_edge, label %if.end5.i.i34.i

for.body.i.i30.i.for.inc.i.i43.i_crit_edge:       ; preds = %for.body.i.i30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i43.i

if.end5.i.i34.i:                                  ; preds = %for.body.i.i30.i
  %in_layout.i.i31.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i26.i, i32 0, i32 2
  %63 = ptrtoint ptr %in_layout.i.i31.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %in_layout.i.i31.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool6.not.i.i32.i = icmp eq i8 %64, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i33.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i26.i, i32 0, i32 1
  %65 = ptrtoint ptr %val11.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val11.i.i33.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %68 = ptrtoint ptr %t.028.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %t.028.i.i26.i, align 4
  br i1 %tobool6.not.i.i32.i, label %do.body8.i.i39.i, label %do.body.i.i37.i

do.body.i.i37.i:                                  ; preds = %if.end5.i.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i35.i = getelementptr i32, ptr %56, i32 %69
  %70 = ptrtoint ptr %arrayidx.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i35.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %15, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36.i, i32 %67) #11, !srcloc !610
  br label %for.inc.i.i43.i

do.body8.i.i39.i:                                 ; preds = %if.end5.i.i34.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i38.i = getelementptr i8, ptr %15, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i38.i, i32 %67) #11, !srcloc !610
  br label %for.inc.i.i43.i

for.inc.i.i43.i:                                  ; preds = %do.body8.i.i39.i, %do.body.i.i37.i, %for.body.i.i30.i.for.inc.i.i43.i_crit_edge
  %inc.i.i40.i = add nuw nsw i32 %i.027.i.i27.i, 1
  %incdec.ptr.i.i41.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i26.i, i32 1
  %exitcond.not.i.i42.i = icmp eq i32 %inc.i.i40.i, %60
  br i1 %exitcond.not.i.i42.i, label %for.inc.i.i43.i.if.end17.i_crit_edge, label %for.inc.i.i43.i.for.body.i.i30.i_crit_edge

for.inc.i.i43.i.for.body.i.i30.i_crit_edge:       ; preds = %for.inc.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i30.i

for.inc.i.i43.i.if.end17.i_crit_edge:             ; preds = %for.inc.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb11.i:                                        ; preds = %if.then9.i
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %serdes_tbl_hbr.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 24
  %74 = ptrtoint ptr %serdes_tbl_hbr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %serdes_tbl_hbr.i, align 4
  %serdes_tbl_hbr_num.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 25
  %76 = ptrtoint ptr %serdes_tbl_hbr_num.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %serdes_tbl_hbr_num.i, align 4
  %tobool.not.i.i45.i = icmp ne ptr %75, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp26.i.i46.i = icmp sgt i32 %77, 0
  %or.cond.i.i47.i = and i1 %tobool.not.i.i45.i, %cmp26.i.i46.i
  br i1 %or.cond.i.i47.i, label %sw.bb11.i.for.body.i.i52.i_crit_edge, label %sw.bb11.i.if.end17.i_crit_edge

sw.bb11.i.if.end17.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb11.i.for.body.i.i52.i_crit_edge:             ; preds = %sw.bb11.i
  br label %for.body.i.i52.i

for.body.i.i52.i:                                 ; preds = %for.inc.i.i65.i.for.body.i.i52.i_crit_edge, %sw.bb11.i.for.body.i.i52.i_crit_edge
  %t.028.i.i48.i = phi ptr [ %incdec.ptr.i.i63.i, %for.inc.i.i65.i.for.body.i.i52.i_crit_edge ], [ %75, %sw.bb11.i.for.body.i.i52.i_crit_edge ]
  %i.027.i.i49.i = phi i32 [ %inc.i.i62.i, %for.inc.i.i65.i.for.body.i.i52.i_crit_edge ], [ 0, %sw.bb11.i.for.body.i.i52.i_crit_edge ]
  %lane_mask1.i.i50.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i48.i, i32 0, i32 3
  %78 = ptrtoint ptr %lane_mask1.i.i50.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %lane_mask1.i.i50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool3.not.i.i51.i = icmp eq i8 %79, 0
  br i1 %tobool3.not.i.i51.i, label %for.body.i.i52.i.for.inc.i.i65.i_crit_edge, label %if.end5.i.i56.i

for.body.i.i52.i.for.inc.i.i65.i_crit_edge:       ; preds = %for.body.i.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i65.i

if.end5.i.i56.i:                                  ; preds = %for.body.i.i52.i
  %in_layout.i.i53.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i48.i, i32 0, i32 2
  %80 = ptrtoint ptr %in_layout.i.i53.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %in_layout.i.i53.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool6.not.i.i54.i = icmp eq i8 %81, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i55.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i48.i, i32 0, i32 1
  %82 = ptrtoint ptr %val11.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val11.i.i55.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  %85 = ptrtoint ptr %t.028.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %t.028.i.i48.i, align 4
  br i1 %tobool6.not.i.i54.i, label %do.body8.i.i61.i, label %do.body.i.i59.i

do.body.i.i59.i:                                  ; preds = %if.end5.i.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i57.i = getelementptr i32, ptr %73, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i57.i, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %15, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58.i, i32 %84) #11, !srcloc !610
  br label %for.inc.i.i65.i

do.body8.i.i61.i:                                 ; preds = %if.end5.i.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i60.i = getelementptr i8, ptr %15, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i60.i, i32 %84) #11, !srcloc !610
  br label %for.inc.i.i65.i

for.inc.i.i65.i:                                  ; preds = %do.body8.i.i61.i, %do.body.i.i59.i, %for.body.i.i52.i.for.inc.i.i65.i_crit_edge
  %inc.i.i62.i = add nuw nsw i32 %i.027.i.i49.i, 1
  %incdec.ptr.i.i63.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i48.i, i32 1
  %exitcond.not.i.i64.i = icmp eq i32 %inc.i.i62.i, %77
  br i1 %exitcond.not.i.i64.i, label %for.inc.i.i65.i.if.end17.i_crit_edge, label %for.inc.i.i65.i.for.body.i.i52.i_crit_edge

for.inc.i.i65.i.for.body.i.i52.i_crit_edge:       ; preds = %for.inc.i.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i52.i

for.inc.i.i65.i.if.end17.i_crit_edge:             ; preds = %for.inc.i.i65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb13.i:                                        ; preds = %if.then9.i
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %serdes_tbl_hbr2.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 26
  %91 = ptrtoint ptr %serdes_tbl_hbr2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %serdes_tbl_hbr2.i, align 4
  %serdes_tbl_hbr2_num.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 27
  %93 = ptrtoint ptr %serdes_tbl_hbr2_num.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %serdes_tbl_hbr2_num.i, align 4
  %tobool.not.i.i67.i = icmp ne ptr %92, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp26.i.i68.i = icmp sgt i32 %94, 0
  %or.cond.i.i69.i = and i1 %tobool.not.i.i67.i, %cmp26.i.i68.i
  br i1 %or.cond.i.i69.i, label %sw.bb13.i.for.body.i.i74.i_crit_edge, label %sw.bb13.i.if.end17.i_crit_edge

sw.bb13.i.if.end17.i_crit_edge:                   ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb13.i.for.body.i.i74.i_crit_edge:             ; preds = %sw.bb13.i
  br label %for.body.i.i74.i

for.body.i.i74.i:                                 ; preds = %for.inc.i.i87.i.for.body.i.i74.i_crit_edge, %sw.bb13.i.for.body.i.i74.i_crit_edge
  %t.028.i.i70.i = phi ptr [ %incdec.ptr.i.i85.i, %for.inc.i.i87.i.for.body.i.i74.i_crit_edge ], [ %92, %sw.bb13.i.for.body.i.i74.i_crit_edge ]
  %i.027.i.i71.i = phi i32 [ %inc.i.i84.i, %for.inc.i.i87.i.for.body.i.i74.i_crit_edge ], [ 0, %sw.bb13.i.for.body.i.i74.i_crit_edge ]
  %lane_mask1.i.i72.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i70.i, i32 0, i32 3
  %95 = ptrtoint ptr %lane_mask1.i.i72.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %lane_mask1.i.i72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool3.not.i.i73.i = icmp eq i8 %96, 0
  br i1 %tobool3.not.i.i73.i, label %for.body.i.i74.i.for.inc.i.i87.i_crit_edge, label %if.end5.i.i78.i

for.body.i.i74.i.for.inc.i.i87.i_crit_edge:       ; preds = %for.body.i.i74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i87.i

if.end5.i.i78.i:                                  ; preds = %for.body.i.i74.i
  %in_layout.i.i75.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i70.i, i32 0, i32 2
  %97 = ptrtoint ptr %in_layout.i.i75.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %in_layout.i.i75.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool6.not.i.i76.i = icmp eq i8 %98, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i77.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i70.i, i32 0, i32 1
  %99 = ptrtoint ptr %val11.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val11.i.i77.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #11
  %102 = ptrtoint ptr %t.028.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %t.028.i.i70.i, align 4
  br i1 %tobool6.not.i.i76.i, label %do.body8.i.i83.i, label %do.body.i.i81.i

do.body.i.i81.i:                                  ; preds = %if.end5.i.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i79.i = getelementptr i32, ptr %90, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i79.i, align 4
  %add.ptr.i.i80.i = getelementptr i8, ptr %15, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80.i, i32 %101) #11, !srcloc !610
  br label %for.inc.i.i87.i

do.body8.i.i83.i:                                 ; preds = %if.end5.i.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i82.i = getelementptr i8, ptr %15, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i82.i, i32 %101) #11, !srcloc !610
  br label %for.inc.i.i87.i

for.inc.i.i87.i:                                  ; preds = %do.body8.i.i83.i, %do.body.i.i81.i, %for.body.i.i74.i.for.inc.i.i87.i_crit_edge
  %inc.i.i84.i = add nuw nsw i32 %i.027.i.i71.i, 1
  %incdec.ptr.i.i85.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i70.i, i32 1
  %exitcond.not.i.i86.i = icmp eq i32 %inc.i.i84.i, %94
  br i1 %exitcond.not.i.i86.i, label %for.inc.i.i87.i.if.end17.i_crit_edge, label %for.inc.i.i87.i.for.body.i.i74.i_crit_edge

for.inc.i.i87.i.for.body.i.i74.i_crit_edge:       ; preds = %for.inc.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i74.i

for.inc.i.i87.i.if.end17.i_crit_edge:             ; preds = %for.inc.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb15.i:                                        ; preds = %if.then9.i
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %serdes_tbl_hbr3.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 28
  %108 = ptrtoint ptr %serdes_tbl_hbr3.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %serdes_tbl_hbr3.i, align 4
  %serdes_tbl_hbr3_num.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 29
  %110 = ptrtoint ptr %serdes_tbl_hbr3_num.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %serdes_tbl_hbr3_num.i, align 4
  %tobool.not.i.i89.i = icmp ne ptr %109, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp26.i.i90.i = icmp sgt i32 %111, 0
  %or.cond.i.i91.i = and i1 %tobool.not.i.i89.i, %cmp26.i.i90.i
  br i1 %or.cond.i.i91.i, label %sw.bb15.i.for.body.i.i96.i_crit_edge, label %sw.bb15.i.if.end17.i_crit_edge

sw.bb15.i.if.end17.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

sw.bb15.i.for.body.i.i96.i_crit_edge:             ; preds = %sw.bb15.i
  br label %for.body.i.i96.i

for.body.i.i96.i:                                 ; preds = %for.inc.i.i109.i.for.body.i.i96.i_crit_edge, %sw.bb15.i.for.body.i.i96.i_crit_edge
  %t.028.i.i92.i = phi ptr [ %incdec.ptr.i.i107.i, %for.inc.i.i109.i.for.body.i.i96.i_crit_edge ], [ %109, %sw.bb15.i.for.body.i.i96.i_crit_edge ]
  %i.027.i.i93.i = phi i32 [ %inc.i.i106.i, %for.inc.i.i109.i.for.body.i.i96.i_crit_edge ], [ 0, %sw.bb15.i.for.body.i.i96.i_crit_edge ]
  %lane_mask1.i.i94.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i92.i, i32 0, i32 3
  %112 = ptrtoint ptr %lane_mask1.i.i94.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %lane_mask1.i.i94.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool3.not.i.i95.i = icmp eq i8 %113, 0
  br i1 %tobool3.not.i.i95.i, label %for.body.i.i96.i.for.inc.i.i109.i_crit_edge, label %if.end5.i.i100.i

for.body.i.i96.i.for.inc.i.i109.i_crit_edge:      ; preds = %for.body.i.i96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i109.i

if.end5.i.i100.i:                                 ; preds = %for.body.i.i96.i
  %in_layout.i.i97.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i92.i, i32 0, i32 2
  %114 = ptrtoint ptr %in_layout.i.i97.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %in_layout.i.i97.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool6.not.i.i98.i = icmp eq i8 %115, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i99.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i92.i, i32 0, i32 1
  %116 = ptrtoint ptr %val11.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %val11.i.i99.i, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #11
  %119 = ptrtoint ptr %t.028.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %t.028.i.i92.i, align 4
  br i1 %tobool6.not.i.i98.i, label %do.body8.i.i105.i, label %do.body.i.i103.i

do.body.i.i103.i:                                 ; preds = %if.end5.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i101.i = getelementptr i32, ptr %107, i32 %120
  %121 = ptrtoint ptr %arrayidx.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i101.i, align 4
  %add.ptr.i.i102.i = getelementptr i8, ptr %15, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102.i, i32 %118) #11, !srcloc !610
  br label %for.inc.i.i109.i

do.body8.i.i105.i:                                ; preds = %if.end5.i.i100.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i104.i = getelementptr i8, ptr %15, i32 %120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i104.i, i32 %118) #11, !srcloc !610
  br label %for.inc.i.i109.i

for.inc.i.i109.i:                                 ; preds = %do.body8.i.i105.i, %do.body.i.i103.i, %for.body.i.i96.i.for.inc.i.i109.i_crit_edge
  %inc.i.i106.i = add nuw nsw i32 %i.027.i.i93.i, 1
  %incdec.ptr.i.i107.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i92.i, i32 1
  %exitcond.not.i.i108.i = icmp eq i32 %inc.i.i106.i, %111
  br i1 %exitcond.not.i.i108.i, label %for.inc.i.i109.i.if.end17.i_crit_edge, label %for.inc.i.i109.i.for.body.i.i96.i_crit_edge

for.inc.i.i109.i.for.body.i.i96.i_crit_edge:      ; preds = %for.inc.i.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i96.i

for.inc.i.i109.i.if.end17.i_crit_edge:            ; preds = %for.inc.i.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %for.inc.i.i109.i.if.end17.i_crit_edge, %sw.bb15.i.if.end17.i_crit_edge, %for.inc.i.i87.i.if.end17.i_crit_edge, %sw.bb13.i.if.end17.i_crit_edge, %for.inc.i.i65.i.if.end17.i_crit_edge, %sw.bb11.i.if.end17.i_crit_edge, %for.inc.i.i43.i.if.end17.i_crit_edge, %sw.bb.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %has_phy_com_ctrl.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 45
  %123 = ptrtoint ptr %has_phy_com_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %has_phy_com_ctrl.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool18.not.i = icmp eq i8 %124, 0
  br i1 %tobool18.not.i, label %if.end17.i.qcom_qmp_phy_serdes_init.exit_crit_edge, label %if.then19.i

if.end17.i.qcom_qmp_phy_serdes_init.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_serdes_init.exit

if.then19.i:                                      ; preds = %if.end17.i
  %125 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %128
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %130 = and i32 %129, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %130) #11, !srcloc !610
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %132 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %133, i32 2
  %134 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx22.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %15, i32 %135
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %137 = or i32 %136, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %137) #11, !srcloc !610
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 4
  %arrayidx24.i = getelementptr i32, ptr %140, i32 3
  %141 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx24.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %142
  %mask_com_pcs_ready.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 43
  %143 = ptrtoint ptr %mask_com_pcs_ready.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mask_com_pcs_ready.i, align 4
  %call.i = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 4508) #11
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !621
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !716
  %and116.i = and i32 %146, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool37.not117.i = icmp eq i32 %and116.i, 0
  br i1 %tobool37.not117.i, label %if.then19.i.land.lhs.true.i_crit_edge, label %if.then19.i.for.end.i_crit_edge

if.then19.i.for.end.i_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then19.i.land.lhs.true.i_crit_edge:            ; preds = %if.then19.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then52.i.land.lhs.true.i_crit_edge, %if.then19.i.land.lhs.true.i_crit_edge
  %call41.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call41.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call41.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then44.i, label %if.then52.i

if.then44.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !621
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !717
  br label %for.end.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !621
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !716
  %and.i = and i32 %150, %144
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %if.then52.i.land.lhs.true.i_crit_edge, label %if.then52.i.for.end.i_crit_edge

if.then52.i.for.end.i_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then52.i.land.lhs.true.i_crit_edge:            ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then52.i.for.end.i_crit_edge, %if.then44.i, %if.then19.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %148, %if.then44.i ], [ %146, %if.then19.i.for.end.i_crit_edge ], [ %150, %if.then52.i.for.end.i_crit_edge ]
  %and55.i = and i32 %val.0.i, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.end61.i, label %for.end.i.qcom_qmp_phy_serdes_init.exit_crit_edge

for.end.i.qcom_qmp_phy_serdes_init.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_serdes_init.exit

do.end61.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.66) #14
  br label %qcom_qmp_phy_serdes_init.exit

qcom_qmp_phy_serdes_init.exit:                    ; preds = %do.end61.i, %for.end.i.qcom_qmp_phy_serdes_init.exit_crit_edge, %if.end17.i.qcom_qmp_phy_serdes_init.exit_crit_edge, %if.then9.i.qcom_qmp_phy_serdes_init.exit_crit_edge
  %has_lane_rst = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 46
  %153 = ptrtoint ptr %has_lane_rst to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %has_lane_rst, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool.not = icmp eq i8 %154, 0
  br i1 %tobool.not, label %qcom_qmp_phy_serdes_init.exit.if.end11_crit_edge, label %if.then

qcom_qmp_phy_serdes_init.exit.if.end11_crit_edge: ; preds = %qcom_qmp_phy_serdes_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %qcom_qmp_phy_serdes_init.exit
  %lane_rst = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 12
  %155 = ptrtoint ptr %lane_rst to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lane_rst, align 4
  %call8 = tail call i32 @reset_control_deassert(ptr noundef %156) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %do.end

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %3, align 4
  %index = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 10
  %159 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.58, i32 noundef %160) #14
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %qcom_qmp_phy_serdes_init.exit.if.end11_crit_edge
  %pipe_clk = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 9
  %161 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pipe_clk, align 4
  %call.i281 = tail call i32 @clk_prepare(ptr noundef %162) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool.not.i282 = icmp eq i32 %call.i281, 0
  br i1 %tobool.not.i282, label %if.end.i283, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

if.end.i283:                                      ; preds = %if.end11
  %call1.i = tail call i32 @clk_enable(ptr noundef %162) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %162) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i, %if.end11.do.end17_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i281, %if.end11.do.end17_crit_edge ]
  %163 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.61, i32 noundef %retval.0.i.ph) #14
  br label %err_clk_enable

if.end19:                                         ; preds = %if.end.i283
  %165 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i, align 4
  %tx_tbl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 6
  %167 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tx_tbl, align 4
  %tx_tbl_num = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 7
  %169 = ptrtoint ptr %tx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tx_tbl_num, align 4
  %tobool.not.i284 = icmp ne ptr %168, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp26.i = icmp sgt i32 %170, 0
  %or.cond.i = and i1 %tobool.not.i284, %cmp26.i
  br i1 %or.cond.i, label %if.end19.for.body.i_crit_edge, label %if.end19.qcom_qmp_phy_configure_lane.exit_crit_edge

if.end19.qcom_qmp_phy_configure_lane.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %t.028.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %168, %if.end19.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %lane_mask1.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i, i32 0, i32 3
  %171 = ptrtoint ptr %lane_mask1.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %lane_mask1.i, align 1
  %and25.i = and i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i)
  %tobool3.not.i = icmp eq i8 %and25.i, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %in_layout.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i, i32 0, i32 2
  %173 = ptrtoint ptr %in_layout.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %in_layout.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool6.not.i = icmp eq i8 %174, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i, i32 0, i32 1
  %175 = ptrtoint ptr %val11.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val11.i, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #11
  %178 = ptrtoint ptr %t.028.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %t.028.i, align 4
  br i1 %tobool6.not.i, label %do.body8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i32, ptr %166, i32 %179
  %180 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %7, i32 %181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %177) #11, !srcloc !610
  br label %for.inc.i

do.body8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i = getelementptr i8, ptr %7, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %177) #11, !srcloc !610
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body8.i, %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %incdec.ptr.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %170
  br i1 %exitcond.not.i, label %for.inc.i.qcom_qmp_phy_configure_lane.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.qcom_qmp_phy_configure_lane.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit

qcom_qmp_phy_configure_lane.exit:                 ; preds = %for.inc.i.qcom_qmp_phy_configure_lane.exit_crit_edge, %if.end19.qcom_qmp_phy_configure_lane.exit_crit_edge
  %tx_tbl_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 8
  %182 = ptrtoint ptr %tx_tbl_sec to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tx_tbl_sec, align 4
  %tobool20.not = icmp eq ptr %183, null
  br i1 %tobool20.not, label %qcom_qmp_phy_configure_lane.exit.if.end24_crit_edge, label %if.then21

qcom_qmp_phy_configure_lane.exit.if.end24_crit_edge: ; preds = %qcom_qmp_phy_configure_lane.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %qcom_qmp_phy_configure_lane.exit
  %184 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i, align 4
  %tx_tbl_num_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 9
  %186 = ptrtoint ptr %tx_tbl_num_sec to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tx_tbl_num_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp26.i287 = icmp sgt i32 %187, 0
  br i1 %cmp26.i287, label %if.then21.for.body.i294_crit_edge, label %if.then21.if.end24_crit_edge

if.then21.if.end24_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21.for.body.i294_crit_edge:                ; preds = %if.then21
  br label %for.body.i294

for.body.i294:                                    ; preds = %for.inc.i307.for.body.i294_crit_edge, %if.then21.for.body.i294_crit_edge
  %t.028.i289 = phi ptr [ %incdec.ptr.i305, %for.inc.i307.for.body.i294_crit_edge ], [ %183, %if.then21.for.body.i294_crit_edge ]
  %i.027.i290 = phi i32 [ %inc.i304, %for.inc.i307.for.body.i294_crit_edge ], [ 0, %if.then21.for.body.i294_crit_edge ]
  %lane_mask1.i291 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i289, i32 0, i32 3
  %188 = ptrtoint ptr %lane_mask1.i291 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %lane_mask1.i291, align 1
  %and25.i292 = and i8 %189, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i292)
  %tobool3.not.i293 = icmp eq i8 %and25.i292, 0
  br i1 %tobool3.not.i293, label %for.body.i294.for.inc.i307_crit_edge, label %if.end5.i298

for.body.i294.for.inc.i307_crit_edge:             ; preds = %for.body.i294
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i307

if.end5.i298:                                     ; preds = %for.body.i294
  %in_layout.i295 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i289, i32 0, i32 2
  %190 = ptrtoint ptr %in_layout.i295 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %in_layout.i295, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool6.not.i296 = icmp eq i8 %191, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i297 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i289, i32 0, i32 1
  %192 = ptrtoint ptr %val11.i297 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %val11.i297, align 4
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #11
  %195 = ptrtoint ptr %t.028.i289 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %t.028.i289, align 4
  br i1 %tobool6.not.i296, label %do.body8.i303, label %do.body.i301

do.body.i301:                                     ; preds = %if.end5.i298
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i299 = getelementptr i32, ptr %185, i32 %196
  %197 = ptrtoint ptr %arrayidx.i299 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i299, align 4
  %add.ptr.i300 = getelementptr i8, ptr %7, i32 %198
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 %194) #11, !srcloc !610
  br label %for.inc.i307

do.body8.i303:                                    ; preds = %if.end5.i298
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i302 = getelementptr i8, ptr %7, i32 %196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i302, i32 %194) #11, !srcloc !610
  br label %for.inc.i307

for.inc.i307:                                     ; preds = %do.body8.i303, %do.body.i301, %for.body.i294.for.inc.i307_crit_edge
  %inc.i304 = add nuw nsw i32 %i.027.i290, 1
  %incdec.ptr.i305 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i289, i32 1
  %exitcond.not.i306 = icmp eq i32 %inc.i304, %187
  br i1 %exitcond.not.i306, label %for.inc.i307.if.end24_crit_edge, label %for.inc.i307.for.body.i294_crit_edge

for.inc.i307.for.body.i294_crit_edge:             ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i294

for.inc.i307.if.end24_crit_edge:                  ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %for.inc.i307.if.end24_crit_edge, %if.then21.if.end24_crit_edge, %qcom_qmp_phy_configure_lane.exit.if.end24_crit_edge
  %is_dual_lane_phy = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 51
  %199 = ptrtoint ptr %is_dual_lane_phy to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %is_dual_lane_phy, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool25.not = icmp eq i8 %200, 0
  br i1 %tobool25.not, label %if.end24.if.end38_crit_edge, label %if.then26

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then26:                                        ; preds = %if.end24
  %tx2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 6
  %201 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %tx2, align 4
  %203 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs.i, align 4
  %205 = ptrtoint ptr %tx_tbl to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %tx_tbl, align 4
  %207 = ptrtoint ptr %tx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %tx_tbl_num, align 4
  %tobool.not.i309 = icmp ne ptr %206, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp26.i310 = icmp sgt i32 %208, 0
  %or.cond.i311 = and i1 %tobool.not.i309, %cmp26.i310
  br i1 %or.cond.i311, label %if.then26.for.body.i317_crit_edge, label %if.then26.qcom_qmp_phy_configure_lane.exit331_crit_edge

if.then26.qcom_qmp_phy_configure_lane.exit331_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit331

if.then26.for.body.i317_crit_edge:                ; preds = %if.then26
  br label %for.body.i317

for.body.i317:                                    ; preds = %for.inc.i330.for.body.i317_crit_edge, %if.then26.for.body.i317_crit_edge
  %t.028.i312 = phi ptr [ %incdec.ptr.i328, %for.inc.i330.for.body.i317_crit_edge ], [ %206, %if.then26.for.body.i317_crit_edge ]
  %i.027.i313 = phi i32 [ %inc.i327, %for.inc.i330.for.body.i317_crit_edge ], [ 0, %if.then26.for.body.i317_crit_edge ]
  %lane_mask1.i314 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i312, i32 0, i32 3
  %209 = ptrtoint ptr %lane_mask1.i314 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %lane_mask1.i314, align 1
  %and25.i315 = and i8 %210, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i315)
  %tobool3.not.i316 = icmp eq i8 %and25.i315, 0
  br i1 %tobool3.not.i316, label %for.body.i317.for.inc.i330_crit_edge, label %if.end5.i321

for.body.i317.for.inc.i330_crit_edge:             ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i330

if.end5.i321:                                     ; preds = %for.body.i317
  %in_layout.i318 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i312, i32 0, i32 2
  %211 = ptrtoint ptr %in_layout.i318 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %in_layout.i318, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool6.not.i319 = icmp eq i8 %212, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i320 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i312, i32 0, i32 1
  %213 = ptrtoint ptr %val11.i320 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %val11.i320, align 4
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #11
  %216 = ptrtoint ptr %t.028.i312 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %t.028.i312, align 4
  br i1 %tobool6.not.i319, label %do.body8.i326, label %do.body.i324

do.body.i324:                                     ; preds = %if.end5.i321
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i322 = getelementptr i32, ptr %204, i32 %217
  %218 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i322, align 4
  %add.ptr.i323 = getelementptr i8, ptr %202, i32 %219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 %215) #11, !srcloc !610
  br label %for.inc.i330

do.body8.i326:                                    ; preds = %if.end5.i321
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i325 = getelementptr i8, ptr %202, i32 %217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i325, i32 %215) #11, !srcloc !610
  br label %for.inc.i330

for.inc.i330:                                     ; preds = %do.body8.i326, %do.body.i324, %for.body.i317.for.inc.i330_crit_edge
  %inc.i327 = add nuw nsw i32 %i.027.i313, 1
  %incdec.ptr.i328 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i312, i32 1
  %exitcond.not.i329 = icmp eq i32 %inc.i327, %208
  br i1 %exitcond.not.i329, label %for.inc.i330.qcom_qmp_phy_configure_lane.exit331_crit_edge, label %for.inc.i330.for.body.i317_crit_edge

for.inc.i330.for.body.i317_crit_edge:             ; preds = %for.inc.i330
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i317

for.inc.i330.qcom_qmp_phy_configure_lane.exit331_crit_edge: ; preds = %for.inc.i330
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit331

qcom_qmp_phy_configure_lane.exit331:              ; preds = %for.inc.i330.qcom_qmp_phy_configure_lane.exit331_crit_edge, %if.then26.qcom_qmp_phy_configure_lane.exit331_crit_edge
  %220 = ptrtoint ptr %tx_tbl_sec to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tx_tbl_sec, align 4
  %tobool31.not = icmp eq ptr %221, null
  br i1 %tobool31.not, label %qcom_qmp_phy_configure_lane.exit331.if.end38_crit_edge, label %if.then32

qcom_qmp_phy_configure_lane.exit331.if.end38_crit_edge: ; preds = %qcom_qmp_phy_configure_lane.exit331
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32:                                        ; preds = %qcom_qmp_phy_configure_lane.exit331
  %222 = ptrtoint ptr %tx2 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %tx2, align 4
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 4
  %tx_tbl_num_sec36 = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 9
  %226 = ptrtoint ptr %tx_tbl_num_sec36 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_tbl_num_sec36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp26.i333 = icmp sgt i32 %227, 0
  br i1 %cmp26.i333, label %if.then32.for.body.i340_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32.for.body.i340_crit_edge:                ; preds = %if.then32
  br label %for.body.i340

for.body.i340:                                    ; preds = %for.inc.i353.for.body.i340_crit_edge, %if.then32.for.body.i340_crit_edge
  %t.028.i335 = phi ptr [ %incdec.ptr.i351, %for.inc.i353.for.body.i340_crit_edge ], [ %221, %if.then32.for.body.i340_crit_edge ]
  %i.027.i336 = phi i32 [ %inc.i350, %for.inc.i353.for.body.i340_crit_edge ], [ 0, %if.then32.for.body.i340_crit_edge ]
  %lane_mask1.i337 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i335, i32 0, i32 3
  %228 = ptrtoint ptr %lane_mask1.i337 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %lane_mask1.i337, align 1
  %and25.i338 = and i8 %229, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i338)
  %tobool3.not.i339 = icmp eq i8 %and25.i338, 0
  br i1 %tobool3.not.i339, label %for.body.i340.for.inc.i353_crit_edge, label %if.end5.i344

for.body.i340.for.inc.i353_crit_edge:             ; preds = %for.body.i340
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i353

if.end5.i344:                                     ; preds = %for.body.i340
  %in_layout.i341 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i335, i32 0, i32 2
  %230 = ptrtoint ptr %in_layout.i341 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %in_layout.i341, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool6.not.i342 = icmp eq i8 %231, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i343 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i335, i32 0, i32 1
  %232 = ptrtoint ptr %val11.i343 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %val11.i343, align 4
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #11
  %235 = ptrtoint ptr %t.028.i335 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %t.028.i335, align 4
  br i1 %tobool6.not.i342, label %do.body8.i349, label %do.body.i347

do.body.i347:                                     ; preds = %if.end5.i344
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i345 = getelementptr i32, ptr %225, i32 %236
  %237 = ptrtoint ptr %arrayidx.i345 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx.i345, align 4
  %add.ptr.i346 = getelementptr i8, ptr %223, i32 %238
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346, i32 %234) #11, !srcloc !610
  br label %for.inc.i353

do.body8.i349:                                    ; preds = %if.end5.i344
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i348 = getelementptr i8, ptr %223, i32 %236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i348, i32 %234) #11, !srcloc !610
  br label %for.inc.i353

for.inc.i353:                                     ; preds = %do.body8.i349, %do.body.i347, %for.body.i340.for.inc.i353_crit_edge
  %inc.i350 = add nuw nsw i32 %i.027.i336, 1
  %incdec.ptr.i351 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i335, i32 1
  %exitcond.not.i352 = icmp eq i32 %inc.i350, %227
  br i1 %exitcond.not.i352, label %for.inc.i353.if.end38_crit_edge, label %for.inc.i353.for.body.i340_crit_edge

for.inc.i353.for.body.i340_crit_edge:             ; preds = %for.inc.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i340

for.inc.i353.if.end38_crit_edge:                  ; preds = %for.inc.i353
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end38:                                         ; preds = %for.inc.i353.if.end38_crit_edge, %if.then32.if.end38_crit_edge, %qcom_qmp_phy_configure_lane.exit331.if.end38_crit_edge, %if.end24.if.end38_crit_edge
  %239 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %240)
  %cmp = icmp eq i32 %240, 6
  br i1 %cmp, label %if.then39, label %if.end38.if.end40_crit_edge

if.end38.if.end40_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %configure_dp_tx = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 31
  %241 = ptrtoint ptr %configure_dp_tx to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %configure_dp_tx, align 4
  tail call void %242(ptr noundef %1) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end38.if.end40_crit_edge
  %243 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i, align 4
  %rx_tbl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 10
  %245 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rx_tbl, align 4
  %rx_tbl_num = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 11
  %247 = ptrtoint ptr %rx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rx_tbl_num, align 4
  %tobool.not.i355 = icmp ne ptr %246, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp26.i356 = icmp sgt i32 %248, 0
  %or.cond.i357 = and i1 %tobool.not.i355, %cmp26.i356
  br i1 %or.cond.i357, label %if.end40.for.body.i363_crit_edge, label %if.end40.qcom_qmp_phy_configure_lane.exit377_crit_edge

if.end40.qcom_qmp_phy_configure_lane.exit377_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit377

if.end40.for.body.i363_crit_edge:                 ; preds = %if.end40
  br label %for.body.i363

for.body.i363:                                    ; preds = %for.inc.i376.for.body.i363_crit_edge, %if.end40.for.body.i363_crit_edge
  %t.028.i358 = phi ptr [ %incdec.ptr.i374, %for.inc.i376.for.body.i363_crit_edge ], [ %246, %if.end40.for.body.i363_crit_edge ]
  %i.027.i359 = phi i32 [ %inc.i373, %for.inc.i376.for.body.i363_crit_edge ], [ 0, %if.end40.for.body.i363_crit_edge ]
  %lane_mask1.i360 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i358, i32 0, i32 3
  %249 = ptrtoint ptr %lane_mask1.i360 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %lane_mask1.i360, align 1
  %and25.i361 = and i8 %250, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i361)
  %tobool3.not.i362 = icmp eq i8 %and25.i361, 0
  br i1 %tobool3.not.i362, label %for.body.i363.for.inc.i376_crit_edge, label %if.end5.i367

for.body.i363.for.inc.i376_crit_edge:             ; preds = %for.body.i363
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i376

if.end5.i367:                                     ; preds = %for.body.i363
  %in_layout.i364 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i358, i32 0, i32 2
  %251 = ptrtoint ptr %in_layout.i364 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %in_layout.i364, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool6.not.i365 = icmp eq i8 %252, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i366 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i358, i32 0, i32 1
  %253 = ptrtoint ptr %val11.i366 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %val11.i366, align 4
  %255 = tail call i32 @llvm.bswap.i32(i32 %254) #11
  %256 = ptrtoint ptr %t.028.i358 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %t.028.i358, align 4
  br i1 %tobool6.not.i365, label %do.body8.i372, label %do.body.i370

do.body.i370:                                     ; preds = %if.end5.i367
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i368 = getelementptr i32, ptr %244, i32 %257
  %258 = ptrtoint ptr %arrayidx.i368 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i368, align 4
  %add.ptr.i369 = getelementptr i8, ptr %9, i32 %259
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i369, i32 %255) #11, !srcloc !610
  br label %for.inc.i376

do.body8.i372:                                    ; preds = %if.end5.i367
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i371 = getelementptr i8, ptr %9, i32 %257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i371, i32 %255) #11, !srcloc !610
  br label %for.inc.i376

for.inc.i376:                                     ; preds = %do.body8.i372, %do.body.i370, %for.body.i363.for.inc.i376_crit_edge
  %inc.i373 = add nuw nsw i32 %i.027.i359, 1
  %incdec.ptr.i374 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i358, i32 1
  %exitcond.not.i375 = icmp eq i32 %inc.i373, %248
  br i1 %exitcond.not.i375, label %for.inc.i376.qcom_qmp_phy_configure_lane.exit377_crit_edge, label %for.inc.i376.for.body.i363_crit_edge

for.inc.i376.for.body.i363_crit_edge:             ; preds = %for.inc.i376
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i363

for.inc.i376.qcom_qmp_phy_configure_lane.exit377_crit_edge: ; preds = %for.inc.i376
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit377

qcom_qmp_phy_configure_lane.exit377:              ; preds = %for.inc.i376.qcom_qmp_phy_configure_lane.exit377_crit_edge, %if.end40.qcom_qmp_phy_configure_lane.exit377_crit_edge
  %rx_tbl_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 12
  %260 = ptrtoint ptr %rx_tbl_sec to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rx_tbl_sec, align 4
  %tobool42.not = icmp eq ptr %261, null
  br i1 %tobool42.not, label %qcom_qmp_phy_configure_lane.exit377.if.end46_crit_edge, label %if.then43

qcom_qmp_phy_configure_lane.exit377.if.end46_crit_edge: ; preds = %qcom_qmp_phy_configure_lane.exit377
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43:                                        ; preds = %qcom_qmp_phy_configure_lane.exit377
  %262 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regs.i, align 4
  %rx_tbl_num_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 13
  %264 = ptrtoint ptr %rx_tbl_num_sec to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %rx_tbl_num_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp26.i379 = icmp sgt i32 %265, 0
  br i1 %cmp26.i379, label %if.then43.for.body.i386_crit_edge, label %if.then43.if.end46_crit_edge

if.then43.if.end46_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43.for.body.i386_crit_edge:                ; preds = %if.then43
  br label %for.body.i386

for.body.i386:                                    ; preds = %for.inc.i399.for.body.i386_crit_edge, %if.then43.for.body.i386_crit_edge
  %t.028.i381 = phi ptr [ %incdec.ptr.i397, %for.inc.i399.for.body.i386_crit_edge ], [ %261, %if.then43.for.body.i386_crit_edge ]
  %i.027.i382 = phi i32 [ %inc.i396, %for.inc.i399.for.body.i386_crit_edge ], [ 0, %if.then43.for.body.i386_crit_edge ]
  %lane_mask1.i383 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i381, i32 0, i32 3
  %266 = ptrtoint ptr %lane_mask1.i383 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %lane_mask1.i383, align 1
  %and25.i384 = and i8 %267, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i384)
  %tobool3.not.i385 = icmp eq i8 %and25.i384, 0
  br i1 %tobool3.not.i385, label %for.body.i386.for.inc.i399_crit_edge, label %if.end5.i390

for.body.i386.for.inc.i399_crit_edge:             ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i399

if.end5.i390:                                     ; preds = %for.body.i386
  %in_layout.i387 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i381, i32 0, i32 2
  %268 = ptrtoint ptr %in_layout.i387 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %in_layout.i387, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool6.not.i388 = icmp eq i8 %269, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i389 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i381, i32 0, i32 1
  %270 = ptrtoint ptr %val11.i389 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %val11.i389, align 4
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #11
  %273 = ptrtoint ptr %t.028.i381 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %t.028.i381, align 4
  br i1 %tobool6.not.i388, label %do.body8.i395, label %do.body.i393

do.body.i393:                                     ; preds = %if.end5.i390
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i391 = getelementptr i32, ptr %263, i32 %274
  %275 = ptrtoint ptr %arrayidx.i391 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i391, align 4
  %add.ptr.i392 = getelementptr i8, ptr %9, i32 %276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392, i32 %272) #11, !srcloc !610
  br label %for.inc.i399

do.body8.i395:                                    ; preds = %if.end5.i390
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i394 = getelementptr i8, ptr %9, i32 %274
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i394, i32 %272) #11, !srcloc !610
  br label %for.inc.i399

for.inc.i399:                                     ; preds = %do.body8.i395, %do.body.i393, %for.body.i386.for.inc.i399_crit_edge
  %inc.i396 = add nuw nsw i32 %i.027.i382, 1
  %incdec.ptr.i397 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i381, i32 1
  %exitcond.not.i398 = icmp eq i32 %inc.i396, %265
  br i1 %exitcond.not.i398, label %for.inc.i399.if.end46_crit_edge, label %for.inc.i399.for.body.i386_crit_edge

for.inc.i399.for.body.i386_crit_edge:             ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i386

for.inc.i399.if.end46_crit_edge:                  ; preds = %for.inc.i399
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end46:                                         ; preds = %for.inc.i399.if.end46_crit_edge, %if.then43.if.end46_crit_edge, %qcom_qmp_phy_configure_lane.exit377.if.end46_crit_edge
  %277 = ptrtoint ptr %is_dual_lane_phy to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %is_dual_lane_phy, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool48.not = icmp eq i8 %278, 0
  br i1 %tobool48.not, label %if.end46.if.end61_crit_edge, label %if.then49

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then49:                                        ; preds = %if.end46
  %rx2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 7
  %279 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rx2, align 4
  %281 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regs.i, align 4
  %283 = ptrtoint ptr %rx_tbl to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %rx_tbl, align 4
  %285 = ptrtoint ptr %rx_tbl_num to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %rx_tbl_num, align 4
  %tobool.not.i401 = icmp ne ptr %284, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %cmp26.i402 = icmp sgt i32 %286, 0
  %or.cond.i403 = and i1 %tobool.not.i401, %cmp26.i402
  br i1 %or.cond.i403, label %if.then49.for.body.i409_crit_edge, label %if.then49.qcom_qmp_phy_configure_lane.exit423_crit_edge

if.then49.qcom_qmp_phy_configure_lane.exit423_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit423

if.then49.for.body.i409_crit_edge:                ; preds = %if.then49
  br label %for.body.i409

for.body.i409:                                    ; preds = %for.inc.i422.for.body.i409_crit_edge, %if.then49.for.body.i409_crit_edge
  %t.028.i404 = phi ptr [ %incdec.ptr.i420, %for.inc.i422.for.body.i409_crit_edge ], [ %284, %if.then49.for.body.i409_crit_edge ]
  %i.027.i405 = phi i32 [ %inc.i419, %for.inc.i422.for.body.i409_crit_edge ], [ 0, %if.then49.for.body.i409_crit_edge ]
  %lane_mask1.i406 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i404, i32 0, i32 3
  %287 = ptrtoint ptr %lane_mask1.i406 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %lane_mask1.i406, align 1
  %and25.i407 = and i8 %288, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i407)
  %tobool3.not.i408 = icmp eq i8 %and25.i407, 0
  br i1 %tobool3.not.i408, label %for.body.i409.for.inc.i422_crit_edge, label %if.end5.i413

for.body.i409.for.inc.i422_crit_edge:             ; preds = %for.body.i409
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i422

if.end5.i413:                                     ; preds = %for.body.i409
  %in_layout.i410 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i404, i32 0, i32 2
  %289 = ptrtoint ptr %in_layout.i410 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %in_layout.i410, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool6.not.i411 = icmp eq i8 %290, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i412 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i404, i32 0, i32 1
  %291 = ptrtoint ptr %val11.i412 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %val11.i412, align 4
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #11
  %294 = ptrtoint ptr %t.028.i404 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %t.028.i404, align 4
  br i1 %tobool6.not.i411, label %do.body8.i418, label %do.body.i416

do.body.i416:                                     ; preds = %if.end5.i413
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i414 = getelementptr i32, ptr %282, i32 %295
  %296 = ptrtoint ptr %arrayidx.i414 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx.i414, align 4
  %add.ptr.i415 = getelementptr i8, ptr %280, i32 %297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415, i32 %293) #11, !srcloc !610
  br label %for.inc.i422

do.body8.i418:                                    ; preds = %if.end5.i413
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i417 = getelementptr i8, ptr %280, i32 %295
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i417, i32 %293) #11, !srcloc !610
  br label %for.inc.i422

for.inc.i422:                                     ; preds = %do.body8.i418, %do.body.i416, %for.body.i409.for.inc.i422_crit_edge
  %inc.i419 = add nuw nsw i32 %i.027.i405, 1
  %incdec.ptr.i420 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i404, i32 1
  %exitcond.not.i421 = icmp eq i32 %inc.i419, %286
  br i1 %exitcond.not.i421, label %for.inc.i422.qcom_qmp_phy_configure_lane.exit423_crit_edge, label %for.inc.i422.for.body.i409_crit_edge

for.inc.i422.for.body.i409_crit_edge:             ; preds = %for.inc.i422
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i409

for.inc.i422.qcom_qmp_phy_configure_lane.exit423_crit_edge: ; preds = %for.inc.i422
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure_lane.exit423

qcom_qmp_phy_configure_lane.exit423:              ; preds = %for.inc.i422.qcom_qmp_phy_configure_lane.exit423_crit_edge, %if.then49.qcom_qmp_phy_configure_lane.exit423_crit_edge
  %298 = ptrtoint ptr %rx_tbl_sec to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %rx_tbl_sec, align 4
  %tobool54.not = icmp eq ptr %299, null
  br i1 %tobool54.not, label %qcom_qmp_phy_configure_lane.exit423.if.end61_crit_edge, label %if.then55

qcom_qmp_phy_configure_lane.exit423.if.end61_crit_edge: ; preds = %qcom_qmp_phy_configure_lane.exit423
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then55:                                        ; preds = %qcom_qmp_phy_configure_lane.exit423
  %300 = ptrtoint ptr %rx2 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %rx2, align 4
  %302 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regs.i, align 4
  %rx_tbl_num_sec59 = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 13
  %304 = ptrtoint ptr %rx_tbl_num_sec59 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rx_tbl_num_sec59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %cmp26.i425 = icmp sgt i32 %305, 0
  br i1 %cmp26.i425, label %if.then55.for.body.i432_crit_edge, label %if.then55.if.end61_crit_edge

if.then55.if.end61_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then55.for.body.i432_crit_edge:                ; preds = %if.then55
  br label %for.body.i432

for.body.i432:                                    ; preds = %for.inc.i445.for.body.i432_crit_edge, %if.then55.for.body.i432_crit_edge
  %t.028.i427 = phi ptr [ %incdec.ptr.i443, %for.inc.i445.for.body.i432_crit_edge ], [ %299, %if.then55.for.body.i432_crit_edge ]
  %i.027.i428 = phi i32 [ %inc.i442, %for.inc.i445.for.body.i432_crit_edge ], [ 0, %if.then55.for.body.i432_crit_edge ]
  %lane_mask1.i429 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i427, i32 0, i32 3
  %306 = ptrtoint ptr %lane_mask1.i429 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %lane_mask1.i429, align 1
  %and25.i430 = and i8 %307, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and25.i430)
  %tobool3.not.i431 = icmp eq i8 %and25.i430, 0
  br i1 %tobool3.not.i431, label %for.body.i432.for.inc.i445_crit_edge, label %if.end5.i436

for.body.i432.for.inc.i445_crit_edge:             ; preds = %for.body.i432
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i445

if.end5.i436:                                     ; preds = %for.body.i432
  %in_layout.i433 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i427, i32 0, i32 2
  %308 = ptrtoint ptr %in_layout.i433 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %in_layout.i433, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool6.not.i434 = icmp eq i8 %309, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i435 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i427, i32 0, i32 1
  %310 = ptrtoint ptr %val11.i435 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %val11.i435, align 4
  %312 = tail call i32 @llvm.bswap.i32(i32 %311) #11
  %313 = ptrtoint ptr %t.028.i427 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %t.028.i427, align 4
  br i1 %tobool6.not.i434, label %do.body8.i441, label %do.body.i439

do.body.i439:                                     ; preds = %if.end5.i436
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i437 = getelementptr i32, ptr %303, i32 %314
  %315 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx.i437, align 4
  %add.ptr.i438 = getelementptr i8, ptr %301, i32 %316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i438, i32 %312) #11, !srcloc !610
  br label %for.inc.i445

do.body8.i441:                                    ; preds = %if.end5.i436
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i440 = getelementptr i8, ptr %301, i32 %314
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i440, i32 %312) #11, !srcloc !610
  br label %for.inc.i445

for.inc.i445:                                     ; preds = %do.body8.i441, %do.body.i439, %for.body.i432.for.inc.i445_crit_edge
  %inc.i442 = add nuw nsw i32 %i.027.i428, 1
  %incdec.ptr.i443 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i427, i32 1
  %exitcond.not.i444 = icmp eq i32 %inc.i442, %305
  br i1 %exitcond.not.i444, label %for.inc.i445.if.end61_crit_edge, label %for.inc.i445.for.body.i432_crit_edge

for.inc.i445.for.body.i432_crit_edge:             ; preds = %for.inc.i445
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i432

for.inc.i445.if.end61_crit_edge:                  ; preds = %for.inc.i445
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %for.inc.i445.if.end61_crit_edge, %if.then55.if.end61_crit_edge, %qcom_qmp_phy_configure_lane.exit423.if.end61_crit_edge, %if.end46.if.end61_crit_edge
  %317 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %318)
  %cmp63 = icmp eq i32 %318, 6
  br i1 %cmp63, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %configure_dp_phy = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 30
  %319 = ptrtoint ptr %configure_dp_phy to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %configure_dp_phy, align 4
  %call65 = tail call i32 %320(ptr noundef %1) #11
  br label %if.end72

if.else:                                          ; preds = %if.end61
  %321 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i, align 4
  %pcs_tbl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 14
  %323 = ptrtoint ptr %pcs_tbl to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %pcs_tbl, align 4
  %pcs_tbl_num = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 15
  %325 = ptrtoint ptr %pcs_tbl_num to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %pcs_tbl_num, align 4
  %tobool.not.i.i = icmp ne ptr %324, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp26.i.i = icmp sgt i32 %326, 0
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp26.i.i
  br i1 %or.cond.i.i, label %if.else.for.body.i.i_crit_edge, label %if.else.qcom_qmp_phy_configure.exit_crit_edge

if.else.qcom_qmp_phy_configure.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure.exit

if.else.for.body.i.i_crit_edge:                   ; preds = %if.else
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.for.body.i.i_crit_edge
  %t.028.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %324, %if.else.for.body.i.i_crit_edge ]
  %i.027.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.for.body.i.i_crit_edge ]
  %lane_mask1.i.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i, i32 0, i32 3
  %327 = ptrtoint ptr %lane_mask1.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %lane_mask1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool3.not.i.i = icmp eq i8 %328, 0
  br i1 %tobool3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %in_layout.i.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i, i32 0, i32 2
  %329 = ptrtoint ptr %in_layout.i.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %in_layout.i.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %tobool6.not.i.i = icmp eq i8 %330, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i, i32 0, i32 1
  %331 = ptrtoint ptr %val11.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %val11.i.i, align 4
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #11
  %334 = ptrtoint ptr %t.028.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %t.028.i.i, align 4
  br i1 %tobool6.not.i.i, label %do.body8.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr i32, ptr %322, i32 %335
  %336 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i447 = getelementptr i8, ptr %11, i32 %337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i447, i32 %333) #11, !srcloc !610
  br label %for.inc.i.i

do.body8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i = getelementptr i8, ptr %11, i32 %335
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %333) #11, !srcloc !610
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.body8.i.i, %do.body.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %326
  br i1 %exitcond.not.i.i, label %for.inc.i.i.qcom_qmp_phy_configure.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.qcom_qmp_phy_configure.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure.exit

qcom_qmp_phy_configure.exit:                      ; preds = %for.inc.i.i.qcom_qmp_phy_configure.exit_crit_edge, %if.else.qcom_qmp_phy_configure.exit_crit_edge
  %pcs_tbl_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 16
  %338 = ptrtoint ptr %pcs_tbl_sec to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %pcs_tbl_sec, align 4
  %tobool67.not = icmp eq ptr %339, null
  br i1 %tobool67.not, label %qcom_qmp_phy_configure.exit.if.end72_crit_edge, label %if.then68

qcom_qmp_phy_configure.exit.if.end72_crit_edge:   ; preds = %qcom_qmp_phy_configure.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then68:                                        ; preds = %qcom_qmp_phy_configure.exit
  %340 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %regs.i, align 4
  %pcs_tbl_num_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 17
  %342 = ptrtoint ptr %pcs_tbl_num_sec to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %pcs_tbl_num_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %343)
  %cmp26.i.i449 = icmp sgt i32 %343, 0
  br i1 %cmp26.i.i449, label %if.then68.for.body.i.i455_crit_edge, label %if.then68.if.end72_crit_edge

if.then68.if.end72_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then68.for.body.i.i455_crit_edge:              ; preds = %if.then68
  br label %for.body.i.i455

for.body.i.i455:                                  ; preds = %for.inc.i.i468.for.body.i.i455_crit_edge, %if.then68.for.body.i.i455_crit_edge
  %t.028.i.i451 = phi ptr [ %incdec.ptr.i.i466, %for.inc.i.i468.for.body.i.i455_crit_edge ], [ %339, %if.then68.for.body.i.i455_crit_edge ]
  %i.027.i.i452 = phi i32 [ %inc.i.i465, %for.inc.i.i468.for.body.i.i455_crit_edge ], [ 0, %if.then68.for.body.i.i455_crit_edge ]
  %lane_mask1.i.i453 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i451, i32 0, i32 3
  %344 = ptrtoint ptr %lane_mask1.i.i453 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %lane_mask1.i.i453, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %tobool3.not.i.i454 = icmp eq i8 %345, 0
  br i1 %tobool3.not.i.i454, label %for.body.i.i455.for.inc.i.i468_crit_edge, label %if.end5.i.i459

for.body.i.i455.for.inc.i.i468_crit_edge:         ; preds = %for.body.i.i455
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i468

if.end5.i.i459:                                   ; preds = %for.body.i.i455
  %in_layout.i.i456 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i451, i32 0, i32 2
  %346 = ptrtoint ptr %in_layout.i.i456 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %in_layout.i.i456, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool6.not.i.i457 = icmp eq i8 %347, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i458 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i451, i32 0, i32 1
  %348 = ptrtoint ptr %val11.i.i458 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %val11.i.i458, align 4
  %350 = tail call i32 @llvm.bswap.i32(i32 %349) #11
  %351 = ptrtoint ptr %t.028.i.i451 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %t.028.i.i451, align 4
  br i1 %tobool6.not.i.i457, label %do.body8.i.i464, label %do.body.i.i462

do.body.i.i462:                                   ; preds = %if.end5.i.i459
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i460 = getelementptr i32, ptr %341, i32 %352
  %353 = ptrtoint ptr %arrayidx.i.i460 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx.i.i460, align 4
  %add.ptr.i.i461 = getelementptr i8, ptr %11, i32 %354
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i461, i32 %350) #11, !srcloc !610
  br label %for.inc.i.i468

do.body8.i.i464:                                  ; preds = %if.end5.i.i459
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i463 = getelementptr i8, ptr %11, i32 %352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i463, i32 %350) #11, !srcloc !610
  br label %for.inc.i.i468

for.inc.i.i468:                                   ; preds = %do.body8.i.i464, %do.body.i.i462, %for.body.i.i455.for.inc.i.i468_crit_edge
  %inc.i.i465 = add nuw nsw i32 %i.027.i.i452, 1
  %incdec.ptr.i.i466 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i451, i32 1
  %exitcond.not.i.i467 = icmp eq i32 %inc.i.i465, %343
  br i1 %exitcond.not.i.i467, label %for.inc.i.i468.if.end72_crit_edge, label %for.inc.i.i468.for.body.i.i455_crit_edge

for.inc.i.i468.for.body.i.i455_crit_edge:         ; preds = %for.inc.i.i468
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i455

for.inc.i.i468.if.end72_crit_edge:                ; preds = %for.inc.i.i468
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.end72:                                         ; preds = %for.inc.i.i468.if.end72_crit_edge, %if.then68.if.end72_crit_edge, %qcom_qmp_phy_configure.exit.if.end72_crit_edge, %if.then64
  %ufs_reset = getelementptr inbounds %struct.qcom_qmp, ptr %3, i32 0, i32 8
  %355 = ptrtoint ptr %ufs_reset to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %ufs_reset, align 4
  %call73 = tail call i32 @reset_control_deassert(ptr noundef %356) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  %357 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %regs.i, align 4
  %pcs_misc_tbl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 18
  %359 = ptrtoint ptr %pcs_misc_tbl to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %pcs_misc_tbl, align 4
  %pcs_misc_tbl_num = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 19
  %361 = ptrtoint ptr %pcs_misc_tbl_num to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %pcs_misc_tbl_num, align 4
  %tobool.not.i.i470 = icmp ne ptr %360, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %cmp26.i.i471 = icmp sgt i32 %362, 0
  %or.cond.i.i472 = and i1 %tobool.not.i.i470, %cmp26.i.i471
  br i1 %or.cond.i.i472, label %if.end76.for.body.i.i477_crit_edge, label %if.end76.qcom_qmp_phy_configure.exit491_crit_edge

if.end76.qcom_qmp_phy_configure.exit491_crit_edge: ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure.exit491

if.end76.for.body.i.i477_crit_edge:               ; preds = %if.end76
  br label %for.body.i.i477

for.body.i.i477:                                  ; preds = %for.inc.i.i490.for.body.i.i477_crit_edge, %if.end76.for.body.i.i477_crit_edge
  %t.028.i.i473 = phi ptr [ %incdec.ptr.i.i488, %for.inc.i.i490.for.body.i.i477_crit_edge ], [ %360, %if.end76.for.body.i.i477_crit_edge ]
  %i.027.i.i474 = phi i32 [ %inc.i.i487, %for.inc.i.i490.for.body.i.i477_crit_edge ], [ 0, %if.end76.for.body.i.i477_crit_edge ]
  %lane_mask1.i.i475 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i473, i32 0, i32 3
  %363 = ptrtoint ptr %lane_mask1.i.i475 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %lane_mask1.i.i475, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %tobool3.not.i.i476 = icmp eq i8 %364, 0
  br i1 %tobool3.not.i.i476, label %for.body.i.i477.for.inc.i.i490_crit_edge, label %if.end5.i.i481

for.body.i.i477.for.inc.i.i490_crit_edge:         ; preds = %for.body.i.i477
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i490

if.end5.i.i481:                                   ; preds = %for.body.i.i477
  %in_layout.i.i478 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i473, i32 0, i32 2
  %365 = ptrtoint ptr %in_layout.i.i478 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %in_layout.i.i478, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool6.not.i.i479 = icmp eq i8 %366, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i480 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i473, i32 0, i32 1
  %367 = ptrtoint ptr %val11.i.i480 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %val11.i.i480, align 4
  %369 = tail call i32 @llvm.bswap.i32(i32 %368) #11
  %370 = ptrtoint ptr %t.028.i.i473 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %t.028.i.i473, align 4
  br i1 %tobool6.not.i.i479, label %do.body8.i.i486, label %do.body.i.i484

do.body.i.i484:                                   ; preds = %if.end5.i.i481
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i482 = getelementptr i32, ptr %358, i32 %371
  %372 = ptrtoint ptr %arrayidx.i.i482 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx.i.i482, align 4
  %add.ptr.i.i483 = getelementptr i8, ptr %13, i32 %373
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i483, i32 %369) #11, !srcloc !610
  br label %for.inc.i.i490

do.body8.i.i486:                                  ; preds = %if.end5.i.i481
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i485 = getelementptr i8, ptr %13, i32 %371
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i485, i32 %369) #11, !srcloc !610
  br label %for.inc.i.i490

for.inc.i.i490:                                   ; preds = %do.body8.i.i486, %do.body.i.i484, %for.body.i.i477.for.inc.i.i490_crit_edge
  %inc.i.i487 = add nuw nsw i32 %i.027.i.i474, 1
  %incdec.ptr.i.i488 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i473, i32 1
  %exitcond.not.i.i489 = icmp eq i32 %inc.i.i487, %362
  br i1 %exitcond.not.i.i489, label %for.inc.i.i490.qcom_qmp_phy_configure.exit491_crit_edge, label %for.inc.i.i490.for.body.i.i477_crit_edge

for.inc.i.i490.for.body.i.i477_crit_edge:         ; preds = %for.inc.i.i490
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i477

for.inc.i.i490.qcom_qmp_phy_configure.exit491_crit_edge: ; preds = %for.inc.i.i490
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_configure.exit491

qcom_qmp_phy_configure.exit491:                   ; preds = %for.inc.i.i490.qcom_qmp_phy_configure.exit491_crit_edge, %if.end76.qcom_qmp_phy_configure.exit491_crit_edge
  %pcs_misc_tbl_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 20
  %374 = ptrtoint ptr %pcs_misc_tbl_sec to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %pcs_misc_tbl_sec, align 4
  %tobool78.not = icmp eq ptr %375, null
  br i1 %tobool78.not, label %qcom_qmp_phy_configure.exit491.if.end82_crit_edge, label %if.then79

qcom_qmp_phy_configure.exit491.if.end82_crit_edge: ; preds = %qcom_qmp_phy_configure.exit491
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then79:                                        ; preds = %qcom_qmp_phy_configure.exit491
  %376 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %regs.i, align 4
  %pcs_misc_tbl_num_sec = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 21
  %378 = ptrtoint ptr %pcs_misc_tbl_num_sec to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %pcs_misc_tbl_num_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %cmp26.i.i493 = icmp sgt i32 %379, 0
  br i1 %cmp26.i.i493, label %if.then79.for.body.i.i499_crit_edge, label %if.then79.if.end82_crit_edge

if.then79.if.end82_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then79.for.body.i.i499_crit_edge:              ; preds = %if.then79
  br label %for.body.i.i499

for.body.i.i499:                                  ; preds = %for.inc.i.i512.for.body.i.i499_crit_edge, %if.then79.for.body.i.i499_crit_edge
  %t.028.i.i495 = phi ptr [ %incdec.ptr.i.i510, %for.inc.i.i512.for.body.i.i499_crit_edge ], [ %375, %if.then79.for.body.i.i499_crit_edge ]
  %i.027.i.i496 = phi i32 [ %inc.i.i509, %for.inc.i.i512.for.body.i.i499_crit_edge ], [ 0, %if.then79.for.body.i.i499_crit_edge ]
  %lane_mask1.i.i497 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i495, i32 0, i32 3
  %380 = ptrtoint ptr %lane_mask1.i.i497 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %lane_mask1.i.i497, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %tobool3.not.i.i498 = icmp eq i8 %381, 0
  br i1 %tobool3.not.i.i498, label %for.body.i.i499.for.inc.i.i512_crit_edge, label %if.end5.i.i503

for.body.i.i499.for.inc.i.i512_crit_edge:         ; preds = %for.body.i.i499
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i512

if.end5.i.i503:                                   ; preds = %for.body.i.i499
  %in_layout.i.i500 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i495, i32 0, i32 2
  %382 = ptrtoint ptr %in_layout.i.i500 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %in_layout.i.i500, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool6.not.i.i501 = icmp eq i8 %383, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %val11.i.i502 = getelementptr inbounds %struct.qmp_phy_init_tbl, ptr %t.028.i.i495, i32 0, i32 1
  %384 = ptrtoint ptr %val11.i.i502 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %val11.i.i502, align 4
  %386 = tail call i32 @llvm.bswap.i32(i32 %385) #11
  %387 = ptrtoint ptr %t.028.i.i495 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %t.028.i.i495, align 4
  br i1 %tobool6.not.i.i501, label %do.body8.i.i508, label %do.body.i.i506

do.body.i.i506:                                   ; preds = %if.end5.i.i503
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i504 = getelementptr i32, ptr %377, i32 %388
  %389 = ptrtoint ptr %arrayidx.i.i504 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx.i.i504, align 4
  %add.ptr.i.i505 = getelementptr i8, ptr %13, i32 %390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i505, i32 %386) #11, !srcloc !610
  br label %for.inc.i.i512

do.body8.i.i508:                                  ; preds = %if.end5.i.i503
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr13.i.i507 = getelementptr i8, ptr %13, i32 %388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i507, i32 %386) #11, !srcloc !610
  br label %for.inc.i.i512

for.inc.i.i512:                                   ; preds = %do.body8.i.i508, %do.body.i.i506, %for.body.i.i499.for.inc.i.i512_crit_edge
  %inc.i.i509 = add nuw nsw i32 %i.027.i.i496, 1
  %incdec.ptr.i.i510 = getelementptr %struct.qmp_phy_init_tbl, ptr %t.028.i.i495, i32 1
  %exitcond.not.i.i511 = icmp eq i32 %inc.i.i509, %379
  br i1 %exitcond.not.i.i511, label %for.inc.i.i512.if.end82_crit_edge, label %for.inc.i.i512.for.body.i.i499_crit_edge

for.inc.i.i512.for.body.i.i499_crit_edge:         ; preds = %for.inc.i.i512
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i499

for.inc.i.i512.if.end82_crit_edge:                ; preds = %for.inc.i.i512
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.end82:                                         ; preds = %for.inc.i.i512.if.end82_crit_edge, %if.then79.if.end82_crit_edge, %qcom_qmp_phy_configure.exit491.if.end82_crit_edge
  %391 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %392)
  %cmp84 = icmp eq i32 %392, 2
  br i1 %cmp84, label %if.then85, label %if.end82.if.end86_crit_edge

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %pwrdn_ctrl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 42
  %393 = ptrtoint ptr %pwrdn_ctrl to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %pwrdn_ctrl, align 4
  %add.ptr.i514 = getelementptr i8, ptr %11, i32 4
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #11, !srcloc !621
  %396 = tail call i32 @llvm.bswap.i32(i32 %395) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %or.i = or i32 %396, %394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  %397 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i514, i32 %397) #11, !srcloc !610
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end82.if.end86_crit_edge
  %has_pwrdn_delay = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 47
  %399 = ptrtoint ptr %has_pwrdn_delay to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %has_pwrdn_delay, align 2, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %400)
  %tobool87.not = icmp eq i8 %400, 0
  br i1 %tobool87.not, label %if.end86.if.end89_crit_edge, label %if.then88

if.end86.if.end89_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %pwrdn_delay_min = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 48
  %401 = ptrtoint ptr %pwrdn_delay_min to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %pwrdn_delay_min, align 4
  %pwrdn_delay_max = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 49
  %403 = ptrtoint ptr %pwrdn_delay_max to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %pwrdn_delay_max, align 4
  tail call void @usleep_range_state(i32 noundef %402, i32 noundef %404, i32 noundef 2) #11
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end86.if.end89_crit_edge
  %405 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %406)
  %cmp91.not = icmp eq i32 %406, 6
  br i1 %cmp91.not, label %if.end89.cleanup_crit_edge, label %if.then92

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then92:                                        ; preds = %if.end89
  %no_pcs_sw_reset = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 52
  %407 = ptrtoint ptr %no_pcs_sw_reset to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %no_pcs_sw_reset, align 2, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %408)
  %tobool93.not = icmp eq i8 %408, 0
  br i1 %tobool93.not, label %if.then94, label %if.then92.if.end96_crit_edge

if.then92.if.end96_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then94:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %409 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %regs.i, align 4
  %arrayidx = getelementptr i32, ptr %410, i32 10
  %411 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx, align 4
  %add.ptr.i515 = getelementptr i8, ptr %11, i32 %412
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i515) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %414 = and i32 %413, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i515, i32 %414) #11, !srcloc !610
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i515) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.then92.if.end96_crit_edge
  %416 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %regs.i, align 4
  %arrayidx98 = getelementptr i32, ptr %417, i32 11
  %418 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx98, align 4
  %start_ctrl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 41
  %420 = ptrtoint ptr %start_ctrl to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %start_ctrl, align 4
  %add.ptr.i517 = getelementptr i8, ptr %11, i32 %419
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i517) #11, !srcloc !621
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %or.i518 = or i32 %423, %421
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  %424 = tail call i32 @llvm.bswap.i32(i32 %or.i518) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i517, i32 %424) #11, !srcloc !610
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i517) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %426 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %427)
  %cmp100 = icmp eq i32 %427, 5
  %428 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %regs.i, align 4
  br i1 %cmp100, label %if.then101, label %if.else104

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx103 = getelementptr i32, ptr %429, i32 12
  br label %if.end108

if.else104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx106 = getelementptr i32, ptr %429, i32 13
  %phy_status = getelementptr inbounds %struct.qmp_phy_cfg, ptr %5, i32 0, i32 44
  %430 = ptrtoint ptr %phy_status to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %phy_status, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %if.then101
  %mask.0 = phi i32 [ 1, %if.then101 ], [ %431, %if.else104 ]
  %ready.0 = phi i32 [ 1, %if.then101 ], [ 0, %if.else104 ]
  %.pn.in = phi ptr [ %arrayidx103, %if.then101 ], [ %arrayidx106, %if.else104 ]
  %432 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %432)
  %.pn = load i32, ptr %.pn.in, align 4
  %status.0 = getelementptr i8, ptr %11, i32 %.pn
  %call109 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call109, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 5285) #11
  %433 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.0) #11, !srcloc !621
  %434 = tail call i32 @llvm.bswap.i32(i32 %433)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !718
  %and529 = and i32 %434, %mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and529, i32 %ready.0)
  %cmp125530 = icmp eq i32 %and529, %ready.0
  br i1 %cmp125530, label %if.end108.for.end_crit_edge, label %if.end108.land.lhs.true_crit_edge

if.end108.land.lhs.true_crit_edge:                ; preds = %if.end108
  br label %land.lhs.true

if.end108.for.end_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %if.then140.land.lhs.true_crit_edge, %if.end108.land.lhs.true_crit_edge
  %call129 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call129, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call129, %add.i
  br i1 %cmp3.i, label %if.then132, label %if.then140

if.then132:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.0) #11, !srcloc !621
  %436 = tail call i32 @llvm.bswap.i32(i32 %435)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !719
  %.pre = and i32 %436, %mask.0
  br label %for.end

if.then140:                                       ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.0) #11, !srcloc !621
  %438 = tail call i32 @llvm.bswap.i32(i32 %437)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !718
  %and = and i32 %438, %mask.0
  %cmp125 = icmp eq i32 %and, %ready.0
  br i1 %cmp125, label %if.then140.for.end_crit_edge, label %if.then140.land.lhs.true_crit_edge

if.then140.land.lhs.true_crit_edge:               ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then140.for.end_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.then140.for.end_crit_edge, %if.then132, %if.end108.for.end_crit_edge
  %and143.pre-phi = phi i32 [ %and529, %if.end108.for.end_crit_edge ], [ %.pre, %if.then132 ], [ %and, %if.then140.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and143.pre-phi, i32 %ready.0)
  %cmp144 = icmp eq i32 %and143.pre-phi, %ready.0
  br i1 %cmp144, label %for.end.cleanup_crit_edge, label %do.end149

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end149:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %439 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %440, ptr noundef nonnull @.str.64) #14
  %441 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %442) #11
  tail call void @clk_unprepare(ptr noundef %442) #11
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %do.end149, %do.end17
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end17 ], [ -110, %do.end149 ]
  %443 = ptrtoint ptr %has_lane_rst to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %has_lane_rst, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %tobool155.not = icmp eq i8 %444, 0
  br i1 %tobool155.not, label %err_clk_enable.cleanup_crit_edge, label %if.then156

err_clk_enable.cleanup_crit_edge:                 ; preds = %err_clk_enable
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then156:                                       ; preds = %err_clk_enable
  call void @__sanitizer_cov_trace_pc() #13
  %lane_rst157 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 12
  %445 = ptrtoint ptr %lane_rst157 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %lane_rst157, align 4
  %call158 = tail call i32 @reset_control_assert(ptr noundef %446) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then156, %err_clk_enable.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ], [ %call8, %do.end ], [ %ret.0, %if.then156 ], [ %ret.0, %err_clk_enable.cleanup_crit_edge ], [ %call73, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %has_lane_rst = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %has_lane_rst to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_lane_rst, align 1, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lane_rst = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %lane_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lane_rst, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qmp1.i = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %qmp1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qmp1.i, align 4
  %10 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg1, align 4
  %serdes3.i = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %serdes3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serdes3.i, align 4
  %num_resets.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %11, i32 0, i32 37
  %14 = ptrtoint ptr %num_resets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_resets.i, align 4
  %phy_mutex.i = getelementptr inbounds %struct.qcom_qmp, ptr %9, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #11
  %init_count.i = getelementptr inbounds %struct.qcom_qmp, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %init_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %init_count.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %init_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.qcom_qmp_phy_com_exit.exit_crit_edge

if.end.qcom_qmp_phy_com_exit.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_com_exit.exit

if.end.i:                                         ; preds = %if.end
  %ufs_reset.i = getelementptr inbounds %struct.qcom_qmp, ptr %9, i32 0, i32 8
  %18 = ptrtoint ptr %ufs_reset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ufs_reset.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %19) #11
  %has_phy_com_ctrl.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %11, i32 0, i32 45
  %20 = ptrtoint ptr %has_phy_com_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_phy_com_ctrl.i, align 4, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not.i = icmp eq i8 %21, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %regs.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %11, i32 0, i32 40
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %27 = or i32 %26, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #11, !srcloc !610
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %13, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %34 = and i32 %33, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 %34) #11, !srcloc !610
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %13, i32 %39
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %41 = or i32 %40, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %41) #11, !srcloc !610
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %dec124.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec124.i)
  %cmp5.i = icmp sgt i32 %dec124.i, -1
  br i1 %cmp5.i, label %while.body.lr.ph.i, label %if.end11.i.while.end.i_crit_edge

if.end11.i.while.end.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end11.i
  %resets.i = getelementptr inbounds %struct.qcom_qmp, ptr %9, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec126.i = phi i32 [ %dec124.i, %while.body.lr.ph.i ], [ %dec12.i, %while.body.i.while.body.i_crit_edge ]
  %43 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resets.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %44, i32 %dec126.i
  %45 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx13.i, align 4
  %call14.i = tail call i32 @reset_control_assert(ptr noundef %46) #11
  %dec12.i = add nsw i32 %dec126.i, -1
  %cmp.i.not = icmp eq i32 %dec126.i, 0
  br i1 %cmp.i.not, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end11.i.while.end.i_crit_edge
  %num_clks.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %11, i32 0, i32 35
  %47 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_clks.i, align 4
  %clks.i = getelementptr inbounds %struct.qcom_qmp, ptr %9, i32 0, i32 2
  %49 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clks.i, align 4
  tail call void @clk_bulk_disable(i32 noundef %48, ptr noundef %50) #11
  tail call void @clk_bulk_unprepare(i32 noundef %48, ptr noundef %50) #11
  %num_vregs.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %11, i32 0, i32 39
  %51 = ptrtoint ptr %num_vregs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_vregs.i, align 4
  %vregs.i = getelementptr inbounds %struct.qcom_qmp, ptr %9, i32 0, i32 4
  %53 = ptrtoint ptr %vregs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vregs.i, align 4
  %call15.i = tail call i32 @regulator_bulk_disable(i32 noundef %52, ptr noundef %54) #11
  br label %qcom_qmp_phy_com_exit.exit

qcom_qmp_phy_com_exit.exit:                       ; preds = %while.end.i, %if.end.qcom_qmp_phy_com_exit.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %phy_mutex.i) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qphy_setbits(ptr noundef %base, i32 noundef %offset, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %base, i32 %offset
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !621
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %or = or i32 %1, %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !610
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %pipe_clk = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp eq i32 %7, 6
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !720
  tail call void @arm_heavy_mb() #11
  %pcs = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #11, !srcloc !610
  br label %if.end18

if.else:                                          ; preds = %entry
  %no_pcs_sw_reset = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 52
  %10 = ptrtoint ptr %no_pcs_sw_reset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %no_pcs_sw_reset, align 2, !range !607
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then2, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %pcs3 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %pcs3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs3, align 4
  %regs = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 40
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #11, !srcloc !610
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else.if.end_crit_edge
  %pcs4 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %pcs4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcs4, align 4
  %regs5 = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 40
  %23 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs5, align 4
  %arrayidx6 = getelementptr i32, ptr %24, i32 11
  %25 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6, align 4
  %start_ctrl = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 41
  %27 = ptrtoint ptr %start_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start_ctrl, align 4
  %add.ptr.i33 = getelementptr i8, ptr %22, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #11, !srcloc !621
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %neg.i = xor i32 %28, -1
  %and.i = and i32 %30, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %31) #11, !srcloc !610
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %33 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs5, align 4
  %arrayidx8 = getelementptr i32, ptr %34, i32 17
  %35 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %pcs4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcs4, align 4
  %pwrdn_ctrl16 = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 42
  %39 = ptrtoint ptr %pwrdn_ctrl16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pwrdn_ctrl16, align 4
  br i1 %tobool9.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i34 = getelementptr i8, ptr %38, i32 %36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #11, !srcloc !621
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %neg.i35 = xor i32 %40, -1
  %and.i36 = and i32 %42, %neg.i35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %and.i36) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %43) #11, !srcloc !610
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  br label %if.end18

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i37 = getelementptr i8, ptr %38, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #11, !srcloc !621
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %neg.i38 = xor i32 %40, -1
  %and.i39 = and i32 %46, %neg.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  %47 = tail call i32 @llvm.bswap.i32(i32 %and.i39) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %47) #11, !srcloc !610
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then10, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_dp_phy_configure(ptr nocapture noundef readonly %phy, ptr nocapture noundef readonly %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %dp_opts2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 15
  %4 = call ptr @memcpy(ptr %dp_opts2, ptr %opts, i32 44)
  %set_voltages = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 15, i32 4
  %5 = ptrtoint ptr %set_voltages to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %set_voltages, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %configure_dp_tx = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 31
  %7 = ptrtoint ptr %configure_dp_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %configure_dp_tx, align 4
  tail call void %8(ptr noundef %1) #11
  %9 = ptrtoint ptr %set_voltages to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load6 = load i8, ptr %set_voltages, align 4
  %bf.clear7 = and i8 %bf.load6, -17
  store i8 %bf.clear7, ptr %set_voltages, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_dp_phy_calibrate(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg1 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 4
  %calibrate_dp_phy = getelementptr inbounds %struct.qmp_phy_cfg, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %calibrate_dp_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %calibrate_dp_phy, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 %5(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_clk_release_provider(ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_clk_del_provider(ptr noundef %res) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qcom_qmp_dp_clks_hw_get(ptr nocapture noundef readonly %clkspec, ptr noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef %1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dp_link_hw = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %data, i32 0, i32 1
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dp_pixel_hw = getelementptr inbounds %struct.qmp_phy_dp_clks, ptr %data, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %dp_link_hw, %if.then3 ], [ %dp_pixel_hw, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_qmp_dp_link_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dp_opts2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dp_opts2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_opts2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1620, label %entry.sw.bb_crit_edge
    i32 2700, label %entry.sw.bb_crit_edge7
    i32 5400, label %entry.sw.bb_crit_edge8
    i32 8100, label %entry.sw.bb_crit_edge9
  ]

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %mul = mul nuw nsw i32 %3, 100000
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_qmp_dp_link_clk_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %req) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %1, label %sw.default [
    i32 162000000, label %entry.return_crit_edge
    i32 270000000, label %entry.return_crit_edge1
    i32 540000000, label %entry.return_crit_edge2
    i32 810000000, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge1 ], [ 0, %entry.return_crit_edge2 ], [ 0, %entry.return_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_qmp_dp_pixel_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dp_opts2 = getelementptr inbounds %struct.qmp_phy, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dp_opts2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_opts2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %sw.default [
    i32 1620, label %entry.cleanup_crit_edge
    i32 2700, label %sw.bb3
    i32 5400, label %sw.bb4
    i32 8100, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1350000000, %sw.bb5 ], [ 1350000000, %sw.bb4 ], [ 1350000000, %sw.bb3 ], [ 810000000, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qcom_qmp_dp_pixel_clk_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %req) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 810000000, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 810000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350000000, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 1350000000
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phys = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cfg1 = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.not = icmp eq i32 %9, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_count = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pcs2.i = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %pcs2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcs2.i, align 4
  %pcs_misc3.i = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %pcs_misc3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcs_misc3.i, align 4
  %mode.i = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 13
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %switch.selectcmp.case1.i = icmp eq i32 %17, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %switch.selectcmp.case2.i = icmp eq i32 %17, 10
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %18 = select i1 %switch.selectcmp.i, i32 3, i32 17
  %regs.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %7, i32 0, i32 40
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %20, i32 15
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %24 = or i32 %23, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #11, !srcloc !610
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %27, i32 15
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %13, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %31 = and i32 %30, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %31) #11, !srcloc !610
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %34, i32 14
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %13, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %38 = and i32 %37, -318767105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %38) #11, !srcloc !610
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %41, i32 14
  %42 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx11.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %13, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #11, !srcloc !621
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %or.i30.i = or i32 %45, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i30.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %46) #11, !srcloc !610
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end3.qcom_qmp_phy_enable_autonomous_mode.exit_crit_edge, label %if.then12.i

if.end3.qcom_qmp_phy_enable_autonomous_mode.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_enable_autonomous_mode.exit

if.then12.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i31.i = getelementptr i8, ptr %15, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %49) #11, !srcloc !610
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  br label %qcom_qmp_phy_enable_autonomous_mode.exit

qcom_qmp_phy_enable_autonomous_mode.exit:         ; preds = %if.then12.i, %if.end3.qcom_qmp_phy_enable_autonomous_mode.exit_crit_edge
  %pipe_clk = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 9
  %51 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %52) #11
  tail call void @clk_unprepare(ptr noundef %52) #11
  %num_clks = getelementptr inbounds %struct.qmp_phy_cfg, ptr %7, i32 0, i32 35
  %53 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %54, ptr noundef %56) #11
  tail call void @clk_bulk_unprepare(i32 noundef %54, ptr noundef %56) #11
  br label %cleanup

cleanup:                                          ; preds = %qcom_qmp_phy_enable_autonomous_mode.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_qmp_phy_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phys = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cfg1 = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.not = icmp eq i32 %9, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_count = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %init_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_clks = getelementptr inbounds %struct.qmp_phy_cfg, ptr %7, i32 0, i32 35
  %12 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.qcom_qmp, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %13, ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %13, ptr noundef %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_bulk_unprepare(i32 noundef %13, ptr noundef %15) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %pipe_clk = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe_clk, align 4
  %call.i29 = tail call i32 @clk_prepare(ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i33:                                       ; preds = %if.end7
  %call1.i31 = tail call i32 @clk_enable(ptr noundef %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool2.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool2.not.i32, label %if.end13, label %if.then3.i34

if.then3.i34:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %17) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i34, %if.end7.do.end_crit_edge
  %retval.0.i35.ph = phi i32 [ %call1.i31, %if.then3.i34 ], [ %call.i29, %if.end7.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %retval.0.i35.ph) #14
  %18 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_clks, align 4
  %20 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %19, ptr noundef %21) #11
  tail call void @clk_bulk_unprepare(i32 noundef %19, ptr noundef %21) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end.i33
  %22 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg1, align 4
  %pcs2.i = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 5
  %24 = ptrtoint ptr %pcs2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcs2.i, align 4
  %pcs_misc3.i = getelementptr inbounds %struct.qmp_phy, ptr %5, i32 0, i32 8
  %26 = ptrtoint ptr %pcs_misc3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcs_misc3.i, align 4
  %tobool.not.i36 = icmp eq ptr %27, null
  br i1 %tobool.not.i36, label %if.end13.qcom_qmp_phy_disable_autonomous_mode.exit_crit_edge, label %if.then.i

if.end13.qcom_qmp_phy_disable_autonomous_mode.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %qcom_qmp_phy_disable_autonomous_mode.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #11, !srcloc !610
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  br label %qcom_qmp_phy_disable_autonomous_mode.exit

qcom_qmp_phy_disable_autonomous_mode.exit:        ; preds = %if.then.i, %if.end13.qcom_qmp_phy_disable_autonomous_mode.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.qmp_phy_cfg, ptr %23, i32 0, i32 40
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %32, i32 14
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %25, i32 %34
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %36 = and i32 %35, -318767105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %36) #11, !srcloc !610
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %39, i32 15
  %40 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %25, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !710
  %43 = or i32 %42, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !711
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %43) #11, !srcloc !610
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !712
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %46, i32 15
  %47 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx7.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %25, i32 %48
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !713
  %50 = and i32 %49, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !714
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %50) #11, !srcloc !610
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #11, !srcloc !621
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !715
  br label %cleanup

cleanup:                                          ; preds = %qcom_qmp_phy_disable_autonomous_mode.exit, %do.end, %if.then3.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i35.ph, %do.end ], [ 0, %qcom_qmp_phy_disable_autonomous_mode.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 303)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 303)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !169, !171, !173, !174, !175, !177, !179, !180, !181, !183, !184, !185, !187, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !229, !231, !233, !234, !235, !236, !238, !240, !242, !244, !246, !247, !248, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !596, !597}
!llvm.module.flags = !{!598, !599, !600, !601, !602, !603, !604, !605}
!llvm.ident = !{!606}

!0 = !{ptr @__initcall__kmod_phy_qcom_qmp__293_6255_qcom_qmp_phy_driver_init6, !1, !"__initcall__kmod_phy_qcom_qmp__293_6255_qcom_qmp_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6255, i32 1}
!2 = !{ptr @__exitcall_qcom_qmp_phy_driver_exit, !1, !"__exitcall_qcom_qmp_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6257, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6258, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6259, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6249, i32 11}
!12 = !{ptr @qcom_qmp_phy_driver, !13, !"qcom_qmp_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6246, i32 31}
!14 = !{ptr @qcom_qmp_phy_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6157, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6170, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qcom_qmp_phy_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @qcom_qmp_phy_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6194, i32 30}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6197, i32 37}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6205, i32 4}
!31 = !{ptr @qcom_qmp_phy_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qcom_qmp_phy_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6217, i32 5}
!35 = !{ptr @qcom_qmp_phy_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qcom_qmp_phy_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6224, i32 5}
!39 = !{ptr @qcom_qmp_phy_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qcom_qmp_phy_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6234, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qcom_qmp_phy_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @qcom_qmp_phy_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @qcom_qmp_combo_phy_of_match_table, !47, !"qcom_qmp_combo_phy_of_match_table", i1 false, i1 false}
!47 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6072, i32 34}
!48 = !{ptr @sc7180_usb3dpphy_cfg, !49, !"sc7180_usb3dpphy_cfg", i1 false, i1 false}
!49 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3764, i32 39}
!50 = !{ptr @sc7180_usb3phy_cfg, !51, !"sc7180_usb3phy_cfg", i1 false, i1 false}
!51 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3697, i32 33}
!52 = !{ptr @qmp_v3_usb3_serdes_tbl, !53, !"qmp_v3_usb3_serdes_tbl", i1 false, i1 false}
!53 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1050, i32 38}
!54 = !{ptr @qmp_v3_usb3_tx_tbl, !55, !"qmp_v3_usb3_tx_tbl", i1 false, i1 false}
!55 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1089, i32 38}
!56 = !{ptr @qmp_v3_usb3_rx_tbl, !57, !"qmp_v3_usb3_rx_tbl", i1 false, i1 false}
!57 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1179, i32 38}
!58 = !{ptr @qmp_v3_usb3_pcs_tbl, !59, !"qmp_v3_usb3_pcs_tbl", i1 false, i1 false}
!59 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1191, i32 38}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3290, i32 2}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3290, i32 9}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3290, i32 20}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3290, i32 27}
!68 = !{ptr @qmp_v3_phy_clk_l, !69, !"qmp_v3_phy_clk_l", i1 false, i1 false}
!69 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3289, i32 27}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3333, i32 2}
!72 = !{ptr @sc7180_usb3phy_reset_l, !73, !"sc7180_usb3phy_reset_l", i1 false, i1 false}
!73 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3332, i32 27}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3346, i32 2}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3346, i32 14}
!78 = !{ptr @qmp_phy_vreg_l, !79, !"qmp_phy_vreg_l", i1 false, i1 false}
!79 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3345, i32 27}
!80 = !{ptr @qmp_v3_usb3phy_regs_layout, !81, !"qmp_v3_usb3phy_regs_layout", i1 false, i1 false}
!81 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 186, i32 27}
!82 = !{ptr @sc7180_dpphy_cfg, !83, !"sc7180_dpphy_cfg", i1 false, i1 false}
!83 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3729, i32 33}
!84 = !{ptr @qmp_v3_dp_serdes_tbl, !85, !"qmp_v3_dp_serdes_tbl", i1 false, i1 false}
!85 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1097, i32 38}
!86 = !{ptr @qmp_v3_dp_tx_tbl, !87, !"qmp_v3_dp_tx_tbl", i1 false, i1 false}
!87 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1161, i32 38}
!88 = !{ptr @qmp_v3_dp_serdes_tbl_rbr, !89, !"qmp_v3_dp_serdes_tbl_rbr", i1 false, i1 false}
!89 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1121, i32 38}
!90 = !{ptr @qmp_v3_dp_serdes_tbl_hbr, !91, !"qmp_v3_dp_serdes_tbl_hbr", i1 false, i1 false}
!91 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1131, i32 38}
!92 = !{ptr @qmp_v3_dp_serdes_tbl_hbr2, !93, !"qmp_v3_dp_serdes_tbl_hbr2", i1 false, i1 false}
!93 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1141, i32 38}
!94 = !{ptr @qmp_v3_dp_serdes_tbl_hbr3, !95, !"qmp_v3_dp_serdes_tbl_hbr3", i1 false, i1 false}
!95 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1151, i32 38}
!96 = !{ptr @qmp_dp_v3_voltage_swing_hbr_rbr, !97, !"qmp_dp_v3_voltage_swing_hbr_rbr", i1 false, i1 false}
!97 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4583, i32 17}
!98 = !{ptr @qmp_dp_v3_pre_emphasis_hbr_rbr, !99, !"qmp_dp_v3_pre_emphasis_hbr_rbr", i1 false, i1 false}
!99 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4576, i32 17}
!100 = !{ptr @qmp_dp_v3_voltage_swing_hbr3_hbr2, !101, !"qmp_dp_v3_voltage_swing_hbr3_hbr2", i1 false, i1 false}
!101 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4569, i32 17}
!102 = !{ptr @qmp_dp_v3_pre_emphasis_hbr3_hbr2, !103, !"qmp_dp_v3_pre_emphasis_hbr3_hbr2", i1 false, i1 false}
!103 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4562, i32 17}
!104 = !{ptr @qcom_qmp_v3_dp_phy_calibrate.cfg1_settings, !105, !"cfg1_settings", i1 false, i1 false}
!105 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4760, i32 18}
!106 = !{ptr @sm8250_usb3dpphy_cfg, !107, !"sm8250_usb3dpphy_cfg", i1 false, i1 false}
!107 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4154, i32 39}
!108 = !{ptr @sm8250_usb3phy_cfg, !109, !"sm8250_usb3phy_cfg", i1 false, i1 false}
!109 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4058, i32 33}
!110 = !{ptr @sm8150_usb3_serdes_tbl, !111, !"sm8150_usb3_serdes_tbl", i1 false, i1 false}
!111 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1714, i32 38}
!112 = !{ptr @sm8250_usb3_tx_tbl, !113, !"sm8250_usb3_tx_tbl", i1 false, i1 false}
!113 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1930, i32 38}
!114 = !{ptr @sm8250_usb3_rx_tbl, !115, !"sm8250_usb3_rx_tbl", i1 false, i1 false}
!115 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1941, i32 38}
!116 = !{ptr @sm8250_usb3_pcs_tbl, !117, !"sm8250_usb3_pcs_tbl", i1 false, i1 false}
!117 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1982, i32 38}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3303, i32 9}
!120 = !{ptr @qmp_v4_sm8250_usbphy_clk_l, !121, !"qmp_v4_sm8250_usbphy_clk_l", i1 false, i1 false}
!121 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3302, i32 27}
!122 = !{ptr @.str.30, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3329, i32 9}
!124 = !{ptr @msm8996_usb3phy_reset_l, !125, !"msm8996_usb3phy_reset_l", i1 false, i1 false}
!125 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3328, i32 27}
!126 = !{ptr @qmp_v4_usb3phy_regs_layout, !127, !"qmp_v4_usb3phy_regs_layout", i1 false, i1 false}
!127 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 207, i32 27}
!128 = !{ptr @sm8250_dpphy_cfg, !129, !"sm8250_dpphy_cfg", i1 false, i1 false}
!129 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4119, i32 33}
!130 = !{ptr @qmp_v4_dp_serdes_tbl, !131, !"qmp_v4_dp_serdes_tbl", i1 false, i1 false}
!131 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2066, i32 38}
!132 = !{ptr @qmp_v4_dp_tx_tbl, !133, !"qmp_v4_dp_tx_tbl", i1 false, i1 false}
!133 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2129, i32 38}
!134 = !{ptr @qmp_v4_dp_serdes_tbl_rbr, !135, !"qmp_v4_dp_serdes_tbl_rbr", i1 false, i1 false}
!135 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2089, i32 38}
!136 = !{ptr @qmp_v4_dp_serdes_tbl_hbr, !137, !"qmp_v4_dp_serdes_tbl_hbr", i1 false, i1 false}
!137 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2099, i32 38}
!138 = !{ptr @qmp_v4_dp_serdes_tbl_hbr2, !139, !"qmp_v4_dp_serdes_tbl_hbr2", i1 false, i1 false}
!139 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2109, i32 38}
!140 = !{ptr @qmp_v4_dp_serdes_tbl_hbr3, !141, !"qmp_v4_dp_serdes_tbl_hbr3", i1 false, i1 false}
!141 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2119, i32 38}
!142 = !{ptr @qcom_qmp_v4_dp_phy_calibrate.cfg1_settings, !143, !"cfg1_settings", i1 false, i1 false}
!143 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4958, i32 18}
!144 = !{ptr @qmp_v4_phy_clk_l, !145, !"qmp_v4_phy_clk_l", i1 false, i1 false}
!145 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3297, i32 27}
!146 = !{ptr @sc8180x_usb3dpphy_cfg, !147, !"sc8180x_usb3dpphy_cfg", i1 false, i1 false}
!147 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4024, i32 39}
!148 = !{ptr @sm8150_usb3phy_cfg, !149, !"sm8150_usb3phy_cfg", i1 false, i1 false}
!149 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3926, i32 33}
!150 = !{ptr @sm8150_usb3_tx_tbl, !151, !"sm8150_usb3_tx_tbl", i1 false, i1 false}
!151 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1757, i32 38}
!152 = !{ptr @sm8150_usb3_rx_tbl, !153, !"sm8150_usb3_rx_tbl", i1 false, i1 false}
!153 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1765, i32 38}
!154 = !{ptr @sm8150_usb3_pcs_tbl, !155, !"sm8150_usb3_pcs_tbl", i1 false, i1 false}
!155 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1804, i32 38}
!156 = !{ptr @sc8180x_dpphy_cfg, !157, !"sc8180x_dpphy_cfg", i1 false, i1 false}
!157 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3989, i32 33}
!158 = !{ptr @.str.31, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5519, i32 4}
!160 = !{ptr @.str.32, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @qcom_qmp_phy_reset_init._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @qcom_qmp_phy_reset_init._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.33, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5866, i32 4}
!165 = !{ptr @.str.34, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.35, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @qcom_qmp_phy_create._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @qcom_qmp_phy_create._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.36, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5892, i32 41}
!171 = !{ptr @.str.38, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5899, i32 5}
!173 = !{ptr @qcom_qmp_phy_create._entry.37, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @qcom_qmp_phy_create._entry_ptr.39, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.40, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5909, i32 42}
!177 = !{ptr @.str.42, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5912, i32 4}
!179 = !{ptr @qcom_qmp_phy_create._entry.41, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @qcom_qmp_phy_create._entry_ptr.43, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.45, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5927, i32 3}
!183 = !{ptr @qcom_qmp_phy_create._entry.44, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @qcom_qmp_phy_create._entry_ptr.46, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @qcom_qmp_pcie_ufs_ops, !186, !"qcom_qmp_pcie_ufs_ops", i1 false, i1 false}
!186 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5814, i32 29}
!187 = !{ptr @.str.47, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5143, i32 10}
!189 = !{ptr @.str.48, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5147, i32 5}
!191 = !{ptr @.str.49, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @qcom_qmp_phy_init._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @qcom_qmp_phy_init._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.50, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5014, i32 3}
!196 = !{ptr @.str.51, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @qcom_qmp_phy_com_init._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @qcom_qmp_phy_com_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.53, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5021, i32 4}
!201 = !{ptr @qcom_qmp_phy_com_init._entry.52, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qcom_qmp_phy_com_init._entry_ptr.54, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.56, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5030, i32 4}
!205 = !{ptr @qcom_qmp_phy_com_init._entry.55, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @qcom_qmp_phy_com_init._entry_ptr.57, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.58, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5189, i32 4}
!209 = !{ptr @.str.59, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @qcom_qmp_phy_power_on._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @qcom_qmp_phy_power_on._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.61, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5197, i32 3}
!214 = !{ptr @qcom_qmp_phy_power_on._entry.60, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @qcom_qmp_phy_power_on._entry_ptr.62, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.64, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5287, i32 4}
!218 = !{ptr @qcom_qmp_phy_power_on._entry.63, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @qcom_qmp_phy_power_on._entry_ptr.65, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.66, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4510, i32 4}
!222 = !{ptr @.str.67, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @qcom_qmp_phy_serdes_init._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @qcom_qmp_phy_serdes_init._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @qcom_qmp_phy_dp_ops, !226, !"qcom_qmp_phy_dp_ops", i1 false, i1 false}
!226 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5803, i32 29}
!227 = !{ptr @qcom_qmp_phy_gen_ops, !228, !"qcom_qmp_phy_gen_ops", i1 false, i1 false}
!228 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5796, i32 29}
!229 = !{ptr @.str.68, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5573, i32 36}
!231 = !{ptr @.str.69, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5575, i32 3}
!233 = !{ptr @.str.70, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @phy_pipe_clk_register._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @phy_pipe_clk_register._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.71, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5769, i32 31}
!238 = !{ptr @.str.72, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5777, i32 31}
!240 = !{ptr @qcom_qmp_dp_link_clk_ops, !241, !"qcom_qmp_dp_link_clk_ops", i1 false, i1 false}
!241 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5732, i32 29}
!242 = !{ptr @qcom_qmp_dp_pixel_clk_ops, !243, !"qcom_qmp_dp_pixel_clk_ops", i1 false, i1 false}
!243 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5691, i32 29}
!244 = !{ptr @.str.73, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5744, i32 3}
!246 = !{ptr @.str.74, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @qcom_qmp_dp_clks_hw_get._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @qcom_qmp_dp_clks_hw_get._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @qcom_qmp_phy_of_match_table, !250, !"qcom_qmp_phy_of_match_table", i1 false, i1 false}
!250 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5940, i32 34}
!251 = !{ptr @ipq8074_usb3phy_cfg, !252, !"ipq8074_usb3phy_cfg", i1 false, i1 false}
!252 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3349, i32 33}
!253 = !{ptr @ipq8074_usb3_serdes_tbl, !254, !"ipq8074_usb3_serdes_tbl", i1 false, i1 false}
!254 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 267, i32 38}
!255 = !{ptr @msm8996_usb3_tx_tbl, !256, !"msm8996_usb3_tx_tbl", i1 false, i1 false}
!256 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 608, i32 38}
!257 = !{ptr @ipq8074_usb3_rx_tbl, !258, !"ipq8074_usb3_rx_tbl", i1 false, i1 false}
!258 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 304, i32 38}
!259 = !{ptr @ipq8074_usb3_pcs_tbl, !260, !"ipq8074_usb3_pcs_tbl", i1 false, i1 false}
!260 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 316, i32 38}
!261 = !{ptr @msm8996_phy_clk_l, !262, !"msm8996_phy_clk_l", i1 false, i1 false}
!262 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3281, i32 27}
!263 = !{ptr @usb3phy_regs_layout, !264, !"usb3phy_regs_layout", i1 false, i1 false}
!264 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 172, i32 27}
!265 = !{ptr @msm8996_pciephy_cfg, !266, !"msm8996_pciephy_cfg", i1 false, i1 false}
!266 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3374, i32 33}
!267 = !{ptr @msm8996_pcie_serdes_tbl, !268, !"msm8996_pcie_serdes_tbl", i1 false, i1 false}
!268 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 342, i32 38}
!269 = !{ptr @msm8996_pcie_tx_tbl, !270, !"msm8996_pcie_tx_tbl", i1 false, i1 false}
!270 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 388, i32 38}
!271 = !{ptr @msm8996_pcie_rx_tbl, !272, !"msm8996_pcie_rx_tbl", i1 false, i1 false}
!272 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 393, i32 38}
!273 = !{ptr @msm8996_pcie_pcs_tbl, !274, !"msm8996_pcie_pcs_tbl", i1 false, i1 false}
!274 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 406, i32 38}
!275 = !{ptr @.str.75, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3325, i32 19}
!277 = !{ptr @msm8996_pciephy_reset_l, !278, !"msm8996_pciephy_reset_l", i1 false, i1 false}
!278 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3324, i32 27}
!279 = !{ptr @pciephy_regs_layout, !280, !"pciephy_regs_layout", i1 false, i1 false}
!280 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 156, i32 27}
!281 = !{ptr @msm8996_ufs_cfg, !282, !"msm8996_ufs_cfg", i1 false, i1 false}
!282 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3406, i32 33}
!283 = !{ptr @msm8996_ufs_serdes_tbl, !284, !"msm8996_ufs_serdes_tbl", i1 false, i1 false}
!284 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 502, i32 38}
!285 = !{ptr @msm8996_ufs_tx_tbl, !286, !"msm8996_ufs_tx_tbl", i1 false, i1 false}
!286 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 552, i32 38}
!287 = !{ptr @msm8996_ufs_rx_tbl, !288, !"msm8996_ufs_rx_tbl", i1 false, i1 false}
!288 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 557, i32 38}
!289 = !{ptr @msm8996_ufs_phy_clk_l, !290, !"msm8996_ufs_phy_clk_l", i1 false, i1 false}
!290 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3285, i32 27}
!291 = !{ptr @msm8996_ufsphy_regs_layout, !292, !"msm8996_ufsphy_regs_layout", i1 false, i1 false}
!292 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 144, i32 27}
!293 = !{ptr @msm8996_usb3phy_cfg, !294, !"msm8996_usb3phy_cfg", i1 false, i1 false}
!294 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3432, i32 33}
!295 = !{ptr @msm8996_usb3_serdes_tbl, !296, !"msm8996_usb3_serdes_tbl", i1 false, i1 false}
!296 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 571, i32 38}
!297 = !{ptr @msm8996_usb3_rx_tbl, !298, !"msm8996_usb3_rx_tbl", i1 false, i1 false}
!298 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 614, i32 38}
!299 = !{ptr @msm8996_usb3_pcs_tbl, !300, !"msm8996_usb3_pcs_tbl", i1 false, i1 false}
!300 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 627, i32 38}
!301 = !{ptr @msm8998_pciephy_cfg, !302, !"msm8998_pciephy_cfg", i1 false, i1 false}
!302 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3849, i32 33}
!303 = !{ptr @msm8998_pcie_serdes_tbl, !304, !"msm8998_pcie_serdes_tbl", i1 false, i1 false}
!304 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 420, i32 38}
!305 = !{ptr @msm8998_pcie_tx_tbl, !306, !"msm8998_pcie_tx_tbl", i1 false, i1 false}
!306 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 465, i32 38}
!307 = !{ptr @msm8998_pcie_rx_tbl, !308, !"msm8998_pcie_rx_tbl", i1 false, i1 false}
!308 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 472, i32 38}
!309 = !{ptr @msm8998_pcie_pcs_tbl, !310, !"msm8998_pcie_pcs_tbl", i1 false, i1 false}
!310 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 489, i32 38}
!311 = !{ptr @ipq8074_pciephy_reset_l, !312, !"ipq8074_pciephy_reset_l", i1 false, i1 false}
!312 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3461, i32 27}
!313 = !{ptr @sdm845_ufsphy_cfg, !314, !"sdm845_ufsphy_cfg", i1 false, i1 false}
!314 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3798, i32 33}
!315 = !{ptr @sdm845_ufsphy_serdes_tbl, !316, !"sdm845_ufsphy_serdes_tbl", i1 false, i1 false}
!316 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1440, i32 38}
!317 = !{ptr @sdm845_ufsphy_tx_tbl, !318, !"sdm845_ufsphy_tx_tbl", i1 false, i1 false}
!318 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1482, i32 38}
!319 = !{ptr @sdm845_ufsphy_rx_tbl, !320, !"sdm845_ufsphy_rx_tbl", i1 false, i1 false}
!320 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1488, i32 38}
!321 = !{ptr @sdm845_ufsphy_pcs_tbl, !322, !"sdm845_ufsphy_pcs_tbl", i1 false, i1 false}
!322 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1507, i32 38}
!323 = !{ptr @.str.76, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3311, i32 9}
!325 = !{ptr @sdm845_ufs_phy_clk_l, !326, !"sdm845_ufs_phy_clk_l", i1 false, i1 false}
!326 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3310, i32 27}
!327 = !{ptr @sdm845_ufsphy_regs_layout, !328, !"sdm845_ufsphy_regs_layout", i1 false, i1 false}
!328 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 244, i32 27}
!329 = !{ptr @ipq8074_pciephy_cfg, !330, !"ipq8074_pciephy_cfg", i1 false, i1 false}
!330 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3465, i32 33}
!331 = !{ptr @ipq8074_pcie_serdes_tbl, !332, !"ipq8074_pcie_serdes_tbl", i1 false, i1 false}
!332 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 749, i32 38}
!333 = !{ptr @ipq8074_pcie_tx_tbl, !334, !"ipq8074_pcie_tx_tbl", i1 false, i1 false}
!334 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 792, i32 38}
!335 = !{ptr @ipq8074_pcie_rx_tbl, !336, !"ipq8074_pcie_rx_tbl", i1 false, i1 false}
!336 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 801, i32 38}
!337 = !{ptr @ipq8074_pcie_pcs_tbl, !338, !"ipq8074_pcie_pcs_tbl", i1 false, i1 false}
!338 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 811, i32 38}
!339 = !{ptr @ipq8074_pciephy_clk_l, !340, !"ipq8074_pciephy_clk_l", i1 false, i1 false}
!340 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3457, i32 27}
!341 = !{ptr @ipq6018_pciephy_cfg, !342, !"ipq6018_pciephy_cfg", i1 false, i1 false}
!342 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3496, i32 33}
!343 = !{ptr @ipq6018_pcie_serdes_tbl, !344, !"ipq6018_pcie_serdes_tbl", i1 false, i1 false}
!344 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 642, i32 38}
!345 = !{ptr @ipq6018_pcie_tx_tbl, !346, !"ipq6018_pcie_tx_tbl", i1 false, i1 false}
!346 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 691, i32 38}
!347 = !{ptr @ipq6018_pcie_rx_tbl, !348, !"ipq6018_pcie_rx_tbl", i1 false, i1 false}
!348 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 697, i32 38}
!349 = !{ptr @ipq6018_pcie_pcs_tbl, !350, !"ipq6018_pcie_pcs_tbl", i1 false, i1 false}
!350 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 730, i32 38}
!351 = !{ptr @ipq_pciephy_gen3_regs_layout, !352, !"ipq_pciephy_gen3_regs_layout", i1 false, i1 false}
!352 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 149, i32 27}
!353 = !{ptr @sc8180x_pciephy_cfg, !354, !"sc8180x_pciephy_cfg", i1 false, i1 false}
!354 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3959, i32 33}
!355 = !{ptr @sc8180x_qmp_pcie_serdes_tbl, !356, !"sc8180x_qmp_pcie_serdes_tbl", i1 false, i1 false}
!356 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2146, i32 38}
!357 = !{ptr @sc8180x_qmp_pcie_tx_tbl, !358, !"sc8180x_qmp_pcie_tx_tbl", i1 false, i1 false}
!358 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2191, i32 38}
!359 = !{ptr @sc8180x_qmp_pcie_rx_tbl, !360, !"sc8180x_qmp_pcie_rx_tbl", i1 false, i1 false}
!360 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2196, i32 38}
!361 = !{ptr @sc8180x_qmp_pcie_pcs_tbl, !362, !"sc8180x_qmp_pcie_pcs_tbl", i1 false, i1 false}
!362 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2235, i32 38}
!363 = !{ptr @sc8180x_qmp_pcie_pcs_misc_tbl, !364, !"sc8180x_qmp_pcie_pcs_misc_tbl", i1 false, i1 false}
!364 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2243, i32 38}
!365 = !{ptr @.str.77, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3294, i32 27}
!367 = !{ptr @sdm845_pciephy_clk_l, !368, !"sdm845_pciephy_clk_l", i1 false, i1 false}
!368 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3293, i32 27}
!369 = !{ptr @sdm845_pciephy_reset_l, !370, !"sdm845_pciephy_reset_l", i1 false, i1 false}
!370 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3340, i32 27}
!371 = !{ptr @sm8250_pcie_regs_layout, !372, !"sm8250_pcie_regs_layout", i1 false, i1 false}
!372 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 254, i32 27}
!373 = !{ptr @sm8150_ufsphy_cfg, !374, !"sm8150_ufsphy_cfg", i1 false, i1 false}
!374 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3901, i32 33}
!375 = !{ptr @sm8150_ufsphy_serdes_tbl, !376, !"sm8150_ufsphy_serdes_tbl", i1 false, i1 false}
!376 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1627, i32 38}
!377 = !{ptr @sm8150_ufsphy_tx_tbl, !378, !"sm8150_ufsphy_tx_tbl", i1 false, i1 false}
!378 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1657, i32 38}
!379 = !{ptr @sm8150_ufsphy_rx_tbl, !380, !"sm8150_ufsphy_rx_tbl", i1 false, i1 false}
!380 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1666, i32 38}
!381 = !{ptr @sm8150_ufsphy_pcs_tbl, !382, !"sm8150_ufsphy_pcs_tbl", i1 false, i1 false}
!382 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1704, i32 38}
!383 = !{ptr @sm8150_ufsphy_regs_layout, !384, !"sm8150_ufsphy_regs_layout", i1 false, i1 false}
!384 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 261, i32 27}
!385 = !{ptr @sdm845_qhp_pciephy_cfg, !386, !"sdm845_qhp_pciephy_cfg", i1 false, i1 false}
!386 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3557, i32 33}
!387 = !{ptr @sdm845_qhp_pcie_serdes_tbl, !388, !"sdm845_qhp_pcie_serdes_tbl", i1 false, i1 false}
!388 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 930, i32 38}
!389 = !{ptr @sdm845_qhp_pcie_tx_tbl, !390, !"sdm845_qhp_pcie_tx_tbl", i1 false, i1 false}
!390 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 978, i32 38}
!391 = !{ptr @sdm845_qhp_pcie_rx_tbl, !392, !"sdm845_qhp_pcie_rx_tbl", i1 false, i1 false}
!392 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1037, i32 38}
!393 = !{ptr @sdm845_qhp_pcie_pcs_tbl, !394, !"sdm845_qhp_pcie_pcs_tbl", i1 false, i1 false}
!394 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1040, i32 38}
!395 = !{ptr @sdm845_qhp_pciephy_regs_layout, !396, !"sdm845_qhp_pciephy_regs_layout", i1 false, i1 false}
!396 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 201, i32 27}
!397 = !{ptr @sdm845_qmp_pciephy_cfg, !398, !"sdm845_qmp_pciephy_cfg", i1 false, i1 false}
!398 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3526, i32 33}
!399 = !{ptr @sdm845_qmp_pcie_serdes_tbl, !400, !"sdm845_qmp_pcie_serdes_tbl", i1 false, i1 false}
!400 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 827, i32 38}
!401 = !{ptr @sdm845_qmp_pcie_tx_tbl, !402, !"sdm845_qmp_pcie_tx_tbl", i1 false, i1 false}
!402 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 872, i32 38}
!403 = !{ptr @sdm845_qmp_pcie_rx_tbl, !404, !"sdm845_qmp_pcie_rx_tbl", i1 false, i1 false}
!404 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 879, i32 38}
!405 = !{ptr @sdm845_qmp_pcie_pcs_tbl, !406, !"sdm845_qmp_pcie_pcs_tbl", i1 false, i1 false}
!406 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 898, i32 38}
!407 = !{ptr @sdm845_qmp_pcie_pcs_misc_tbl, !408, !"sdm845_qmp_pcie_pcs_misc_tbl", i1 false, i1 false}
!408 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 922, i32 38}
!409 = !{ptr @sdm845_qmp_pciephy_regs_layout, !410, !"sdm845_qmp_pciephy_regs_layout", i1 false, i1 false}
!410 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 195, i32 27}
!411 = !{ptr @qmp_v3_usb3phy_cfg, !412, !"qmp_v3_usb3phy_cfg", i1 false, i1 false}
!412 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3665, i32 33}
!413 = !{ptr @qmp_v3_usb3_uniphy_cfg, !414, !"qmp_v3_usb3_uniphy_cfg", i1 false, i1 false}
!414 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3769, i32 33}
!415 = !{ptr @qmp_v3_usb3_uniphy_serdes_tbl, !416, !"qmp_v3_usb3_uniphy_serdes_tbl", i1 false, i1 false}
!416 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1238, i32 38}
!417 = !{ptr @qmp_v3_usb3_uniphy_tx_tbl, !418, !"qmp_v3_usb3_uniphy_tx_tbl", i1 false, i1 false}
!418 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1277, i32 38}
!419 = !{ptr @qmp_v3_usb3_uniphy_rx_tbl, !420, !"qmp_v3_usb3_uniphy_rx_tbl", i1 false, i1 false}
!420 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1285, i32 38}
!421 = !{ptr @qmp_v3_usb3_uniphy_pcs_tbl, !422, !"qmp_v3_usb3_uniphy_pcs_tbl", i1 false, i1 false}
!422 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1299, i32 38}
!423 = !{ptr @msm8998_usb3phy_cfg, !424, !"msm8998_usb3phy_cfg", i1 false, i1 false}
!424 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3874, i32 33}
!425 = !{ptr @msm8998_usb3_serdes_tbl, !426, !"msm8998_usb3_serdes_tbl", i1 false, i1 false}
!426 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1518, i32 38}
!427 = !{ptr @msm8998_usb3_tx_tbl, !428, !"msm8998_usb3_tx_tbl", i1 false, i1 false}
!428 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1559, i32 38}
!429 = !{ptr @msm8998_usb3_rx_tbl, !430, !"msm8998_usb3_rx_tbl", i1 false, i1 false}
!430 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1566, i32 38}
!431 = !{ptr @msm8998_usb3_pcs_tbl, !432, !"msm8998_usb3_pcs_tbl", i1 false, i1 false}
!432 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1586, i32 38}
!433 = !{ptr @sm6115_ufsphy_cfg, !434, !"sm6115_ufsphy_cfg", i1 false, i1 false}
!434 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3824, i32 33}
!435 = !{ptr @sm6115_ufsphy_serdes_tbl, !436, !"sm6115_ufsphy_serdes_tbl", i1 false, i1 false}
!436 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1349, i32 38}
!437 = !{ptr @sm6115_ufsphy_tx_tbl, !438, !"sm6115_ufsphy_tx_tbl", i1 false, i1 false}
!438 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1405, i32 38}
!439 = !{ptr @sm6115_ufsphy_rx_tbl, !440, !"sm6115_ufsphy_rx_tbl", i1 false, i1 false}
!440 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1410, i32 38}
!441 = !{ptr @sm6115_ufsphy_pcs_tbl, !442, !"sm6115_ufsphy_pcs_tbl", i1 false, i1 false}
!442 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1428, i32 38}
!443 = !{ptr @sm6115_ufsphy_regs_layout, !444, !"sm6115_ufsphy_regs_layout", i1 false, i1 false}
!444 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 249, i32 27}
!445 = !{ptr @sm8150_usb3_uniphy_cfg, !446, !"sm8150_usb3_uniphy_cfg", i1 false, i1 false}
!446 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4029, i32 33}
!447 = !{ptr @sm8150_usb3_uniphy_serdes_tbl, !448, !"sm8150_usb3_uniphy_serdes_tbl", i1 false, i1 false}
!448 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1822, i32 38}
!449 = !{ptr @sm8150_usb3_uniphy_tx_tbl, !450, !"sm8150_usb3_uniphy_tx_tbl", i1 false, i1 false}
!450 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1865, i32 38}
!451 = !{ptr @sm8150_usb3_uniphy_rx_tbl, !452, !"sm8150_usb3_uniphy_rx_tbl", i1 false, i1 false}
!452 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1872, i32 38}
!453 = !{ptr @sm8150_usb3_uniphy_pcs_tbl, !454, !"sm8150_usb3_uniphy_pcs_tbl", i1 false, i1 false}
!454 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1911, i32 38}
!455 = !{ptr @qmp_v4_usb3_uniphy_regs_layout, !456, !"qmp_v4_usb3_uniphy_regs_layout", i1 false, i1 false}
!456 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 216, i32 27}
!457 = !{ptr @sm8250_usb3_uniphy_cfg, !458, !"sm8250_usb3_uniphy_cfg", i1 false, i1 false}
!458 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4090, i32 33}
!459 = !{ptr @sm8250_usb3_uniphy_tx_tbl, !460, !"sm8250_usb3_uniphy_tx_tbl", i1 false, i1 false}
!460 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 1999, i32 38}
!461 = !{ptr @sm8250_usb3_uniphy_rx_tbl, !462, !"sm8250_usb3_uniphy_rx_tbl", i1 false, i1 false}
!462 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2008, i32 38}
!463 = !{ptr @sm8250_usb3_uniphy_pcs_tbl, !464, !"sm8250_usb3_uniphy_pcs_tbl", i1 false, i1 false}
!464 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2047, i32 38}
!465 = !{ptr @sm8250_qmp_gen3x1_pciephy_cfg, !466, !"sm8250_qmp_gen3x1_pciephy_cfg", i1 false, i1 false}
!466 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3586, i32 33}
!467 = !{ptr @sm8250_qmp_pcie_serdes_tbl, !468, !"sm8250_qmp_pcie_serdes_tbl", i1 false, i1 false}
!468 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2253, i32 38}
!469 = !{ptr @sm8250_qmp_gen3x1_pcie_serdes_tbl, !470, !"sm8250_qmp_gen3x1_pcie_serdes_tbl", i1 false, i1 false}
!470 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2297, i32 38}
!471 = !{ptr @sm8250_qmp_pcie_tx_tbl, !472, !"sm8250_qmp_pcie_tx_tbl", i1 false, i1 false}
!472 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2301, i32 38}
!473 = !{ptr @sm8250_qmp_pcie_rx_tbl, !474, !"sm8250_qmp_pcie_rx_tbl", i1 false, i1 false}
!474 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2307, i32 38}
!475 = !{ptr @sm8250_qmp_gen3x1_pcie_rx_tbl, !476, !"sm8250_qmp_gen3x1_pcie_rx_tbl", i1 false, i1 false}
!476 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2340, i32 38}
!477 = !{ptr @sm8250_qmp_pcie_pcs_tbl, !478, !"sm8250_qmp_pcie_pcs_tbl", i1 false, i1 false}
!478 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2349, i32 38}
!479 = !{ptr @sm8250_qmp_gen3x1_pcie_pcs_tbl, !480, !"sm8250_qmp_gen3x1_pcie_pcs_tbl", i1 false, i1 false}
!480 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2355, i32 38}
!481 = !{ptr @sm8250_qmp_pcie_pcs_misc_tbl, !482, !"sm8250_qmp_pcie_pcs_misc_tbl", i1 false, i1 false}
!482 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2360, i32 38}
!483 = !{ptr @sm8250_qmp_gen3x1_pcie_pcs_misc_tbl, !484, !"sm8250_qmp_gen3x1_pcie_pcs_misc_tbl", i1 false, i1 false}
!484 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2370, i32 38}
!485 = !{ptr @sm8250_qmp_gen3x2_pciephy_cfg, !486, !"sm8250_qmp_gen3x2_pciephy_cfg", i1 false, i1 false}
!486 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3625, i32 33}
!487 = !{ptr @sm8250_qmp_gen3x2_pcie_tx_tbl, !488, !"sm8250_qmp_gen3x2_pcie_tx_tbl", i1 false, i1 false}
!488 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2375, i32 38}
!489 = !{ptr @sm8250_qmp_gen3x2_pcie_rx_tbl, !490, !"sm8250_qmp_gen3x2_pcie_rx_tbl", i1 false, i1 false}
!490 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2379, i32 38}
!491 = !{ptr @sm8250_qmp_gen3x2_pcie_pcs_tbl, !492, !"sm8250_qmp_gen3x2_pcie_pcs_tbl", i1 false, i1 false}
!492 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2386, i32 38}
!493 = !{ptr @sm8250_qmp_gen3x2_pcie_pcs_misc_tbl, !494, !"sm8250_qmp_gen3x2_pcie_pcs_misc_tbl", i1 false, i1 false}
!494 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2391, i32 38}
!495 = !{ptr @sm8350_ufsphy_cfg, !496, !"sm8350_ufsphy_cfg", i1 false, i1 false}
!496 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4220, i32 33}
!497 = !{ptr @sm8350_ufsphy_serdes_tbl, !498, !"sm8350_ufsphy_serdes_tbl", i1 false, i1 false}
!498 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2538, i32 38}
!499 = !{ptr @sm8350_ufsphy_tx_tbl, !500, !"sm8350_ufsphy_tx_tbl", i1 false, i1 false}
!500 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2568, i32 38}
!501 = !{ptr @sm8350_ufsphy_rx_tbl, !502, !"sm8350_ufsphy_rx_tbl", i1 false, i1 false}
!502 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2580, i32 38}
!503 = !{ptr @sm8350_ufsphy_pcs_tbl, !504, !"sm8350_ufsphy_pcs_tbl", i1 false, i1 false}
!504 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2620, i32 38}
!505 = !{ptr @sdx55_qmp_pciephy_cfg, !506, !"sdx55_qmp_pciephy_cfg", i1 false, i1 false}
!506 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4188, i32 33}
!507 = !{ptr @sdx55_qmp_pcie_serdes_tbl, !508, !"sdx55_qmp_pcie_serdes_tbl", i1 false, i1 false}
!508 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2443, i32 38}
!509 = !{ptr @sdx55_qmp_pcie_tx_tbl, !510, !"sdx55_qmp_pcie_tx_tbl", i1 false, i1 false}
!510 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2485, i32 38}
!511 = !{ptr @sdx55_qmp_pcie_rx_tbl, !512, !"sdx55_qmp_pcie_rx_tbl", i1 false, i1 false}
!512 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2493, i32 38}
!513 = !{ptr @sdx55_qmp_pcie_pcs_tbl, !514, !"sdx55_qmp_pcie_pcs_tbl", i1 false, i1 false}
!514 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2521, i32 38}
!515 = !{ptr @sdx55_qmp_pcie_pcs_misc_tbl, !516, !"sdx55_qmp_pcie_pcs_misc_tbl", i1 false, i1 false}
!516 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2528, i32 38}
!517 = !{ptr @sdx55_usb3_uniphy_cfg, !518, !"sdx55_usb3_uniphy_cfg", i1 false, i1 false}
!518 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4159, i32 33}
!519 = !{ptr @sdx55_usb3_uniphy_tx_tbl, !520, !"sdx55_usb3_uniphy_tx_tbl", i1 false, i1 false}
!520 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2396, i32 38}
!521 = !{ptr @sdx55_usb3_uniphy_rx_tbl, !522, !"sdx55_usb3_uniphy_rx_tbl", i1 false, i1 false}
!522 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2404, i32 38}
!523 = !{ptr @qmp_v4_sdx55_usbphy_clk_l, !524, !"qmp_v4_sdx55_usbphy_clk_l", i1 false, i1 false}
!524 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3315, i32 27}
!525 = !{ptr @sm8350_usb3phy_cfg, !526, !"sm8350_usb3phy_cfg", i1 false, i1 false}
!526 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4245, i32 33}
!527 = !{ptr @sm8350_usb3_tx_tbl, !528, !"sm8350_usb3_tx_tbl", i1 false, i1 false}
!528 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2638, i32 38}
!529 = !{ptr @sm8350_usb3_rx_tbl, !530, !"sm8350_usb3_rx_tbl", i1 false, i1 false}
!530 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2651, i32 38}
!531 = !{ptr @sm8350_usb3_pcs_tbl, !532, !"sm8350_usb3_pcs_tbl", i1 false, i1 false}
!532 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2692, i32 38}
!533 = !{ptr @sm8350_usb3_uniphy_cfg, !534, !"sm8350_usb3_uniphy_cfg", i1 false, i1 false}
!534 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4277, i32 33}
!535 = !{ptr @sm8350_usb3_uniphy_tx_tbl, !536, !"sm8350_usb3_uniphy_tx_tbl", i1 false, i1 false}
!536 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2713, i32 38}
!537 = !{ptr @sm8350_usb3_uniphy_rx_tbl, !538, !"sm8350_usb3_uniphy_rx_tbl", i1 false, i1 false}
!538 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2723, i32 38}
!539 = !{ptr @sm8350_usb3_uniphy_pcs_tbl, !540, !"sm8350_usb3_uniphy_pcs_tbl", i1 false, i1 false}
!540 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2757, i32 38}
!541 = !{ptr @sm8350_usb3_uniphy_regs_layout, !542, !"sm8350_usb3_uniphy_regs_layout", i1 false, i1 false}
!542 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 225, i32 27}
!543 = !{ptr @sm8450_qmp_gen3x1_pciephy_cfg, !544, !"sm8450_qmp_gen3x1_pciephy_cfg", i1 false, i1 false}
!544 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4331, i32 33}
!545 = !{ptr @sm8450_qmp_gen3x1_pcie_serdes_tbl, !546, !"sm8450_qmp_gen3x1_pcie_serdes_tbl", i1 false, i1 false}
!546 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2869, i32 38}
!547 = !{ptr @sm8450_qmp_gen3x1_pcie_tx_tbl, !548, !"sm8450_qmp_gen3x1_pcie_tx_tbl", i1 false, i1 false}
!548 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2914, i32 38}
!549 = !{ptr @sm8450_qmp_gen3x1_pcie_rx_tbl, !550, !"sm8450_qmp_gen3x1_pcie_rx_tbl", i1 false, i1 false}
!550 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2922, i32 38}
!551 = !{ptr @sm8450_qmp_gen3x1_pcie_pcs_tbl, !552, !"sm8450_qmp_gen3x1_pcie_pcs_tbl", i1 false, i1 false}
!552 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2947, i32 38}
!553 = !{ptr @sm8450_qmp_gen3x1_pcie_pcs_misc_tbl, !554, !"sm8450_qmp_gen3x1_pcie_pcs_misc_tbl", i1 false, i1 false}
!554 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2953, i32 38}
!555 = !{ptr @sm8450_qmp_gen4x2_pciephy_cfg, !556, !"sm8450_qmp_gen4x2_pciephy_cfg", i1 false, i1 false}
!556 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4362, i32 33}
!557 = !{ptr @sm8450_qmp_gen4x2_pcie_serdes_tbl, !558, !"sm8450_qmp_gen4x2_pcie_serdes_tbl", i1 false, i1 false}
!558 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2960, i32 38}
!559 = !{ptr @sm8450_qmp_gen4x2_pcie_tx_tbl, !560, !"sm8450_qmp_gen4x2_pcie_tx_tbl", i1 false, i1 false}
!560 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3004, i32 38}
!561 = !{ptr @sm8450_qmp_gen4x2_pcie_rx_tbl, !562, !"sm8450_qmp_gen4x2_pcie_rx_tbl", i1 false, i1 false}
!562 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3011, i32 38}
!563 = !{ptr @sm8450_qmp_gen4x2_pcie_pcs_tbl, !564, !"sm8450_qmp_gen4x2_pcie_pcs_tbl", i1 false, i1 false}
!564 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3062, i32 38}
!565 = !{ptr @sm8450_qmp_gen4x2_pcie_pcs_misc_tbl, !566, !"sm8450_qmp_gen4x2_pcie_pcs_misc_tbl", i1 false, i1 false}
!566 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3069, i32 38}
!567 = !{ptr @sm8450_ufsphy_cfg, !568, !"sm8450_ufsphy_cfg", i1 false, i1 false}
!568 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4306, i32 33}
!569 = !{ptr @.str.78, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3307, i32 2}
!571 = !{ptr @sm8450_ufs_phy_clk_l, !572, !"sm8450_ufs_phy_clk_l", i1 false, i1 false}
!572 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3306, i32 27}
!573 = !{ptr @qcm2290_usb3phy_cfg, !574, !"qcm2290_usb3phy_cfg", i1 false, i1 false}
!574 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 4394, i32 33}
!575 = !{ptr @qcm2290_usb3_serdes_tbl, !576, !"qcm2290_usb3_serdes_tbl", i1 false, i1 false}
!576 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2776, i32 38}
!577 = !{ptr @qcm2290_usb3_tx_tbl, !578, !"qcm2290_usb3_tx_tbl", i1 false, i1 false}
!578 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2817, i32 38}
!579 = !{ptr @qcm2290_usb3_rx_tbl, !580, !"qcm2290_usb3_rx_tbl", i1 false, i1 false}
!580 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2825, i32 38}
!581 = !{ptr @qcm2290_usb3_pcs_tbl, !582, !"qcm2290_usb3_pcs_tbl", i1 false, i1 false}
!582 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 2845, i32 38}
!583 = !{ptr @qcm2290_usb3phy_clk_l, !584, !"qcm2290_usb3phy_clk_l", i1 false, i1 false}
!584 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3319, i32 27}
!585 = !{ptr @.str.79, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3337, i32 2}
!587 = !{ptr @qcm2290_usb3phy_reset_l, !588, !"qcm2290_usb3phy_reset_l", i1 false, i1 false}
!588 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 3336, i32 27}
!589 = !{ptr @qcm2290_usb3phy_regs_layout, !590, !"qcm2290_usb3phy_regs_layout", i1 false, i1 false}
!590 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 234, i32 27}
!591 = !{ptr @qcom_qmp_phy_pm_ops, !592, !"qcom_qmp_phy_pm_ops", i1 false, i1 false}
!592 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 6088, i32 32}
!593 = !{ptr @.str.80, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/phy/qualcomm/phy-qcom-qmp.c", i32 5477, i32 3}
!595 = !{ptr @.str.81, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @qcom_qmp_phy_runtime_resume._entry, !594, !"_entry", i1 false, i1 false}
!597 = !{ptr @qcom_qmp_phy_runtime_resume._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!598 = !{i32 1, !"wchar_size", i32 2}
!599 = !{i32 1, !"min_enum_size", i32 4}
!600 = !{i32 8, !"branch-target-enforcement", i32 0}
!601 = !{i32 8, !"sign-return-address", i32 0}
!602 = !{i32 8, !"sign-return-address-all", i32 0}
!603 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!604 = !{i32 7, !"uwtable", i32 1}
!605 = !{i32 7, !"frame-pointer", i32 2}
!606 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!607 = !{i8 0, i8 2}
!608 = !{!"branch_weights", i32 1, i32 2000}
!609 = !{i64 2155856900}
!610 = !{i64 4825050}
!611 = !{i64 2155857296}
!612 = !{i64 2155857695}
!613 = !{i64 2155858094}
!614 = !{i64 2155858503}
!615 = !{i64 2155858923}
!616 = !{i64 2155859322}
!617 = !{i64 2155859721}
!618 = !{i64 2155860120}
!619 = !{i64 2155860519}
!620 = !{i64 2155860921}
!621 = !{i64 4825468}
!622 = !{i64 2155862923}
!623 = !{i64 2155863421}
!624 = !{i64 2155863650}
!625 = !{i64 2155865625}
!626 = !{i64 2155866111}
!627 = !{i64 2155866340}
!628 = !{i64 2155867293}
!629 = !{i64 2155869268}
!630 = !{i64 2155869754}
!631 = !{i64 2155855233}
!632 = !{i64 2155855642}
!633 = !{i64 2155856052}
!634 = !{i64 2155856463}
!635 = !{i64 2155870373}
!636 = !{i64 2155843214}
!637 = !{i64 2155843748}
!638 = !{i64 2155844244}
!639 = !{i64 2155844723}
!640 = !{i64 2155845337}
!641 = !{i64 2155845880}
!642 = !{i64 2155846279}
!643 = !{i64 2155846678}
!644 = !{i64 2155847077}
!645 = !{i64 2155847476}
!646 = !{i64 2155847875}
!647 = !{i64 2155848274}
!648 = !{i64 2155848673}
!649 = !{i64 2155849072}
!650 = !{i64 2155849471}
!651 = !{i64 2155849923}
!652 = !{i64 2155853411}
!653 = !{i64 2155853866}
!654 = !{i64 2155854320}
!655 = !{i64 2155854777}
!656 = !{i64 2155877851}
!657 = !{i64 2155878250}
!658 = !{i64 2155878649}
!659 = !{i64 2155879048}
!660 = !{i64 2155879447}
!661 = !{i64 2155879856}
!662 = !{i64 2155880276}
!663 = !{i64 2155880675}
!664 = !{i64 2155881074}
!665 = !{i64 2155881473}
!666 = !{i64 2155881875}
!667 = !{i64 2155883877}
!668 = !{i64 2155884375}
!669 = !{i64 2155886204}
!670 = !{i64 2155886702}
!671 = !{i64 2155888531}
!672 = !{i64 2155889029}
!673 = !{i64 2155889258}
!674 = !{i64 2155891233}
!675 = !{i64 2155891719}
!676 = !{i64 2155893524}
!677 = !{i64 2155894010}
!678 = !{i64 2155894240}
!679 = !{i64 2155894650}
!680 = !{i64 2155895061}
!681 = !{i64 2155895473}
!682 = !{i64 2155895883}
!683 = !{i64 2155896836}
!684 = !{i64 2155898811}
!685 = !{i64 2155899297}
!686 = !{i64 2155899523}
!687 = !{i64 2155899918}
!688 = !{i64 2155900313}
!689 = !{i64 2155900708}
!690 = !{i64 2155901103}
!691 = !{i64 2155901498}
!692 = !{i64 2155876258}
!693 = !{i64 2155876653}
!694 = !{i64 2155877048}
!695 = !{i64 2155877443}
!696 = !{i64 2155902290}
!697 = !{i64 2155870832}
!698 = !{i64 2155871333}
!699 = !{i64 2155871735}
!700 = !{i64 2155872134}
!701 = !{i64 2155872533}
!702 = !{i64 2155872932}
!703 = !{i64 2155873331}
!704 = !{i64 2155873730}
!705 = !{i64 2155874129}
!706 = !{i64 2155874528}
!707 = !{i64 2155874927}
!708 = !{i64 2155875326}
!709 = !{i64 2155875778}
!710 = !{i64 2155700154}
!711 = !{i64 2155700364}
!712 = !{i64 2155701005}
!713 = !{i64 2155701644}
!714 = !{i64 2155701854}
!715 = !{i64 2155702495}
!716 = !{i64 2155840817}
!717 = !{i64 2155841259}
!718 = !{i64 2155917431}
!719 = !{i64 2155917873}
!720 = !{i64 2155919761}
