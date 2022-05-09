; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-qcom.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.qcom_pcie_cfg = type { ptr, i8 }
%struct.qcom_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.qcom_pcie = type { ptr, ptr, ptr, %union.qcom_pcie_resources, ptr, ptr, ptr, i8 }
%union.qcom_pcie_resources = type { %struct.qcom_pcie_resources_2_7_0 }
%struct.qcom_pcie_resources_2_7_0 = type { [7 x %struct.clk_bulk_data], i32, [2 x %struct.regulator_bulk_data], ptr, ptr, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.91 = type { i32, i32, i32, i32 }

@__pci_fixup_qcom_fixup_class1639 = internal constant %struct.pci_fixup { i16 6091, i16 257, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_qcom_fixup_class1640 = internal constant %struct.pci_fixup { i16 6091, i16 260, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_qcom_fixup_class1641 = internal constant %struct.pci_fixup { i16 6091, i16 262, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_qcom_fixup_class1642 = internal constant %struct.pci_fixup { i16 6091, i16 263, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_qcom_fixup_class1643 = internal constant %struct.pci_fixup { i16 6091, i16 770, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_qcom_fixup_class1644 = internal constant %struct.pci_fixup { i16 6091, i16 4096, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__pci_fixup_qcom_fixup_class1645 = internal constant %struct.pci_fixup { i16 6091, i16 4097, i32 -1, i32 0, ptr @qcom_fixup_class }, section ".pci_fixup_early", align 4
@__initcall__kmod_pcie_qcom__293_1655_qcom_pcie_driver_init6 = internal global ptr @qcom_pcie_driver_init, section ".initcall6.init", align 4
@qcom_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @qcom_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom-pcie\00", [22 x i8] zeroinitializer }, align 32
@qcom_pcie_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-apq8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apq8084_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-ipq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8064_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-ipq8064-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8064_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8064_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-msm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm8996_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-ipq8074\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq8074_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-ipq4019\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq4019_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-qcs404\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipq4019_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-sdm845\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-sm8250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-sc8180x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sm8250_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pcie-sc7280\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_cfg }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@qcom_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_pcie_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/controller/dwc/pcie-qcom.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_pcie_probe._entry_ptr = internal global ptr @qcom_pcie_probe._entry, section ".printk_index", align 4
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @qcom_pcie_link_up, ptr @qcom_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perst\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"parf\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"elbi\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pciephy\00", [24 x i8] zeroinitializer }, align 32
@qcom_pcie_dw_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @qcom_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@qcom_pcie_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1605, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot initialize host\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_pcie_probe._entry_ptr.12 = internal global ptr @qcom_pcie_probe._entry.10, section ".printk_index", align 4
@apq8084_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_1_0_0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ipq8064_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_2_1_0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@msm8996_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_2_3_2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ipq8074_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_2_3_3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ipq4019_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_2_4_0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@sdm845_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_2_7_0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@sm8250_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_1_9_0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@sc7280_cfg = internal constant { %struct.qcom_pcie_cfg, [24 x i8] } { %struct.qcom_pcie_cfg { ptr @ops_1_9_0, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@ops_1_0_0 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_1_0_0, ptr @qcom_pcie_init_1_0_0, ptr null, ptr @qcom_pcie_deinit_1_0_0, ptr null, ptr @qcom_pcie_2_1_0_ltssm_enable, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_bus\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slave_bus\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot deassert core reset\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_pcie_init_1_0_0\00", [43 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry_ptr = internal global ptr @qcom_pcie_init_1_0_0._entry, section ".printk_index", align 4
@qcom_pcie_init_1_0_0._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot prepare/enable aux clock\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry_ptr.23 = internal global ptr @qcom_pcie_init_1_0_0._entry.21, section ".printk_index", align 4
@qcom_pcie_init_1_0_0._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot prepare/enable iface clock\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry_ptr.26 = internal global ptr @qcom_pcie_init_1_0_0._entry.24, section ".printk_index", align 4
@qcom_pcie_init_1_0_0._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot prepare/enable master_bus clock\0A\00", [56 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry_ptr.29 = internal global ptr @qcom_pcie_init_1_0_0._entry.27, section ".printk_index", align 4
@qcom_pcie_init_1_0_0._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.3, i32 522, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot prepare/enable slave_bus clock\0A\00", [57 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry_ptr.32 = internal global ptr @qcom_pcie_init_1_0_0._entry.30, section ".printk_index", align 4
@qcom_pcie_init_1_0_0._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot enable vdda regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@qcom_pcie_init_1_0_0._entry_ptr.35 = internal global ptr @qcom_pcie_init_1_0_0._entry.33, section ".printk_index", align 4
@ops_2_1_0 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_2_1_0, ptr @qcom_pcie_init_2_1_0, ptr null, ptr @qcom_pcie_deinit_2_1_0, ptr null, ptr @qcom_pcie_2_1_0_ltssm_enable, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdda_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdda_refclk\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"por\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ext\00", [28 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_pcie_init_2_1_0\00", [43 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr = internal global ptr @qcom_pcie_init_2_1_0._entry, section ".printk_index", align 4
@qcom_pcie_init_2_1_0._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot deassert ahb reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr.49 = internal global ptr @qcom_pcie_init_2_1_0._entry.47, section ".printk_index", align 4
@qcom_pcie_init_2_1_0._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot deassert ext reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr.52 = internal global ptr @qcom_pcie_init_2_1_0._entry.50, section ".printk_index", align 4
@qcom_pcie_init_2_1_0._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.3, i32 359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot deassert phy reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr.55 = internal global ptr @qcom_pcie_init_2_1_0._entry.53, section ".printk_index", align 4
@qcom_pcie_init_2_1_0._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot deassert pci reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr.58 = internal global ptr @qcom_pcie_init_2_1_0._entry.56, section ".printk_index", align 4
@qcom_pcie_init_2_1_0._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot deassert por reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr.61 = internal global ptr @qcom_pcie_init_2_1_0._entry.59, section ".printk_index", align 4
@qcom_pcie_init_2_1_0._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.46, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot deassert axi reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_1_0._entry_ptr.64 = internal global ptr @qcom_pcie_init_2_1_0._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,pcie-ipq8064\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,pcie-ipq8064-v2\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,pcie-apq8064\00", [46 x i8] zeroinitializer }, align 32
@ops_2_3_2 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_2_3_2, ptr @qcom_pcie_init_2_3_2, ptr @qcom_pcie_post_init_2_3_2, ptr @qcom_pcie_deinit_2_3_2, ptr @qcom_pcie_post_deinit_2_3_2, ptr @qcom_pcie_2_3_2_ltssm_enable, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vddpe-3v3\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bus_master\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bus_slave\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.73, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_pcie_init_2_3_2\00", [43 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_2._entry_ptr = internal global ptr @qcom_pcie_init_2_3_2._entry, section ".printk_index", align 4
@qcom_pcie_init_2_3_2._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.73, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_2._entry_ptr.75 = internal global ptr @qcom_pcie_init_2_3_2._entry.74, section ".printk_index", align 4
@qcom_pcie_init_2_3_2._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot prepare/enable cfg clock\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_2._entry_ptr.78 = internal global ptr @qcom_pcie_init_2_3_2._entry.76, section ".printk_index", align 4
@qcom_pcie_init_2_3_2._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.3, i32 648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot prepare/enable master clock\0A\00", [60 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_2._entry_ptr.81 = internal global ptr @qcom_pcie_init_2_3_2._entry.79, section ".printk_index", align 4
@qcom_pcie_init_2_3_2._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.73, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot prepare/enable slave clock\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_2._entry_ptr.84 = internal global ptr @qcom_pcie_init_2_3_2._entry.82, section ".printk_index", align 4
@qcom_pcie_post_init_2_3_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot prepare/enable pipe clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_pcie_post_init_2_3_2\00", [38 x i8] zeroinitializer }, align 32
@qcom_pcie_post_init_2_3_2._entry_ptr = internal global ptr @qcom_pcie_post_init_2_3_2._entry, section ".printk_index", align 4
@ops_2_3_3 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_2_3_3, ptr @qcom_pcie_init_2_3_3, ptr null, ptr @qcom_pcie_deinit_2_3_3, ptr null, ptr @qcom_pcie_2_3_2_ltssm_enable, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"axi_m\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"axi_s\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axi_m_sticky\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sticky\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reset #%d assert failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_pcie_init_2_3_3\00", [43 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr = internal global ptr @qcom_pcie_init_2_3_3._entry, section ".printk_index", align 4
@qcom_pcie_init_2_3_3._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 1056, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reset #%d deassert failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr.96 = internal global ptr @qcom_pcie_init_2_3_3._entry.94, section ".printk_index", align 4
@qcom_pcie_init_2_3_3._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.3, i32 1069, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot prepare/enable core clock\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr.99 = internal global ptr @qcom_pcie_init_2_3_3._entry.97, section ".printk_index", align 4
@qcom_pcie_init_2_3_3._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.3, i32 1075, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr.101 = internal global ptr @qcom_pcie_init_2_3_3._entry.100, section ".printk_index", align 4
@qcom_pcie_init_2_3_3._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.93, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot prepare/enable axi slave clock\0A\00", [57 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr.104 = internal global ptr @qcom_pcie_init_2_3_3._entry.102, section ".printk_index", align 4
@qcom_pcie_init_2_3_3._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.93, ptr @.str.3, i32 1087, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot prepare/enable ahb clock\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr.107 = internal global ptr @qcom_pcie_init_2_3_3._entry.105, section ".printk_index", align 4
@qcom_pcie_init_2_3_3._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.93, ptr @.str.3, i32 1093, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_3_3._entry_ptr.109 = internal global ptr @qcom_pcie_init_2_3_3._entry.108, section ".printk_index", align 4
@ops_2_4_0 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_2_4_0, ptr @qcom_pcie_init_2_4_0, ptr null, ptr @qcom_pcie_deinit_2_4_0, ptr null, ptr @qcom_pcie_2_3_2_ltssm_enable, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,pcie-ipq4019\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"axi_m_vmid\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axi_s_xpu\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pipe_sticky\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwr\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy_ahb\00", [24 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot assert axi master reset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_pcie_init_2_4_0\00", [43 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr = internal global ptr @qcom_pcie_init_2_4_0._entry, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot assert axi slave reset\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.120 = internal global ptr @qcom_pcie_init_2_4_0._entry.118, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot assert pipe reset\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.123 = internal global ptr @qcom_pcie_init_2_4_0._entry.121, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.3, i32 839, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot assert pipe sticky reset\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.126 = internal global ptr @qcom_pcie_init_2_4_0._entry.124, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.117, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot assert phy reset\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.129 = internal global ptr @qcom_pcie_init_2_4_0._entry.127, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.117, ptr @.str.3, i32 851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot assert phy ahb reset\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.132 = internal global ptr @qcom_pcie_init_2_4_0._entry.130, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.117, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot assert axi master sticky reset\0A\00", [57 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.135 = internal global ptr @qcom_pcie_init_2_4_0._entry.133, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.117, ptr @.str.3, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot assert power reset\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.138 = internal global ptr @qcom_pcie_init_2_4_0._entry.136, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.117, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot assert ahb reset\0A\00", [39 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.141 = internal global ptr @qcom_pcie_init_2_4_0._entry.139, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.117, ptr @.str.3, i32 879, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot deassert phy ahb reset\0A\00", [33 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.144 = internal global ptr @qcom_pcie_init_2_4_0._entry.142, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.117, ptr @.str.3, i32 885, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.146 = internal global ptr @qcom_pcie_init_2_4_0._entry.145, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.117, ptr @.str.3, i32 891, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot deassert pipe reset\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.149 = internal global ptr @qcom_pcie_init_2_4_0._entry.147, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.117, ptr @.str.3, i32 897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot deassert pipe sticky reset\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.152 = internal global ptr @qcom_pcie_init_2_4_0._entry.150, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.117, ptr @.str.3, i32 905, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot deassert axi master reset\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.155 = internal global ptr @qcom_pcie_init_2_4_0._entry.153, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.117, ptr @.str.3, i32 911, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot deassert axi master sticky reset\0A\00", [55 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.158 = internal global ptr @qcom_pcie_init_2_4_0._entry.156, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.117, ptr @.str.3, i32 917, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot deassert axi slave reset\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.161 = internal global ptr @qcom_pcie_init_2_4_0._entry.159, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.117, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot deassert power reset\0A\00", [35 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.164 = internal global ptr @qcom_pcie_init_2_4_0._entry.162, section ".printk_index", align 4
@qcom_pcie_init_2_4_0._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.117, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_4_0._entry_ptr.166 = internal global ptr @qcom_pcie_init_2_4_0._entry.165, section ".printk_index", align 4
@ops_2_7_0 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_2_7_0, ptr @qcom_pcie_init_2_7_0, ptr @qcom_pcie_post_init_2_7_0, ptr @qcom_pcie_deinit_2_7_0, ptr @qcom_pcie_post_deinit_2_7_0, ptr @qcom_pcie_2_3_2_ltssm_enable, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slave_q2a\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbu\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,pcie-sm8250\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ddrss_sf_tbu\00", [19 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pipe_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_pipe\00", [23 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_7_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.173, ptr @.str.3, i32 1207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_pcie_init_2_7_0\00", [43 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_7_0._entry_ptr = internal global ptr @qcom_pcie_init_2_7_0._entry, section ".printk_index", align 4
@qcom_pcie_init_2_7_0._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.173, ptr @.str.3, i32 1221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_7_0._entry_ptr.175 = internal global ptr @qcom_pcie_init_2_7_0._entry.174, section ".printk_index", align 4
@qcom_pcie_init_2_7_0._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.173, ptr @.str.3, i32 1229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_7_0._entry_ptr.177 = internal global ptr @qcom_pcie_init_2_7_0._entry.176, section ".printk_index", align 4
@qcom_pcie_init_2_7_0._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.173, ptr @.str.3, i32 1235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@qcom_pcie_init_2_7_0._entry_ptr.179 = internal global ptr @qcom_pcie_init_2_7_0._entry.178, section ".printk_index", align 4
@ops_1_9_0 = internal constant { %struct.qcom_pcie_ops, [36 x i8] } { %struct.qcom_pcie_ops { ptr @qcom_pcie_get_resources_2_7_0, ptr @qcom_pcie_init_2_7_0, ptr @qcom_pcie_post_init_2_7_0, ptr @qcom_pcie_deinit_2_7_0, ptr @qcom_pcie_post_deinit_2_7_0, ptr @qcom_pcie_2_3_2_ltssm_enable, ptr @qcom_pcie_config_sid_sm8250 }, [36 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iommu-map\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"qcom_pcie_driver\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1647, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1650, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"qcom_pcie_match\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1619, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1539, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1523, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1565, i32 45 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1571, i32 59 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1577, i32 59 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1583, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"qcom_pcie_dw_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1423, i32 38 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1605, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [12 x i8] c"apq8084_cfg\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1490, i32 35 }
@___asan_gen_.235 = private unnamed_addr constant [12 x i8] c"ipq8064_cfg\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1494, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant [12 x i8] c"msm8996_cfg\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1498, i32 35 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"ipq8074_cfg\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1502, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant [12 x i8] c"ipq4019_cfg\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1506, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant [11 x i8] c"sdm845_cfg\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1510, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant [11 x i8] c"sm8250_cfg\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1514, i32 35 }
@___asan_gen_.253 = private unnamed_addr constant [11 x i8] c"sc7280_cfg\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1518, i32 35 }
@___asan_gen_.256 = private unnamed_addr constant [10 x i8] c"ops_1_0_0\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1436, i32 35 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 453, i32 38 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 457, i32 33 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 461, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 465, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 469, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 473, i32 52 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 498, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 504, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 510, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 516, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 522, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 528, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [10 x i8] c"ops_2_1_0\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1428, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 256, i32 28 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 257, i32 28 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 265, i32 20 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 267, i32 20 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 279, i32 57 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 283, i32 57 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 287, i32 57 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 291, i32 57 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 295, i32 66 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 341, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 347, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 353, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 359, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 365, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 371, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 377, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 390, i32 36 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 391, i32 36 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 413, i32 37 }
@___asan_gen_.400 = private unnamed_addr constant [10 x i8] c"ops_2_3_2\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1444, i32 35 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 575, i32 28 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 585, i32 35 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 589, i32 38 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 593, i32 37 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 597, i32 36 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 630, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 636, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 642, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 648, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 654, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 703, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [10 x i8] c"ops_2_3_3\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1462, i32 35 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 989, i32 30 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 989, i32 39 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 990, i32 9 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 990, i32 25 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 991, i32 16 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1045, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1055, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1069, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1075, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1081, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1087, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1093, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [10 x i8] c"ops_2_4_0\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1454, i32 35 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 715, i32 54 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 748, i32 11 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 753, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 772, i32 11 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 776, i32 57 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 785, i32 62 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 819, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 825, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 833, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 839, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 845, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 851, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 859, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 865, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 871, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 879, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 885, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 891, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 897, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 905, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 911, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 917, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 923, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 929, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant [10 x i8] c"ops_2_7_0\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1470, i32 35 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1166, i32 20 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1167, i32 20 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1168, i32 44 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1169, i32 21 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1180, i32 41 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1184, i32 41 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1207, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1221, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1229, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1235, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant [10 x i8] c"ops_1_9_0\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1480, i32 35 }
@___asan_gen_.676 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.677 = private constant [42 x i8] c"../drivers/pci/controller/dwc/pcie-qcom.c\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.677, i32 1323, i32 32 }
@llvm.compiler.used = appending global [224 x ptr] [ptr @__initcall__kmod_pcie_qcom__293_1655_qcom_pcie_driver_init6, ptr @__pci_fixup_qcom_fixup_class1639, ptr @__pci_fixup_qcom_fixup_class1640, ptr @__pci_fixup_qcom_fixup_class1641, ptr @__pci_fixup_qcom_fixup_class1642, ptr @__pci_fixup_qcom_fixup_class1643, ptr @__pci_fixup_qcom_fixup_class1644, ptr @__pci_fixup_qcom_fixup_class1645, ptr @qcom_pcie_init_1_0_0._entry, ptr @qcom_pcie_init_1_0_0._entry.21, ptr @qcom_pcie_init_1_0_0._entry.24, ptr @qcom_pcie_init_1_0_0._entry.27, ptr @qcom_pcie_init_1_0_0._entry.30, ptr @qcom_pcie_init_1_0_0._entry.33, ptr @qcom_pcie_init_1_0_0._entry_ptr, ptr @qcom_pcie_init_1_0_0._entry_ptr.23, ptr @qcom_pcie_init_1_0_0._entry_ptr.26, ptr @qcom_pcie_init_1_0_0._entry_ptr.29, ptr @qcom_pcie_init_1_0_0._entry_ptr.32, ptr @qcom_pcie_init_1_0_0._entry_ptr.35, ptr @qcom_pcie_init_2_1_0._entry, ptr @qcom_pcie_init_2_1_0._entry.47, ptr @qcom_pcie_init_2_1_0._entry.50, ptr @qcom_pcie_init_2_1_0._entry.53, ptr @qcom_pcie_init_2_1_0._entry.56, ptr @qcom_pcie_init_2_1_0._entry.59, ptr @qcom_pcie_init_2_1_0._entry.62, ptr @qcom_pcie_init_2_1_0._entry_ptr, ptr @qcom_pcie_init_2_1_0._entry_ptr.49, ptr @qcom_pcie_init_2_1_0._entry_ptr.52, ptr @qcom_pcie_init_2_1_0._entry_ptr.55, ptr @qcom_pcie_init_2_1_0._entry_ptr.58, ptr @qcom_pcie_init_2_1_0._entry_ptr.61, ptr @qcom_pcie_init_2_1_0._entry_ptr.64, ptr @qcom_pcie_init_2_3_2._entry, ptr @qcom_pcie_init_2_3_2._entry.74, ptr @qcom_pcie_init_2_3_2._entry.76, ptr @qcom_pcie_init_2_3_2._entry.79, ptr @qcom_pcie_init_2_3_2._entry.82, ptr @qcom_pcie_init_2_3_2._entry_ptr, ptr @qcom_pcie_init_2_3_2._entry_ptr.75, ptr @qcom_pcie_init_2_3_2._entry_ptr.78, ptr @qcom_pcie_init_2_3_2._entry_ptr.81, ptr @qcom_pcie_init_2_3_2._entry_ptr.84, ptr @qcom_pcie_init_2_3_3._entry, ptr @qcom_pcie_init_2_3_3._entry.100, ptr @qcom_pcie_init_2_3_3._entry.102, ptr @qcom_pcie_init_2_3_3._entry.105, ptr @qcom_pcie_init_2_3_3._entry.108, ptr @qcom_pcie_init_2_3_3._entry.94, ptr @qcom_pcie_init_2_3_3._entry.97, ptr @qcom_pcie_init_2_3_3._entry_ptr, ptr @qcom_pcie_init_2_3_3._entry_ptr.101, ptr @qcom_pcie_init_2_3_3._entry_ptr.104, ptr @qcom_pcie_init_2_3_3._entry_ptr.107, ptr @qcom_pcie_init_2_3_3._entry_ptr.109, ptr @qcom_pcie_init_2_3_3._entry_ptr.96, ptr @qcom_pcie_init_2_3_3._entry_ptr.99, ptr @qcom_pcie_init_2_4_0._entry, ptr @qcom_pcie_init_2_4_0._entry.118, ptr @qcom_pcie_init_2_4_0._entry.121, ptr @qcom_pcie_init_2_4_0._entry.124, ptr @qcom_pcie_init_2_4_0._entry.127, ptr @qcom_pcie_init_2_4_0._entry.130, ptr @qcom_pcie_init_2_4_0._entry.133, ptr @qcom_pcie_init_2_4_0._entry.136, ptr @qcom_pcie_init_2_4_0._entry.139, ptr @qcom_pcie_init_2_4_0._entry.142, ptr @qcom_pcie_init_2_4_0._entry.145, ptr @qcom_pcie_init_2_4_0._entry.147, ptr @qcom_pcie_init_2_4_0._entry.150, ptr @qcom_pcie_init_2_4_0._entry.153, ptr @qcom_pcie_init_2_4_0._entry.156, ptr @qcom_pcie_init_2_4_0._entry.159, ptr @qcom_pcie_init_2_4_0._entry.162, ptr @qcom_pcie_init_2_4_0._entry.165, ptr @qcom_pcie_init_2_4_0._entry_ptr, ptr @qcom_pcie_init_2_4_0._entry_ptr.120, ptr @qcom_pcie_init_2_4_0._entry_ptr.123, ptr @qcom_pcie_init_2_4_0._entry_ptr.126, ptr @qcom_pcie_init_2_4_0._entry_ptr.129, ptr @qcom_pcie_init_2_4_0._entry_ptr.132, ptr @qcom_pcie_init_2_4_0._entry_ptr.135, ptr @qcom_pcie_init_2_4_0._entry_ptr.138, ptr @qcom_pcie_init_2_4_0._entry_ptr.141, ptr @qcom_pcie_init_2_4_0._entry_ptr.144, ptr @qcom_pcie_init_2_4_0._entry_ptr.146, ptr @qcom_pcie_init_2_4_0._entry_ptr.149, ptr @qcom_pcie_init_2_4_0._entry_ptr.152, ptr @qcom_pcie_init_2_4_0._entry_ptr.155, ptr @qcom_pcie_init_2_4_0._entry_ptr.158, ptr @qcom_pcie_init_2_4_0._entry_ptr.161, ptr @qcom_pcie_init_2_4_0._entry_ptr.164, ptr @qcom_pcie_init_2_4_0._entry_ptr.166, ptr @qcom_pcie_init_2_7_0._entry, ptr @qcom_pcie_init_2_7_0._entry.174, ptr @qcom_pcie_init_2_7_0._entry.176, ptr @qcom_pcie_init_2_7_0._entry.178, ptr @qcom_pcie_init_2_7_0._entry_ptr, ptr @qcom_pcie_init_2_7_0._entry_ptr.175, ptr @qcom_pcie_init_2_7_0._entry_ptr.177, ptr @qcom_pcie_init_2_7_0._entry_ptr.179, ptr @qcom_pcie_post_init_2_3_2._entry, ptr @qcom_pcie_post_init_2_3_2._entry_ptr, ptr @qcom_pcie_probe._entry, ptr @qcom_pcie_probe._entry.10, ptr @qcom_pcie_probe._entry_ptr, ptr @qcom_pcie_probe._entry_ptr.12, ptr @qcom_pcie_driver, ptr @.str, ptr @qcom_pcie_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dw_pcie_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @qcom_pcie_dw_ops, ptr @.str.11, ptr @apq8084_cfg, ptr @ipq8064_cfg, ptr @msm8996_cfg, ptr @ipq8074_cfg, ptr @ipq4019_cfg, ptr @sdm845_cfg, ptr @sm8250_cfg, ptr @sc7280_cfg, ptr @ops_1_0_0, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @ops_2_1_0, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @ops_2_3_2, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @ops_2_3_3, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.103, ptr @.str.106, ptr @ops_2_4_0, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @ops_2_7_0, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @ops_1_9_0, ptr @.str.180], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_dw_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8084_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8064_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm8996_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq8074_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipq4019_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_1_0_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_1_0_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_1_0_0._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_1_0_0._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_1_0_0._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_1_0_0._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_1_0_0._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_2_1_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_1_0._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_2_3_2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_2._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_2._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_2._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_2._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_post_init_2_3_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_2_3_3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_3_3._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_2_4_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_4_0._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_2_7_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_7_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_7_0._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_7_0._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_pcie_init_2_7_0._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops_1_9_0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @qcom_fixup_class(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 394240, ptr %class, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i123 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #8
  %tobool8.not = icmp eq ptr %call.i123, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i124 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp = icmp slt i32 %call.i124, 0
  br i1 %cmp, label %if.end10.err_pm_runtime_put_crit_edge, label %if.end13

if.end10.err_pm_runtime_put_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_runtime_put

if.end13:                                         ; preds = %if.end10
  %2 = ptrtoint ptr %call.i123 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i123, align 8
  %ops15 = getelementptr inbounds %struct.dw_pcie, ptr %call.i123, i32 0, i32 9
  %3 = ptrtoint ptr %ops15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dw_pcie_ops, ptr %ops15, align 8
  %pp16 = getelementptr inbounds %struct.dw_pcie, ptr %call.i123, i32 0, i32 7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i123, ptr %call.i, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %ops19 = getelementptr inbounds %struct.qcom_pcie, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %ops19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops19, align 4
  %pipe_clk_need_muxing = getelementptr inbounds %struct.qcom_pcie_cfg, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %pipe_clk_need_muxing to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %pipe_clk_need_muxing, align 4
  %bf.lshr = and i8 %bf.load, -128
  %pipe_clk_need_muxing20 = getelementptr inbounds %struct.qcom_pcie, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %pipe_clk_need_muxing20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load21 = load i8, ptr %pipe_clk_need_muxing20, align 4
  %bf.clear = and i8 %bf.load21, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %pipe_clk_need_muxing20, align 4
  %call22 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef 7) #8
  %reset = getelementptr inbounds %struct.qcom_pcie, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call22 to i32
  br label %err_pm_runtime_put

if.end28:                                         ; preds = %if.end13
  %call29 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #8
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %parf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %parf, align 4
  %cmp.i125 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call29 to i32
  br label %err_pm_runtime_put

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #8
  %elbi = getelementptr inbounds %struct.qcom_pcie, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %elbi to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call36, ptr %elbi, align 4
  %cmp.i126 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call36 to i32
  br label %err_pm_runtime_put

if.end42:                                         ; preds = %if.end35
  %call43 = tail call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %phy = getelementptr inbounds %struct.qcom_pcie, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43, ptr %phy, align 4
  %cmp.i127 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call43 to i32
  br label %err_pm_runtime_put

if.end49:                                         ; preds = %if.end42
  %18 = ptrtoint ptr %ops19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops19, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call51 = tail call i32 %21(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.err_pm_runtime_put_crit_edge

if.end49.err_pm_runtime_put_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_runtime_put

if.end54:                                         ; preds = %if.end49
  %ops55 = getelementptr inbounds %struct.dw_pcie, ptr %call.i123, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %ops55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @qcom_pcie_dw_ops, ptr %ops55, align 8
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy, align 4
  %call57 = tail call i32 @phy_init(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %err_pm_runtime_put

if.end61:                                         ; preds = %if.end54
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call62 = tail call i32 @dw_pcie_host_init(ptr noundef %pp16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %do.end67

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %err_pm_runtime_put

err_pm_runtime_put:                               ; preds = %do.end67, %if.then59, %if.end49.err_pm_runtime_put_crit_edge, %if.then46, %if.then39, %if.then32, %if.then25, %if.end10.err_pm_runtime_put_crit_edge
  %ret.0 = phi i32 [ %call.i124, %if.end10.err_pm_runtime_put_crit_edge ], [ %11, %if.then25 ], [ %13, %if.then32 ], [ %15, %if.then39 ], [ %17, %if.then46 ], [ %call51, %if.end49.err_pm_runtime_put_crit_edge ], [ %call57, %if.then59 ], [ %call62, %do.end67 ]
  %call.i128 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pm_runtime_put, %if.end61.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_pm_runtime_put ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_link_up(ptr noundef %pci) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %pci, i8 noundef zeroext 16) #8
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %pci, i32 0, i32 1
  %0 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbi_base, align 4
  %conv1 = zext i8 %call to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv1
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 18
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #8, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !357
  %3 = lshr i16 %2, 5
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_start_link(ptr nocapture noundef readonly %pci) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.qcom_pcie, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %ltssm_enable = getelementptr inbounds %struct.qcom_pcie_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ltssm_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ltssm_enable, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_host_init(ptr nocapture noundef readonly %pp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %reset.i = getelementptr inbounds %struct.qcom_pcie, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %ops = getelementptr inbounds %struct.qcom_pcie, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %init = getelementptr inbounds %struct.qcom_pcie_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %call1 = tail call i32 %9(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr inbounds %struct.qcom_pcie, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_power_on(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_deinit_crit_edge

if.end.err_deinit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_deinit

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %post_init = getelementptr inbounds %struct.qcom_pcie_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %post_init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %post_init, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %call11 = tail call i32 %15(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then8.if.end15_crit_edge, label %if.then8.err_disable_phy_crit_edge

if.then8.err_disable_phy_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_phy

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  tail call void @msleep(i32 noundef 100) #8
  %16 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %config_sid = getelementptr inbounds %struct.qcom_pcie_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %config_sid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config_sid, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  %call21 = tail call i32 %21(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.cleanup_crit_edge, label %err

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %if.then18
  %22 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %post_deinit = getelementptr inbounds %struct.qcom_pcie_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %post_deinit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %post_deinit, align 4
  %tobool27.not = icmp eq ptr %27, null
  br i1 %tobool27.not, label %err.err_disable_phy_crit_edge, label %if.then28

err.err_disable_phy_crit_edge:                    ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_phy

if.then28:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %27(ptr noundef %3) #8
  br label %err_disable_phy

err_disable_phy:                                  ; preds = %if.then28, %err.err_disable_phy_crit_edge, %if.then8.err_disable_phy_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then8.err_disable_phy_crit_edge ], [ %call21, %if.then28 ], [ %call21, %err.err_disable_phy_crit_edge ]
  %28 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy, align 4
  %call33 = tail call i32 @phy_power_off(ptr noundef %29) #8
  br label %err_deinit

err_deinit:                                       ; preds = %err_disable_phy, %if.end.err_deinit_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.err_deinit_crit_edge ], [ %ret.0, %err_disable_phy ]
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %deinit = getelementptr inbounds %struct.qcom_pcie_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %deinit, align 4
  tail call void %33(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %err_deinit, %if.then18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_deinit ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_get_resources_1_0_0(ptr nocapture noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.13) #8
  %vdda = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %vdda to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %vdda, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %call8 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.14) #8
  %6 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %res1, align 4
  %cmp.i63 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  %aux = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %aux, align 4
  %cmp.i64 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.16) #8
  %master_bus = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %master_bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %master_bus, align 4
  %cmp.i65 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.17) #8
  %slave_bus = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %slave_bus to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %slave_bus, align 4
  %cmp.i66 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %core = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %core, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then32, %if.then25, %if.then18, %if.then11, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %7, %if.then11 ], [ %9, %if.then18 ], [ %11, %if.then25 ], [ %13, %if.then32 ], [ %spec.select.i, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_init_1_0_0(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %core = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %aux = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #11
  br label %err_res

if.end10:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res1, align 4
  %call.i87 = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %if.end.i91, label %if.end10.do.end16_crit_edge

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.i91:                                       ; preds = %if.end10
  %call1.i89 = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %tobool2.not.i90 = icmp eq i32 %call1.i89, 0
  br i1 %tobool2.not.i90, label %if.end17, label %if.then3.i92

if.then3.i92:                                     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i92, %if.end10.do.end16_crit_edge
  %retval.0.i93.ph = phi i32 [ %call1.i89, %if.then3.i92 ], [ %call.i87, %if.end10.do.end16_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #11
  br label %err_aux

if.end17:                                         ; preds = %if.end.i91
  %master_bus = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %master_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master_bus, align 4
  %call.i95 = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.end.i99, label %if.end17.do.end23_crit_edge

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

if.end.i99:                                       ; preds = %if.end17
  %call1.i97 = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool2.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool2.not.i98, label %if.end24, label %if.then3.i100

if.then3.i100:                                    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i100, %if.end17.do.end23_crit_edge
  %retval.0.i101.ph = phi i32 [ %call1.i97, %if.then3.i100 ], [ %call.i95, %if.end17.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #11
  br label %err_iface

if.end24:                                         ; preds = %if.end.i99
  %slave_bus = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %slave_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_bus, align 4
  %call.i103 = tail call i32 @clk_prepare(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %if.end.i107, label %if.end24.do.end30_crit_edge

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.end.i107:                                      ; preds = %if.end24
  %call1.i105 = tail call i32 @clk_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %tobool2.not.i106 = icmp eq i32 %call1.i105, 0
  br i1 %tobool2.not.i106, label %if.end31, label %if.then3.i108

if.then3.i108:                                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then3.i108, %if.end24.do.end30_crit_edge
  %retval.0.i109.ph = phi i32 [ %call1.i105, %if.then3.i108 ], [ %call.i103, %if.end24.do.end30_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #11
  br label %err_master

if.end31:                                         ; preds = %if.end.i107
  %vdda = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdda, align 4
  %call32 = tail call i32 @regulator_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body39, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34) #11
  %16 = ptrtoint ptr %slave_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave_bus, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %err_master

do.body39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  tail call void @arm_heavy_mb() #8
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %18 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !359
  %20 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parf, align 4
  %add.ptr43 = getelementptr i8, ptr %21, i32 376
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !361
  %23 = or i32 %22, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parf, align 4
  %add.ptr50 = getelementptr i8, ptr %25, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %23) #8, !srcloc !359
  br label %cleanup

err_master:                                       ; preds = %do.end37, %do.end30
  %ret.0 = phi i32 [ %retval.0.i109.ph, %do.end30 ], [ %call32, %do.end37 ]
  %26 = ptrtoint ptr %master_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_bus, align 4
  tail call void @clk_disable(ptr noundef %27) #8
  tail call void @clk_unprepare(ptr noundef %27) #8
  br label %err_iface

err_iface:                                        ; preds = %err_master, %do.end23
  %ret.1 = phi i32 [ %retval.0.i101.ph, %do.end23 ], [ %ret.0, %err_master ]
  %28 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res1, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void @clk_unprepare(ptr noundef %29) #8
  br label %err_aux

err_aux:                                          ; preds = %err_iface, %do.end16
  %ret.2 = phi i32 [ %retval.0.i93.ph, %do.end16 ], [ %ret.1, %err_iface ]
  %30 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aux, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  br label %err_res

err_res:                                          ; preds = %err_aux, %do.end9
  %ret.3 = phi i32 [ %retval.0.i.ph, %do.end9 ], [ %ret.2, %err_aux ]
  %32 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core, align 4
  %call56 = tail call i32 @reset_control_assert(ptr noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %err_res, %do.body39, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.3, %err_res ], [ 0, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_deinit_1_0_0(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %core = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #8
  %slave_bus = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %slave_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_bus, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %master_bus = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %master_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_bus, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res1, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %aux = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %vdda = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %vdda to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdda, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %11) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_2_1_0_ltssm_enable(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %elbi = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %elbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elbi, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !364
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %elbi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elbi, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #8, !srcloc !359
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_get_resources_2_1_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.13, ptr %supplies, align 4
  %arrayidx5 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.36, ptr %arrayidx5, align 4
  %arrayidx8 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.37, ptr %arrayidx8, align 4
  %call = tail call i32 @devm_regulator_bulk_get(ptr noundef %3, i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %7 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %res1, align 4
  %arrayidx13 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.18, ptr %arrayidx13, align 4
  %arrayidx16 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.38, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.15, ptr %arrayidx19, align 4
  %arrayidx22 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.39, ptr %arrayidx22, align 4
  %call26 = tail call i32 @devm_clk_bulk_get(ptr noundef %3, i32 noundef 3, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %call31 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %3, i32 noundef 2, ptr noundef %arrayidx19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %pci_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %pci_reset to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %pci_reset, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %call.i117 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %axi_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %axi_reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i117, ptr %axi_reset, align 4
  %cmp.i118 = icmp ugt ptr %call.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i117 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %call.i119 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6
  %16 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i119, ptr %ahb_reset, align 4
  %cmp.i120 = icmp ugt ptr %call.i119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i119 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call.i121 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %por_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %por_reset to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i121, ptr %por_reset, align 4
  %cmp.i122 = icmp ugt ptr %call.i121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call.i121 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %call.i123 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %ext_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %ext_reset to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i123, ptr %ext_reset, align 4
  %cmp.i124 = icmp ugt ptr %call.i123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i123 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call.i125 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %phy_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %phy_reset to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i125, ptr %phy_reset, align 4
  %cmp.i.i = icmp ugt ptr %call.i125, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %call.i125 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %23, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then66, %if.then59, %if.then52, %if.then45, %if.then38, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then38 ], [ %15, %if.then45 ], [ %17, %if.then52 ], [ %19, %if.then59 ], [ %21, %if.then66 ], [ %spec.select.i, %if.end69 ], [ %call, %entry.cleanup_crit_edge ], [ %call26, %if.end.cleanup_crit_edge ], [ %call31, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_init_2_1_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %pci_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %pci_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %7) #8
  %axi_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %axi_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %axi_reset, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  %ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6
  %10 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ahb_reset, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %11) #8
  %por_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %por_reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %por_reset, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %13) #8
  %ext_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %14 = ptrtoint ptr %ext_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_reset, align 4
  %call7 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  %phy_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_reset, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !365
  tail call void @arm_heavy_mb() #8
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %18 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !359
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1
  %call9 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end12, label %if.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ahb_reset, align 4
  %call14 = tail call i32 @reset_control_deassert(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.48) #11
  br label %err_deassert_ahb

if.end19:                                         ; preds = %if.end
  %22 = ptrtoint ptr %ext_reset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ext_reset, align 4
  %call21 = tail call i32 @reset_control_deassert(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.51) #11
  br label %err_deassert_ext

if.end27:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_reset, align 4
  %call29 = tail call i32 @reset_control_deassert(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.54) #11
  br label %err_deassert_phy

if.end35:                                         ; preds = %if.end27
  %26 = ptrtoint ptr %pci_reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_reset, align 4
  %call37 = tail call i32 @reset_control_deassert(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.57) #11
  br label %err_deassert_pci

if.end43:                                         ; preds = %if.end35
  %28 = ptrtoint ptr %por_reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %por_reset, align 4
  %call45 = tail call i32 @reset_control_deassert(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.60) #11
  br label %err_deassert_por

if.end51:                                         ; preds = %if.end43
  %30 = ptrtoint ptr %axi_reset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %axi_reset, align 4
  %call53 = tail call i32 @reset_control_deassert(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.63) #11
  br label %err_deassert_axi

if.end59:                                         ; preds = %if.end51
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end59.err_clks_crit_edge

if.end59.err_clks_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clks

if.end.i:                                         ; preds = %if.end59
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end64, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %res1) #8
  br label %err_clks

if.end64:                                         ; preds = %if.end.i
  %32 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parf, align 4
  %add.ptr66 = getelementptr i8, ptr %33, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !366
  %35 = and i32 %34, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parf, align 4
  %add.ptr73 = getelementptr i8, ptr %37, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %35) #8, !srcloc !359
  %call74 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %lor.lhs.false, label %if.end64.do.body79_crit_edge

if.end64.do.body79_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

lor.lhs.false:                                    ; preds = %if.end64
  %call76 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %lor.lhs.false.if.end94_crit_edge, label %lor.lhs.false.do.body79_crit_edge

lor.lhs.false.do.body79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

do.body79:                                        ; preds = %lor.lhs.false.do.body79_crit_edge, %if.end64.do.body79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parf, align 4
  %add.ptr83 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 572004352) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parf, align 4
  %add.ptr88 = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 2021130240) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !370
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parf, align 4
  %add.ptr93 = getelementptr i8, ptr %43, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 4) #8, !srcloc !359
  br label %if.end94

if.end94:                                         ; preds = %do.body79, %lor.lhs.false.if.end94_crit_edge
  %call95 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end94.if.end111_crit_edge, label %if.then97

if.end94.if.end111_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parf, align 4
  %add.ptr101 = getelementptr i8, ptr %45, i32 64
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !371
  %47 = and i32 %46, -7937
  %48 = or i32 %47, 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !372
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parf, align 4
  %add.ptr110 = getelementptr i8, ptr %50, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %48) #8, !srcloc !359
  br label %if.end111

if.end111:                                        ; preds = %if.then97, %if.end94.if.end111_crit_edge
  %51 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parf, align 4
  %add.ptr115 = getelementptr i8, ptr %52, i32 76
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #8, !srcloc !360
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  %call119 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  %and122 = and i32 %54, -69633
  %spec.select = select i1 %tobool120.not, i32 %and122, i32 %54
  %or124 = or i32 %spec.select, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %or124)
  %56 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parf, align 4
  %add.ptr129 = getelementptr i8, ptr %57, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %55) #8, !srcloc !359
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !375
  tail call void @arm_heavy_mb() #8
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dbi_base, align 4
  %add.ptr133 = getelementptr i8, ptr %59, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 67108864) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !376
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dbi_base, align 4
  %add.ptr138 = getelementptr i8, ptr %61, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 16777216) #8, !srcloc !359
  br label %cleanup

err_clks:                                         ; preds = %if.then3.i, %if.end59.err_clks_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end59.err_clks_crit_edge ]
  %62 = ptrtoint ptr %axi_reset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %axi_reset, align 4
  %call140 = tail call i32 @reset_control_assert(ptr noundef %63) #8
  br label %err_deassert_axi

err_deassert_axi:                                 ; preds = %err_clks, %do.end58
  %ret.0 = phi i32 [ %call53, %do.end58 ], [ %retval.0.i.ph, %err_clks ]
  %64 = ptrtoint ptr %por_reset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %por_reset, align 4
  %call142 = tail call i32 @reset_control_assert(ptr noundef %65) #8
  br label %err_deassert_por

err_deassert_por:                                 ; preds = %err_deassert_axi, %do.end50
  %ret.1 = phi i32 [ %call45, %do.end50 ], [ %ret.0, %err_deassert_axi ]
  %66 = ptrtoint ptr %pci_reset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci_reset, align 4
  %call144 = tail call i32 @reset_control_assert(ptr noundef %67) #8
  br label %err_deassert_pci

err_deassert_pci:                                 ; preds = %err_deassert_por, %do.end42
  %ret.2 = phi i32 [ %call37, %do.end42 ], [ %ret.1, %err_deassert_por ]
  %68 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy_reset, align 4
  %call146 = tail call i32 @reset_control_assert(ptr noundef %69) #8
  br label %err_deassert_phy

err_deassert_phy:                                 ; preds = %err_deassert_pci, %do.end34
  %ret.3 = phi i32 [ %call29, %do.end34 ], [ %ret.2, %err_deassert_pci ]
  %70 = ptrtoint ptr %ext_reset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ext_reset, align 4
  %call148 = tail call i32 @reset_control_assert(ptr noundef %71) #8
  br label %err_deassert_ext

err_deassert_ext:                                 ; preds = %err_deassert_phy, %do.end26
  %ret.4 = phi i32 [ %call21, %do.end26 ], [ %ret.3, %err_deassert_phy ]
  %72 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ahb_reset, align 4
  %call150 = tail call i32 @reset_control_assert(ptr noundef %73) #8
  br label %err_deassert_ahb

err_deassert_ahb:                                 ; preds = %err_deassert_ext, %do.end18
  %ret.5 = phi i32 [ %call14, %do.end18 ], [ %ret.4, %err_deassert_ext ]
  %call153 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %err_deassert_ahb, %if.end111, %do.end12
  %retval.0 = phi i32 [ %call9, %do.end12 ], [ %ret.5, %err_deassert_ahb ], [ 0, %if.end111 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_deinit_2_1_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %res1) #8
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %res1) #8
  %pci_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %0 = ptrtoint ptr %pci_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #8
  %axi_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %axi_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_reset, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6
  %4 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ahb_reset, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %por_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %por_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %por_reset, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  %ext_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %ext_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext_reset, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  %phy_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_reset, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !377
  tail call void @arm_heavy_mb() #8
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %12 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !359
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1
  %call8 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_get_resources_2_3_2(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.13, ptr %supplies, align 4
  %arrayidx5 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.68, ptr %arrayidx5, align 4
  %call = tail call i32 @devm_regulator_bulk_get(ptr noundef %3, i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %call8 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  %6 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %res1, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.69) #8
  %cfg_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %cfg_clk, align 4
  %cmp.i65 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.70) #8
  %master_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %master_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %master_clk, align 4
  %cmp.i66 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.71) #8
  %slave_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %slave_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %slave_clk, align 4
  %cmp.i67 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.72) #8
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call36, ptr %pipe_clk, align 4
  %cmp.i.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call36 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then32, %if.then25, %if.then18, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then11 ], [ %9, %if.then18 ], [ %11, %if.then25 ], [ %13, %if.then32 ], [ %spec.select.i, %if.end35 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_init_2_3_2(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i, %if.end.do.end8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #11
  br label %err_aux_clk

if.end9:                                          ; preds = %if.end.i
  %cfg_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_clk, align 4
  %call.i126 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i127 = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i127, label %if.end.i130, label %if.end9.do.end15_crit_edge

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.end.i130:                                      ; preds = %if.end9
  %call1.i128 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool2.not.i129 = icmp eq i32 %call1.i128, 0
  br i1 %tobool2.not.i129, label %if.end16, label %if.then3.i131

if.then3.i131:                                    ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i131, %if.end9.do.end15_crit_edge
  %retval.0.i132.ph = phi i32 [ %call1.i128, %if.then3.i131 ], [ %call.i126, %if.end9.do.end15_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.77) #11
  br label %err_cfg_clk

if.end16:                                         ; preds = %if.end.i130
  %master_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %master_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master_clk, align 4
  %call.i134 = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %if.end.i138, label %if.end16.do.end22_crit_edge

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.end.i138:                                      ; preds = %if.end16
  %call1.i136 = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %tobool2.not.i137 = icmp eq i32 %call1.i136, 0
  br i1 %tobool2.not.i137, label %if.end23, label %if.then3.i139

if.then3.i139:                                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i139, %if.end16.do.end22_crit_edge
  %retval.0.i140.ph = phi i32 [ %call1.i136, %if.then3.i139 ], [ %call.i134, %if.end16.do.end22_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.80) #11
  br label %err_master_clk

if.end23:                                         ; preds = %if.end.i138
  %slave_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %slave_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_clk, align 4
  %call.i142 = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %if.end.i146, label %if.end23.do.end29_crit_edge

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end.i146:                                      ; preds = %if.end23
  %call1.i144 = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i144)
  %tobool2.not.i145 = icmp eq i32 %call1.i144, 0
  br i1 %tobool2.not.i145, label %if.end30, label %if.then3.i147

if.then3.i147:                                    ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i147, %if.end23.do.end29_crit_edge
  %retval.0.i148.ph = phi i32 [ %call1.i144, %if.then3.i147 ], [ %call.i142, %if.end23.do.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.83) #11
  %12 = ptrtoint ptr %master_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %err_master_clk

if.end30:                                         ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %14 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !378
  %17 = and i32 %16, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !379
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parf, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %17) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parf, align 4
  %add.ptr42 = getelementptr i8, ptr %21, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #8, !srcloc !359
  %22 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parf, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !381
  %25 = and i32 %24, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parf, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !359
  %28 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parf, align 4
  %add.ptr59 = getelementptr i8, ptr %29, i32 372
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  %31 = or i32 %30, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !384
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parf, align 4
  %add.ptr67 = getelementptr i8, ptr %33, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %31) #8, !srcloc !359
  %34 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parf, align 4
  %add.ptr71 = getelementptr i8, ptr %35, i32 424
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !385
  %37 = or i32 %36, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parf, align 4
  %add.ptr80 = getelementptr i8, ptr %39, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %37) #8, !srcloc !359
  br label %cleanup

err_master_clk:                                   ; preds = %do.end29, %do.end22
  %ret.0 = phi i32 [ %retval.0.i140.ph, %do.end22 ], [ %retval.0.i148.ph, %do.end29 ]
  %40 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %41) #8
  tail call void @clk_unprepare(ptr noundef %41) #8
  br label %err_cfg_clk

err_cfg_clk:                                      ; preds = %err_master_clk, %do.end15
  %ret.1 = phi i32 [ %retval.0.i132.ph, %do.end15 ], [ %ret.0, %err_master_clk ]
  %42 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %res1, align 4
  tail call void @clk_disable(ptr noundef %43) #8
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %err_aux_clk

err_aux_clk:                                      ; preds = %err_cfg_clk, %do.end8
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end8 ], [ %ret.1, %err_cfg_clk ]
  %call86 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %err_aux_clk, %if.end30, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %err_aux_clk ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_post_init_2_3_2(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.85) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_deinit_2_3_2(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %slave_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %slave_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %master_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %master_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %cfg_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %cfg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res1, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_post_deinit_2_3_2(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_2_3_2_ltssm_enable(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 432
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  %3 = or i32 %2, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parf, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #8, !srcloc !359
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_get_resources_2_3_3(ptr nocapture noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.14) #8
  %4 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %res1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.87) #8
  %axi_m_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %axi_m_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %axi_m_clk, align 4
  %cmp.i78 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.88) #8
  %axi_s_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %axi_s_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %axi_s_clk, align 4
  %cmp.i79 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.42) #8
  %ahb_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %ahb_clk, align 4
  %cmp.i80 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  %aux_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %aux_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %aux_clk, align 4
  %cmp.i81 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then32, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  %rst = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %13 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i82 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %for.cond.preheader.if.then41_crit_edge, label %for.cond

for.cond.preheader.if.then41_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call29 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %call.i.i.1 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx37.1 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.1, ptr %arrayidx37.1, align 4
  %cmp.i82.1 = icmp ugt ptr %call.i.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.1, label %for.cond.if.then41_crit_edge, label %for.cond.1

for.cond.if.then41_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.cond.1:                                       ; preds = %for.cond
  %call.i.i.2 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx37.2 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i.2, ptr %arrayidx37.2, align 4
  %cmp.i82.2 = icmp ugt ptr %call.i.i.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.2, label %for.cond.1.if.then41_crit_edge, label %for.cond.2

for.cond.1.if.then41_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.cond.2:                                       ; preds = %for.cond.1
  %call.i.i.3 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx37.3 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i.3, ptr %arrayidx37.3, align 4
  %cmp.i82.3 = icmp ugt ptr %call.i.i.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.3, label %for.cond.2.if.then41_crit_edge, label %for.cond.3

for.cond.2.if.then41_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.cond.3:                                       ; preds = %for.cond.2
  %call.i.i.4 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.90, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx37.4 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i.4, ptr %arrayidx37.4, align 4
  %cmp.i82.4 = icmp ugt ptr %call.i.i.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.4, label %for.cond.3.if.then41_crit_edge, label %for.cond.4

for.cond.3.if.then41_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.cond.4:                                       ; preds = %for.cond.3
  %call.i.i.5 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx37.5 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx37.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.5, ptr %arrayidx37.5, align 4
  %cmp.i82.5 = icmp ugt ptr %call.i.i.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.5, label %for.cond.4.if.then41_crit_edge, label %for.cond.5

for.cond.4.if.then41_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.cond.5:                                       ; preds = %for.cond.4
  %call.i.i.6 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.91, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %arrayidx37.6 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx37.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i.6, ptr %arrayidx37.6, align 4
  %cmp.i82.6 = icmp ugt ptr %call.i.i.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.6, label %for.cond.5.if.then41_crit_edge, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5.if.then41_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then41:                                        ; preds = %for.cond.5.if.then41_crit_edge, %for.cond.4.if.then41_crit_edge, %for.cond.3.if.then41_crit_edge, %for.cond.2.if.then41_crit_edge, %for.cond.1.if.then41_crit_edge, %for.cond.if.then41_crit_edge, %for.cond.preheader.if.then41_crit_edge
  %call.i.i.lcssa = phi ptr [ %call.i.i, %for.cond.preheader.if.then41_crit_edge ], [ %call.i.i.1, %for.cond.if.then41_crit_edge ], [ %call.i.i.2, %for.cond.1.if.then41_crit_edge ], [ %call.i.i.3, %for.cond.2.if.then41_crit_edge ], [ %call.i.i.4, %for.cond.3.if.then41_crit_edge ], [ %call.i.i.5, %for.cond.4.if.then41_crit_edge ], [ %call.i.i.6, %for.cond.5.if.then41_crit_edge ]
  %21 = ptrtoint ptr %call.i.i.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %for.cond.5.cleanup_crit_edge, %if.then32, %if.then25, %if.then18, %if.then11, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %7, %if.then11 ], [ %9, %if.then18 ], [ %11, %if.then25 ], [ %14, %if.then32 ], [ %21, %if.then41 ], [ 0, %for.cond.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_init_2_3_3(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %1, i8 noundef zeroext 16) #8
  %rst = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.inc, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %i.0251.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %for.inc.do.end_crit_edge ], [ 2, %for.inc.1.do.end_crit_edge ], [ 3, %for.inc.2.do.end_crit_edge ], [ 4, %for.inc.3.do.end_crit_edge ], [ 5, %for.inc.4.do.end_crit_edge ], [ 6, %for.inc.5.do.end_crit_edge ]
  %call5.lcssa = phi i32 [ %call5, %entry.do.end_crit_edge ], [ %call5.1, %for.inc.do.end_crit_edge ], [ %call5.2, %for.inc.1.do.end_crit_edge ], [ %call5.3, %for.inc.2.do.end_crit_edge ], [ %call5.4, %for.inc.3.do.end_crit_edge ], [ %call5.5, %for.inc.4.do.end_crit_edge ], [ %call5.6, %for.inc.5.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.92, i32 noundef %i.0251.lcssa, i32 noundef %call5.lcssa) #11
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %call5.1 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %call5.2 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.do.end_crit_edge

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %call5.3 = tail call i32 @reset_control_assert(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.do.end_crit_edge

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %call5.4 = tail call i32 @reset_control_assert(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.do.end_crit_edge

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  %call5.5 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.do.end_crit_edge

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  %call5.6 = tail call i32 @reset_control_assert(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.do.end_crit_edge

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.6:                                        ; preds = %for.inc.5
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #8
  %18 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rst, align 4
  %call12 = tail call i32 @reset_control_deassert(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.inc19, label %for.inc.6.do.end17_crit_edge

for.inc.6.do.end17_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

do.end17:                                         ; preds = %for.inc19.5.do.end17_crit_edge, %for.inc19.4.do.end17_crit_edge, %for.inc19.3.do.end17_crit_edge, %for.inc19.2.do.end17_crit_edge, %for.inc19.1.do.end17_crit_edge, %for.inc19.do.end17_crit_edge, %for.inc.6.do.end17_crit_edge
  %i.1252.lcssa = phi i32 [ 0, %for.inc.6.do.end17_crit_edge ], [ 1, %for.inc19.do.end17_crit_edge ], [ 2, %for.inc19.1.do.end17_crit_edge ], [ 3, %for.inc19.2.do.end17_crit_edge ], [ 4, %for.inc19.3.do.end17_crit_edge ], [ 5, %for.inc19.4.do.end17_crit_edge ], [ 6, %for.inc19.5.do.end17_crit_edge ]
  %call12.lcssa = phi i32 [ %call12, %for.inc.6.do.end17_crit_edge ], [ %call12.1, %for.inc19.do.end17_crit_edge ], [ %call12.2, %for.inc19.1.do.end17_crit_edge ], [ %call12.3, %for.inc19.2.do.end17_crit_edge ], [ %call12.4, %for.inc19.3.do.end17_crit_edge ], [ %call12.5, %for.inc19.4.do.end17_crit_edge ], [ %call12.6, %for.inc19.5.do.end17_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.95, i32 noundef %i.1252.lcssa, i32 noundef %call12.lcssa) #11
  br label %cleanup

for.inc19:                                        ; preds = %for.inc.6
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %call12.1 = tail call i32 @reset_control_deassert(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool13.not.1, label %for.inc19.1, label %for.inc19.do.end17_crit_edge

for.inc19.do.end17_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.inc19.1:                                      ; preds = %for.inc19
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %call12.2 = tail call i32 @reset_control_deassert(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  br i1 %tobool13.not.2, label %for.inc19.2, label %for.inc19.1.do.end17_crit_edge

for.inc19.1.do.end17_crit_edge:                   ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.inc19.2:                                      ; preds = %for.inc19.1
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  %call12.3 = tail call i32 @reset_control_deassert(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %tobool13.not.3 = icmp eq i32 %call12.3, 0
  br i1 %tobool13.not.3, label %for.inc19.3, label %for.inc19.2.do.end17_crit_edge

for.inc19.2.do.end17_crit_edge:                   ; preds = %for.inc19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.inc19.3:                                      ; preds = %for.inc19.2
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  %call12.4 = tail call i32 @reset_control_deassert(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %tobool13.not.4 = icmp eq i32 %call12.4, 0
  br i1 %tobool13.not.4, label %for.inc19.4, label %for.inc19.3.do.end17_crit_edge

for.inc19.3.do.end17_crit_edge:                   ; preds = %for.inc19.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.inc19.4:                                      ; preds = %for.inc19.3
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.5, align 4
  %call12.5 = tail call i32 @reset_control_deassert(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %tobool13.not.5 = icmp eq i32 %call12.5, 0
  br i1 %tobool13.not.5, label %for.inc19.5, label %for.inc19.4.do.end17_crit_edge

for.inc19.4.do.end17_crit_edge:                   ; preds = %for.inc19.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.inc19.5:                                      ; preds = %for.inc19.4
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.6, align 4
  %call12.6 = tail call i32 @reset_control_deassert(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.6)
  %tobool13.not.6 = icmp eq i32 %call12.6, 0
  br i1 %tobool13.not.6, label %for.inc19.6, label %for.inc19.5.do.end17_crit_edge

for.inc19.5.do.end17_crit_edge:                   ; preds = %for.inc19.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.inc19.6:                                      ; preds = %for.inc19.5
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #8
  %32 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %res1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.inc19.6.do.end27_crit_edge

for.inc19.6.do.end27_crit_edge:                   ; preds = %for.inc19.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

if.end.i:                                         ; preds = %for.inc19.6
  %call1.i = tail call i32 @clk_enable(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %33) #8
  br label %do.end27

do.end27:                                         ; preds = %if.then3.i, %for.inc19.6.do.end27_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.inc19.6.do.end27_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.98) #11
  br label %err_clk_iface

if.end28:                                         ; preds = %if.end.i
  %axi_m_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %axi_m_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %axi_m_clk, align 4
  %call.i202 = tail call i32 @clk_prepare(ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool.not.i203 = icmp eq i32 %call.i202, 0
  br i1 %tobool.not.i203, label %if.end.i206, label %if.end28.do.end34_crit_edge

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

if.end.i206:                                      ; preds = %if.end28
  %call1.i204 = tail call i32 @clk_enable(ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204)
  %tobool2.not.i205 = icmp eq i32 %call1.i204, 0
  br i1 %tobool2.not.i205, label %if.end35, label %if.then3.i207

if.then3.i207:                                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %35) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i207, %if.end28.do.end34_crit_edge
  %retval.0.i208.ph = phi i32 [ %call1.i204, %if.then3.i207 ], [ %call.i202, %if.end28.do.end34_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.98) #11
  br label %err_clk_axi_m

if.end35:                                         ; preds = %if.end.i206
  %axi_s_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %axi_s_clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %axi_s_clk, align 4
  %call.i210 = tail call i32 @clk_prepare(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool.not.i211 = icmp eq i32 %call.i210, 0
  br i1 %tobool.not.i211, label %if.end.i214, label %if.end35.do.end41_crit_edge

if.end35.do.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

if.end.i214:                                      ; preds = %if.end35
  %call1.i212 = tail call i32 @clk_enable(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i212)
  %tobool2.not.i213 = icmp eq i32 %call1.i212, 0
  br i1 %tobool2.not.i213, label %if.end42, label %if.then3.i215

if.then3.i215:                                    ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %37) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then3.i215, %if.end35.do.end41_crit_edge
  %retval.0.i216.ph = phi i32 [ %call1.i212, %if.then3.i215 ], [ %call.i210, %if.end35.do.end41_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.103) #11
  br label %err_clk_axi_s

if.end42:                                         ; preds = %if.end.i214
  %ahb_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ahb_clk, align 4
  %call.i218 = tail call i32 @clk_prepare(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i219 = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i219, label %if.end.i222, label %if.end42.do.end48_crit_edge

if.end42.do.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end.i222:                                      ; preds = %if.end42
  %call1.i220 = tail call i32 @clk_enable(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i220)
  %tobool2.not.i221 = icmp eq i32 %call1.i220, 0
  br i1 %tobool2.not.i221, label %if.end49, label %if.then3.i223

if.then3.i223:                                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %39) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then3.i223, %if.end42.do.end48_crit_edge
  %retval.0.i224.ph = phi i32 [ %call1.i220, %if.then3.i223 ], [ %call.i218, %if.end42.do.end48_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.106) #11
  br label %err_clk_ahb

if.end49:                                         ; preds = %if.end.i222
  %aux_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %aux_clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %aux_clk, align 4
  %call.i226 = tail call i32 @clk_prepare(ptr noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %tobool.not.i227 = icmp eq i32 %call.i226, 0
  br i1 %tobool.not.i227, label %if.end.i230, label %if.end49.do.end55_crit_edge

if.end49.do.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

if.end.i230:                                      ; preds = %if.end49
  %call1.i228 = tail call i32 @clk_enable(ptr noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228)
  %tobool2.not.i229 = icmp eq i32 %call1.i228, 0
  br i1 %tobool2.not.i229, label %do.body57, label %if.then3.i231

if.then3.i231:                                    ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %41) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then3.i231, %if.end49.do.end55_crit_edge
  %retval.0.i232.ph = phi i32 [ %call1.i228, %if.then3.i231 ], [ %call.i226, %if.end49.do.end55_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #11
  %42 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %43) #8
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %err_clk_ahb

do.body57:                                        ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !389
  tail call void @arm_heavy_mb() #8
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %44 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #8, !srcloc !359
  %46 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parf, align 4
  %add.ptr61 = getelementptr i8, ptr %47, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !390
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parf, align 4
  %add.ptr68 = getelementptr i8, ptr %51, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %49) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parf, align 4
  %add.ptr73 = getelementptr i8, ptr %53, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 0) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parf, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1446379520) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parf, align 4
  %add.ptr83 = getelementptr i8, ptr %57, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 0) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !395
  tail call void @arm_heavy_mb() #8
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dbi_base, align 4
  %add.ptr87 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 67108864) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !396
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dbi_base, align 4
  %add.ptr92 = getelementptr i8, ptr %61, i32 2236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 16777216) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !397
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dbi_base, align 4
  %conv97 = zext i8 %call to i32
  %add.ptr98 = getelementptr i8, ptr %63, i32 %conv97
  %add.ptr99 = getelementptr i8, ptr %add.ptr98, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 2147287552) #8, !srcloc !359
  %64 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dbi_base, align 4
  %add.ptr104 = getelementptr i8, ptr %65, i32 %conv97
  %add.ptr105 = getelementptr i8, ptr %add.ptr104, i32 12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !398
  %67 = and i32 %66, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !399
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dbi_base, align 4
  %add.ptr115 = getelementptr i8, ptr %69, i32 %conv97
  %add.ptr116 = getelementptr i8, ptr %add.ptr115, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %67) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dbi_base, align 4
  %add.ptr122 = getelementptr i8, ptr %71, i32 %conv97
  %add.ptr123 = getelementptr i8, ptr %add.ptr122, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 268435456) #8, !srcloc !359
  br label %cleanup

err_clk_ahb:                                      ; preds = %do.end55, %do.end48
  %ret.0 = phi i32 [ %retval.0.i224.ph, %do.end48 ], [ %retval.0.i232.ph, %do.end55 ]
  %72 = ptrtoint ptr %axi_s_clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %axi_s_clk, align 4
  tail call void @clk_disable(ptr noundef %73) #8
  tail call void @clk_unprepare(ptr noundef %73) #8
  br label %err_clk_axi_s

err_clk_axi_s:                                    ; preds = %err_clk_ahb, %do.end41
  %ret.1 = phi i32 [ %retval.0.i216.ph, %do.end41 ], [ %ret.0, %err_clk_ahb ]
  %74 = ptrtoint ptr %axi_m_clk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %axi_m_clk, align 4
  tail call void @clk_disable(ptr noundef %75) #8
  tail call void @clk_unprepare(ptr noundef %75) #8
  br label %err_clk_axi_m

err_clk_axi_m:                                    ; preds = %err_clk_axi_s, %do.end34
  %ret.2 = phi i32 [ %retval.0.i208.ph, %do.end34 ], [ %ret.1, %err_clk_axi_s ]
  %76 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %res1, align 4
  tail call void @clk_disable(ptr noundef %77) #8
  tail call void @clk_unprepare(ptr noundef %77) #8
  br label %err_clk_iface

err_clk_iface:                                    ; preds = %err_clk_axi_m, %do.end27
  %ret.3 = phi i32 [ %retval.0.i.ph, %do.end27 ], [ %ret.2, %err_clk_axi_m ]
  %78 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rst, align 4
  %call134 = tail call i32 @reset_control_assert(ptr noundef %79) #8
  %80 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.1, align 4
  %call134.1 = tail call i32 @reset_control_assert(ptr noundef %81) #8
  %82 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.2, align 4
  %call134.2 = tail call i32 @reset_control_assert(ptr noundef %83) #8
  %84 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.3, align 4
  %call134.3 = tail call i32 @reset_control_assert(ptr noundef %85) #8
  %86 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.4, align 4
  %call134.4 = tail call i32 @reset_control_assert(ptr noundef %87) #8
  %88 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.5, align 4
  %call134.5 = tail call i32 @reset_control_assert(ptr noundef %89) #8
  %90 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.6, align 4
  %call134.6 = tail call i32 @reset_control_assert(ptr noundef %91) #8
  br label %cleanup

cleanup:                                          ; preds = %err_clk_iface, %do.body57, %do.end17, %do.end
  %retval.0 = phi i32 [ %call5.lcssa, %do.end ], [ %call12.lcssa, %do.end17 ], [ 0, %do.body57 ], [ %ret.3, %err_clk_iface ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_deinit_2_3_3(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %axi_m_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %axi_m_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_m_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %axi_s_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %axi_s_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_s_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %ahb_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %aux_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %aux_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_get_resources_2_4_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %6 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.15, ptr %res1, align 4
  %arrayidx5 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.16, ptr %arrayidx5, align 4
  %arrayidx8 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.17, ptr %arrayidx8, align 4
  %arrayidx11 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.14, ptr %arrayidx11, align 4
  %cond = select i1 %tobool.not, i32 4, i32 3
  %num_clks = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %10 = ptrtoint ptr %num_clks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %num_clks, align 4
  %call16 = tail call i32 @devm_clk_bulk_get(ptr noundef %3, i32 noundef %cond, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %axi_m_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %axi_m_reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %axi_m_reset, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %call.i170 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %axi_s_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %13 = ptrtoint ptr %axi_s_reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i170, ptr %axi_s_reset, align 4
  %cmp.i171 = icmp ugt ptr %call.i170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i170 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  br i1 %tobool.not, label %if.end30.if.end68_crit_edge, label %if.then32

if.end30.if.end68_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then32:                                        ; preds = %if.end30
  %call.i172 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %pipe_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %pipe_reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i172, ptr %pipe_reset, align 4
  %cmp.i173 = icmp ugt ptr %call.i172, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i172 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.then32
  %call.i174 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.111, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %axi_m_vmid_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6
  %17 = ptrtoint ptr %axi_m_vmid_reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i174, ptr %axi_m_vmid_reset, align 4
  %cmp.i175 = icmp ugt ptr %call.i174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call.i174 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %call.i176 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.112, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %axi_s_xpu_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %axi_s_xpu_reset to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i176, ptr %axi_s_xpu_reset, align 4
  %cmp.i177 = icmp ugt ptr %call.i176, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call.i176 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  %call.i178 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %parf_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %parf_reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i178, ptr %parf_reset, align 4
  %cmp.i179 = icmp ugt ptr %call.i178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call.i178 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %call.i180 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %phy_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %23 = ptrtoint ptr %phy_reset to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i180, ptr %phy_reset, align 4
  %cmp.i181 = icmp ugt ptr %call.i180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then64, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call.i180 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end60.if.end68_crit_edge, %if.end30.if.end68_crit_edge
  %call.i182 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.89, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %axi_m_sticky_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %axi_m_sticky_reset to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i182, ptr %axi_m_sticky_reset, align 4
  %cmp.i183 = icmp ugt ptr %call.i182, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i182 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %call.i184 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %pipe_sticky_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 2
  %27 = ptrtoint ptr %pipe_sticky_reset to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i184, ptr %pipe_sticky_reset, align 4
  %cmp.i185 = icmp ugt ptr %call.i184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call.i184 to i32
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  %call.i186 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.114, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %pwr_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i186, ptr %pwr_reset, align 4
  %cmp.i187 = icmp ugt ptr %call.i186, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call.i186 to i32
  br label %cleanup

if.end89:                                         ; preds = %if.end82
  %call.i188 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i188, ptr %ahb_reset, align 4
  %cmp.i189 = icmp ugt ptr %call.i188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call.i188 to i32
  br label %cleanup

if.end96:                                         ; preds = %if.end89
  br i1 %tobool.not, label %if.end96.cleanup_crit_edge, label %if.then98

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %call.i190 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.115, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %phy_ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %33 = ptrtoint ptr %phy_ahb_reset to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i190, ptr %phy_ahb_reset, align 4
  %cmp.i191 = icmp ugt ptr %call.i190, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %call.i190 to i32
  %spec.select = select i1 %cmp.i191, i32 %34, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end96.cleanup_crit_edge, %if.then93, %if.then86, %if.then79, %if.then72, %if.then64, %if.then57, %if.then50, %if.then43, %if.then36, %if.then27, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then20 ], [ %14, %if.then27 ], [ %16, %if.then36 ], [ %18, %if.then43 ], [ %20, %if.then50 ], [ %22, %if.then57 ], [ %24, %if.then64 ], [ %26, %if.then72 ], [ %28, %if.then79 ], [ %30, %if.then86 ], [ %32, %if.then93 ], [ %call16, %entry.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ], [ %spec.select, %if.then98 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_init_2_4_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %axi_m_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %axi_m_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_m_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.116) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %axi_s_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %axi_s_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_s_reset, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.119) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %pipe_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %pipe_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_reset, align 4
  %call11 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.122) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %pipe_sticky_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %pipe_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_sticky_reset, align 4
  %call18 = tail call i32 @reset_control_assert(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.125) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %phy_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_reset, align 4
  %call25 = tail call i32 @reset_control_assert(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.128) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %phy_ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %14 = ptrtoint ptr %phy_ahb_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_ahb_reset, align 4
  %call32 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.131) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %axi_m_sticky_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %axi_m_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %axi_m_sticky_reset, align 4
  %call39 = tail call i32 @reset_control_assert(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.134) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %pwr_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pwr_reset, align 4
  %call46 = tail call i32 @reset_control_assert(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.137) #11
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ahb_reset, align 4
  %call53 = tail call i32 @reset_control_assert(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.140) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %22 = ptrtoint ptr %phy_ahb_reset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_ahb_reset, align 4
  %call61 = tail call i32 @reset_control_deassert(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end67, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.143) #11
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  %24 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_reset, align 4
  %call69 = tail call i32 @reset_control_deassert(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end75, label %do.end74

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.54) #11
  br label %err_rst_phy

if.end75:                                         ; preds = %if.end67
  %26 = ptrtoint ptr %pipe_reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipe_reset, align 4
  %call77 = tail call i32 @reset_control_deassert(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.148) #11
  br label %err_rst_pipe

if.end83:                                         ; preds = %if.end75
  %28 = ptrtoint ptr %pipe_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe_sticky_reset, align 4
  %call85 = tail call i32 @reset_control_deassert(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.151) #11
  br label %err_rst_pipe_sticky

if.end91:                                         ; preds = %if.end83
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %30 = ptrtoint ptr %axi_m_reset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %axi_m_reset, align 4
  %call93 = tail call i32 @reset_control_deassert(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end99, label %do.end98

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.154) #11
  br label %err_rst_axi_m

if.end99:                                         ; preds = %if.end91
  %32 = ptrtoint ptr %axi_m_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %axi_m_sticky_reset, align 4
  %call101 = tail call i32 @reset_control_deassert(ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end107, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.157) #11
  br label %err_rst_axi_m_sticky

if.end107:                                        ; preds = %if.end99
  %34 = ptrtoint ptr %axi_s_reset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %axi_s_reset, align 4
  %call109 = tail call i32 @reset_control_deassert(ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end115, label %do.end114

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.160) #11
  br label %err_rst_axi_s

if.end115:                                        ; preds = %if.end107
  %36 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwr_reset, align 4
  %call117 = tail call i32 @reset_control_deassert(ptr noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end123, label %do.end122

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.163) #11
  br label %err_rst_pwr

if.end123:                                        ; preds = %if.end115
  %38 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ahb_reset, align 4
  %call125 = tail call i32 @reset_control_deassert(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end131, label %do.end130

do.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.48) #11
  br label %err_rst_ahb

if.end131:                                        ; preds = %if.end123
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %num_clks = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %40 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %41, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end131.err_clks_crit_edge

if.end131.err_clks_crit_edge:                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clks

if.end.i:                                         ; preds = %if.end131
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %41, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end135, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %41, ptr noundef %res1) #8
  br label %err_clks

if.end135:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %42 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 64
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  %45 = and i32 %44, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parf, align 4
  %add.ptr142 = getelementptr i8, ptr %47, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %45) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !403
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parf, align 4
  %add.ptr147 = getelementptr i8, ptr %49, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 0) #8, !srcloc !359
  %50 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parf, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !404
  %53 = and i32 %52, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !405
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parf, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #8, !srcloc !359
  %56 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parf, align 4
  %add.ptr164 = getelementptr i8, ptr %57, i32 372
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  %59 = or i32 %58, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !407
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parf, align 4
  %add.ptr172 = getelementptr i8, ptr %61, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %59) #8, !srcloc !359
  %62 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parf, align 4
  %add.ptr176 = getelementptr i8, ptr %63, i32 424
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr176) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  %65 = or i32 %64, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parf, align 4
  %add.ptr185 = getelementptr i8, ptr %67, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %65) #8, !srcloc !359
  br label %cleanup

err_clks:                                         ; preds = %if.then3.i, %if.end131.err_clks_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end131.err_clks_crit_edge ]
  %68 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ahb_reset, align 4
  %call187 = tail call i32 @reset_control_assert(ptr noundef %69) #8
  br label %err_rst_ahb

err_rst_ahb:                                      ; preds = %err_clks, %do.end130
  %ret.0 = phi i32 [ %call125, %do.end130 ], [ %retval.0.i.ph, %err_clks ]
  %70 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pwr_reset, align 4
  %call189 = tail call i32 @reset_control_assert(ptr noundef %71) #8
  br label %err_rst_pwr

err_rst_pwr:                                      ; preds = %err_rst_ahb, %do.end122
  %ret.1 = phi i32 [ %call117, %do.end122 ], [ %ret.0, %err_rst_ahb ]
  %72 = ptrtoint ptr %axi_s_reset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %axi_s_reset, align 4
  %call191 = tail call i32 @reset_control_assert(ptr noundef %73) #8
  br label %err_rst_axi_s

err_rst_axi_s:                                    ; preds = %err_rst_pwr, %do.end114
  %ret.2 = phi i32 [ %call109, %do.end114 ], [ %ret.1, %err_rst_pwr ]
  %74 = ptrtoint ptr %axi_m_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %axi_m_sticky_reset, align 4
  %call193 = tail call i32 @reset_control_assert(ptr noundef %75) #8
  br label %err_rst_axi_m_sticky

err_rst_axi_m_sticky:                             ; preds = %err_rst_axi_s, %do.end106
  %ret.3 = phi i32 [ %call101, %do.end106 ], [ %ret.2, %err_rst_axi_s ]
  %76 = ptrtoint ptr %axi_m_reset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %axi_m_reset, align 4
  %call195 = tail call i32 @reset_control_assert(ptr noundef %77) #8
  br label %err_rst_axi_m

err_rst_axi_m:                                    ; preds = %err_rst_axi_m_sticky, %do.end98
  %ret.4 = phi i32 [ %call93, %do.end98 ], [ %ret.3, %err_rst_axi_m_sticky ]
  %78 = ptrtoint ptr %pipe_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pipe_sticky_reset, align 4
  %call197 = tail call i32 @reset_control_assert(ptr noundef %79) #8
  br label %err_rst_pipe_sticky

err_rst_pipe_sticky:                              ; preds = %err_rst_axi_m, %do.end90
  %ret.5 = phi i32 [ %call85, %do.end90 ], [ %ret.4, %err_rst_axi_m ]
  %80 = ptrtoint ptr %pipe_reset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pipe_reset, align 4
  %call199 = tail call i32 @reset_control_assert(ptr noundef %81) #8
  br label %err_rst_pipe

err_rst_pipe:                                     ; preds = %err_rst_pipe_sticky, %do.end82
  %ret.6 = phi i32 [ %call77, %do.end82 ], [ %ret.5, %err_rst_pipe_sticky ]
  %82 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_reset, align 4
  %call201 = tail call i32 @reset_control_assert(ptr noundef %83) #8
  br label %err_rst_phy

err_rst_phy:                                      ; preds = %err_rst_pipe, %do.end74
  %ret.7 = phi i32 [ %call69, %do.end74 ], [ %ret.6, %err_rst_pipe ]
  %84 = ptrtoint ptr %phy_ahb_reset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy_ahb_reset, align 4
  %call203 = tail call i32 @reset_control_assert(ptr noundef %85) #8
  br label %cleanup

cleanup:                                          ; preds = %err_rst_phy, %if.end135, %do.end66, %do.end58, %do.end51, %do.end44, %do.end37, %do.end30, %do.end23, %do.end16, %do.end9, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ %call11, %do.end16 ], [ %call18, %do.end23 ], [ %call25, %do.end30 ], [ %call32, %do.end37 ], [ %call39, %do.end44 ], [ %call46, %do.end51 ], [ %call53, %do.end58 ], [ %call61, %do.end66 ], [ %ret.7, %err_rst_phy ], [ 0, %if.end135 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_deinit_2_4_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %axi_m_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %axi_m_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axi_m_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #8
  %axi_s_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %axi_s_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %axi_s_reset, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %3) #8
  %pipe_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %pipe_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_reset, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %5) #8
  %pipe_sticky_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %pipe_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_sticky_reset, align 4
  %call4 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  %phy_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %phy_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_reset, align 4
  %call5 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  %phy_ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %phy_ahb_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_ahb_reset, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %11) #8
  %axi_m_sticky_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %axi_m_sticky_reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %axi_m_sticky_reset, align 4
  %call7 = tail call i32 @reset_control_assert(ptr noundef %13) #8
  %pwr_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %pwr_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pwr_reset, align 4
  %call8 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  %ahb_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %ahb_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ahb_reset, align 4
  %call9 = tail call i32 @reset_control_assert(ptr noundef %17) #8
  %num_clks = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %19, ptr noundef %res1) #8
  tail call void @clk_bulk_unprepare(i32 noundef %19, ptr noundef %res1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_get_resources_2_7_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %pci_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 3
  %4 = ptrtoint ptr %pci_reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %pci_reset, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.13, ptr %supplies, align 4
  %arrayidx9 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.68, ptr %arrayidx9, align 4
  %call12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %3, i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %8 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.15, ptr %res1, align 4
  %arrayidx17 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.69, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.70, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.71, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.167, ptr %arrayidx26, align 4
  %arrayidx29 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.168, ptr %arrayidx29, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call31 = tail call i32 @of_device_is_compatible(ptr noundef %15, ptr noundef nonnull @.str.169) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end14.if.end38_crit_edge, label %if.then33

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35 = getelementptr %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.170, ptr %arrayidx35, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end14.if.end38_crit_edge
  %.sink = phi i32 [ 7, %if.then33 ], [ 6, %if.end14.if.end38_crit_edge ]
  %17 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %17, align 4
  %call42 = tail call i32 @devm_clk_bulk_get(ptr noundef %3, i32 noundef %.sink, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.end38.cleanup_crit_edge, label %if.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  %pipe_clk_need_muxing = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 7
  %19 = ptrtoint ptr %pipe_clk_need_muxing to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %pipe_clk_need_muxing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool45.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool45.not, label %if.end44.if.end68_crit_edge, label %if.then46

if.end44.if.end68_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then46:                                        ; preds = %if.end44
  %call47 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.171) #8
  %pipe_clk_src = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 5
  %20 = ptrtoint ptr %pipe_clk_src to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call47, ptr %pipe_clk_src, align 4
  %cmp.i114 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.then46
  %call54 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.172) #8
  %phy_pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 6
  %22 = ptrtoint ptr %phy_pipe_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call54, ptr %phy_pipe_clk, align 4
  %cmp.i115 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call54 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %call61 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.39) #8
  %ref_clk_src = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 7
  %24 = ptrtoint ptr %ref_clk_src to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call61, ptr %ref_clk_src, align 4
  %cmp.i116 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then64, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end60.if.end68_crit_edge, %if.end44.if.end68_crit_edge
  %call69 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.72) #8
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 4
  %26 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call69, ptr %pipe_clk, align 4
  %cmp.i.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %call69 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %27, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then64, %if.then57, %if.then50, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %21, %if.then50 ], [ %23, %if.then57 ], [ %25, %if.then64 ], [ %spec.select.i, %if.end68 ], [ %call12, %if.end.cleanup_crit_edge ], [ %call42, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_init_2_7_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe_clk_need_muxing = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 7
  %4 = ptrtoint ptr %pipe_clk_need_muxing to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pipe_clk_need_muxing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pipe_clk_src = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 5
  %5 = ptrtoint ptr %pipe_clk_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe_clk_src, align 4
  %ref_clk_src = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 7
  %7 = ptrtoint ptr %ref_clk_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ref_clk_src, align 4
  %call5 = tail call i32 @clk_set_parent(ptr noundef %6, ptr noundef %8) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %num_clks = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %10, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.clk_bulk_prepare_enable.exit_crit_edge

if.end6.clk_bulk_prepare_enable.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_bulk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %10, ptr noundef %res1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %if.then3.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %10, ptr noundef %res1) #8
  br label %clk_bulk_prepare_enable.exit

clk_bulk_prepare_enable.exit:                     ; preds = %if.then3.i, %if.end6.clk_bulk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end6.clk_bulk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp9, label %clk_bulk_prepare_enable.exit.err_disable_regulators_crit_edge, label %clk_bulk_prepare_enable.exit.if.end11_crit_edge

clk_bulk_prepare_enable.exit.if.end11_crit_edge:  ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

clk_bulk_prepare_enable.exit.err_disable_regulators_crit_edge: ; preds = %clk_bulk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_regulators

if.end11:                                         ; preds = %clk_bulk_prepare_enable.exit.if.end11_crit_edge, %if.end.i.if.end11_crit_edge
  %pci_reset = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 3
  %11 = ptrtoint ptr %pci_reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_reset, align 4
  %call12 = tail call i32 @reset_control_assert(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.err_disable_clocks_crit_edge, label %if.end18

if.end11.err_disable_clocks_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clocks

if.end18:                                         ; preds = %if.end11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #8
  %13 = ptrtoint ptr %pci_reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_reset, align 4
  %call20 = tail call i32 @reset_control_deassert(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.err_disable_clocks_crit_edge, label %if.end26

if.end18.err_disable_clocks_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clocks

if.end26:                                         ; preds = %if.end18
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 4
  %15 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipe_clk, align 4
  %call.i137 = tail call i32 @clk_prepare(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.end.i141, label %if.end26.err_disable_clocks_crit_edge

if.end26.err_disable_clocks_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clocks

if.end.i141:                                      ; preds = %if.end26
  %call1.i139 = tail call i32 @clk_enable(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool2.not.i140 = icmp eq i32 %call1.i139, 0
  br i1 %tobool2.not.i140, label %do.body34, label %if.then3.i142

if.then3.i142:                                    ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %err_disable_clocks

do.body34:                                        ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !410
  tail call void @arm_heavy_mb() #8
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %17 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #8, !srcloc !359
  %19 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parf, align 4
  %add.ptr38 = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !411
  %22 = and i32 %21, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !412
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parf, align 4
  %add.ptr45 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %22) #8, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parf, align 4
  %add.ptr50 = getelementptr i8, ptr %26, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #8, !srcloc !359
  %27 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parf, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  %30 = and i32 %29, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parf, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !359
  %33 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parf, align 4
  %add.ptr67 = getelementptr i8, ptr %34, i32 372
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  %36 = or i32 %35, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parf, align 4
  %add.ptr75 = getelementptr i8, ptr %38, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %36) #8, !srcloc !359
  %39 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parf, align 4
  %add.ptr79 = getelementptr i8, ptr %40, i32 376
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #8, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  %42 = or i32 %41, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parf, align 4
  %add.ptr88 = getelementptr i8, ptr %44, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %42) #8, !srcloc !359
  br label %cleanup

err_disable_clocks:                               ; preds = %if.then3.i142, %if.end26.err_disable_clocks_crit_edge, %if.end18.err_disable_clocks_crit_edge, %if.end11.err_disable_clocks_crit_edge
  %.str.85.sink = phi ptr [ @.str.57, %if.end11.err_disable_clocks_crit_edge ], [ @.str.57, %if.end18.err_disable_clocks_crit_edge ], [ @.str.85, %if.end26.err_disable_clocks_crit_edge ], [ @.str.85, %if.then3.i142 ]
  %ret.0 = phi i32 [ %call12, %if.end11.err_disable_clocks_crit_edge ], [ %call20, %if.end18.err_disable_clocks_crit_edge ], [ %call.i137, %if.end26.err_disable_clocks_crit_edge ], [ %call1.i139, %if.then3.i142 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.85.sink) #11
  %45 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %46, ptr noundef %res1) #8
  tail call void @clk_bulk_unprepare(i32 noundef %46, ptr noundef %res1) #8
  br label %err_disable_regulators

err_disable_regulators:                           ; preds = %err_disable_clocks, %clk_bulk_prepare_enable.exit.err_disable_regulators_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %clk_bulk_prepare_enable.exit.err_disable_regulators_crit_edge ], [ %ret.0, %err_disable_clocks ]
  %call94 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_regulators, %do.body34, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.1, %err_disable_regulators ], [ 0, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_post_init_2_7_0(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_clk_need_muxing = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 7
  %0 = ptrtoint ptr %pipe_clk_need_muxing to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %pipe_clk_need_muxing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pipe_clk_src = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 5
  %1 = ptrtoint ptr %pipe_clk_src to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pipe_clk_src, align 4
  %phy_pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 6
  %3 = ptrtoint ptr %phy_pipe_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_pipe_clk, align 4
  %call = tail call i32 @clk_set_parent(ptr noundef %2, ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 4
  %5 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_deinit_2_7_0(ptr noundef %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3
  %num_clks = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %1, ptr noundef %res1) #8
  tail call void @clk_bulk_unprepare(i32 noundef %1, ptr noundef %res1) #8
  %supplies = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 2
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_pcie_post_deinit_2_7_0(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_clk = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 3, i32 0, i32 4
  %0 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_pcie_config_sid_sm8250(ptr nocapture noundef readonly %pcie) #3 align 64 {
entry:
  %qcom_pcie_crc8_table = alloca [256 x i8], align 1
  %size = alloca i32, align 4
  %bdf_be = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parf = getelementptr inbounds %struct.qcom_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %parf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parf, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8192
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %qcom_pcie_crc8_table) #8
  %6 = call ptr @memset(ptr %qcom_pcie_crc8_table, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %size, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call = call ptr @of_get_property(ptr noundef %9, ptr noundef nonnull @.str.180, ptr noundef nonnull %size) #8
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #12
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %div78 = lshr i32 %15, 2
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.180, ptr noundef nonnull %call9.i.i, i32 noundef %div78, i32 noundef 0) #8
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @crc8_populate_msb(ptr noundef nonnull %qcom_pcie_crc8_table, i8 noundef zeroext 7) #8
  call void @mmioset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1024) #8
  %smmu_sid = getelementptr inbounds %struct.anon.91, ptr %call9.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %smmu_sid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smmu_sid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp83.not = icmp ult i32 %17, 16
  br i1 %cmp83.not, label %if.end5.for.end_crit_edge, label %for.body.preheader

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end5
  %div879 = lshr i32 %17, 4
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.preheader
  %i.084 = phi i32 [ %inc46, %while.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bdf_be) #8
  %arrayidx9 = getelementptr %struct.anon.91, ptr %call9.i.i, i32 %i.084
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9, align 16
  %conv = trunc i32 %21 to i16
  %22 = ptrtoint ptr %bdf_be to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %bdf_be, align 2
  %call11 = call zeroext i8 @crc8(ptr noundef nonnull %qcom_pcie_crc8_table, ptr noundef nonnull %bdf_be, i32 noundef 2, i8 noundef zeroext 0) #8
  %conv12 = zext i8 %call11 to i32
  %mul = shl nuw nsw i32 %conv12, 2
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %mul
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !360
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not80 = icmp eq i32 %23, 0
  br i1 %tobool16.not80, label %for.body.while.end_crit_edge, label %while.body.preheader

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %for.body
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  br label %while.body

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %while.body.preheader
  %val.082 = phi i32 [ %27, %if.end24.while.body_crit_edge ], [ %24, %while.body.preheader ]
  %hash.081 = phi i8 [ %inc, %if.end24.while.body_crit_edge ], [ %call11, %while.body.preheader ]
  %inc = add i8 %hash.081, 1
  %and = and i32 %val.082, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %conv20 = zext i8 %inc to i32
  br i1 %tobool18.not, label %if.then19, label %while.body.if.end24_crit_edge

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %val.082, %conv20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  call void @arm_heavy_mb() #8
  %25 = call i32 @llvm.bswap.i32(i32 %or)
  %conv21 = zext i8 %hash.081 to i32
  %mul22 = shl nuw nsw i32 %conv21, 2
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %mul22
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %25) #8, !srcloc !359
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %while.body.if.end24_crit_edge
  %mul28 = shl nuw nsw i32 %conv20, 2
  %add.ptr29 = getelementptr i8, ptr %add.ptr, i32 %mul28
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !360
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %for.body.while.end_crit_edge
  %mul44.pre-phi = phi i32 [ %mul, %for.body.while.end_crit_edge ], [ %mul28, %if.end24.while.end_crit_edge ]
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9, align 16
  %shl = shl i32 %29, 16
  %smmu_sid36 = getelementptr %struct.anon.91, ptr %call9.i.i, i32 %i.084, i32 2
  %30 = ptrtoint ptr %smmu_sid36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smmu_sid36, align 8
  %sub = sub i32 %31, %19
  %shl37 = shl i32 %sub, 8
  %or38 = or i32 %shl37, %shl
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !423
  call void @arm_heavy_mb() #8
  %32 = call i32 @llvm.bswap.i32(i32 %or38)
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %mul44.pre-phi
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %32) #8, !srcloc !359
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bdf_be) #8
  %inc46 = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc46, %div879
  br i1 %exitcond.not, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %while.end.for.end_crit_edge, %if.end5.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %qcom_pcie_crc8_table) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !329, !330, !332, !333, !335, !336, !338, !339, !341, !343, !345}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !{ptr @__pci_fixup_qcom_fixup_class1639, !1, !"__pci_fixup_qcom_fixup_class1639", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1639, i32 1}
!2 = !{ptr @__pci_fixup_qcom_fixup_class1640, !3, !"__pci_fixup_qcom_fixup_class1640", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1640, i32 1}
!4 = !{ptr @__pci_fixup_qcom_fixup_class1641, !5, !"__pci_fixup_qcom_fixup_class1641", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1641, i32 1}
!6 = !{ptr @__pci_fixup_qcom_fixup_class1642, !7, !"__pci_fixup_qcom_fixup_class1642", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1642, i32 1}
!8 = !{ptr @__pci_fixup_qcom_fixup_class1643, !9, !"__pci_fixup_qcom_fixup_class1643", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1643, i32 1}
!10 = !{ptr @__pci_fixup_qcom_fixup_class1644, !11, !"__pci_fixup_qcom_fixup_class1644", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1644, i32 1}
!12 = !{ptr @__pci_fixup_qcom_fixup_class1645, !13, !"__pci_fixup_qcom_fixup_class1645", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1645, i32 1}
!14 = !{ptr @__initcall__kmod_pcie_qcom__293_1655_qcom_pcie_driver_init6, !15, !"__initcall__kmod_pcie_qcom__293_1655_qcom_pcie_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1655, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1650, i32 11}
!18 = !{ptr @qcom_pcie_driver, !19, !"qcom_pcie_driver", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1647, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1539, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @qcom_pcie_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_pcie_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1565, i32 45}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1571, i32 59}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1577, i32 59}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1583, i32 41}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1605, i32 3}
!38 = !{ptr @qcom_pcie_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qcom_pcie_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @dw_pcie_ops, !41, !"dw_pcie_ops", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1523, i32 33}
!42 = !{ptr @qcom_pcie_dw_ops, !43, !"qcom_pcie_dw_ops", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1423, i32 38}
!44 = !{ptr @qcom_pcie_match, !45, !"qcom_pcie_match", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1619, i32 34}
!46 = !{ptr @apq8084_cfg, !47, !"apq8084_cfg", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1490, i32 35}
!48 = !{ptr @ops_1_0_0, !49, !"ops_1_0_0", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1436, i32 35}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 453, i32 38}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 457, i32 33}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 461, i32 31}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 465, i32 38}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 469, i32 37}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 473, i32 52}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 498, i32 3}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @qcom_pcie_init_1_0_0._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @qcom_pcie_init_1_0_0._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 504, i32 3}
!69 = !{ptr @qcom_pcie_init_1_0_0._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @qcom_pcie_init_1_0_0._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 510, i32 3}
!73 = !{ptr @qcom_pcie_init_1_0_0._entry.24, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qcom_pcie_init_1_0_0._entry_ptr.26, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 516, i32 3}
!77 = !{ptr @qcom_pcie_init_1_0_0._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qcom_pcie_init_1_0_0._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 522, i32 3}
!81 = !{ptr @qcom_pcie_init_1_0_0._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qcom_pcie_init_1_0_0._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 528, i32 3}
!85 = !{ptr @qcom_pcie_init_1_0_0._entry.33, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @qcom_pcie_init_1_0_0._entry_ptr.35, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ipq8064_cfg, !88, !"ipq8064_cfg", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1494, i32 35}
!89 = !{ptr @ops_2_1_0, !90, !"ops_2_1_0", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1428, i32 35}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 256, i32 28}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 257, i32 28}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 265, i32 20}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 267, i32 20}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 279, i32 57}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 283, i32 57}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 287, i32 57}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 291, i32 57}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 295, i32 66}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 341, i32 3}
!111 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @qcom_pcie_init_2_1_0._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 347, i32 3}
!116 = !{ptr @qcom_pcie_init_2_1_0._entry.47, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr.49, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 353, i32 3}
!120 = !{ptr @qcom_pcie_init_2_1_0._entry.50, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr.52, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 359, i32 3}
!124 = !{ptr @qcom_pcie_init_2_1_0._entry.53, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr.55, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 365, i32 3}
!128 = !{ptr @qcom_pcie_init_2_1_0._entry.56, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr.58, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 371, i32 3}
!132 = !{ptr @qcom_pcie_init_2_1_0._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 377, i32 3}
!136 = !{ptr @qcom_pcie_init_2_1_0._entry.62, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @qcom_pcie_init_2_1_0._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 390, i32 36}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 391, i32 36}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 413, i32 37}
!144 = !{ptr @msm8996_cfg, !145, !"msm8996_cfg", i1 false, i1 false}
!145 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1498, i32 35}
!146 = !{ptr @ops_2_3_2, !147, !"ops_2_3_2", i1 false, i1 false}
!147 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1444, i32 35}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 575, i32 28}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 585, i32 35}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 589, i32 38}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 593, i32 37}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 597, i32 36}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 630, i32 3}
!160 = !{ptr @qcom_pcie_init_2_3_2._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @qcom_pcie_init_2_3_2._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @qcom_pcie_init_2_3_2._entry.74, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 636, i32 3}
!164 = !{ptr @qcom_pcie_init_2_3_2._entry_ptr.75, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 642, i32 3}
!167 = !{ptr @qcom_pcie_init_2_3_2._entry.76, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qcom_pcie_init_2_3_2._entry_ptr.78, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 648, i32 3}
!171 = !{ptr @qcom_pcie_init_2_3_2._entry.79, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qcom_pcie_init_2_3_2._entry_ptr.81, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 654, i32 3}
!175 = !{ptr @qcom_pcie_init_2_3_2._entry.82, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @qcom_pcie_init_2_3_2._entry_ptr.84, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 703, i32 3}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qcom_pcie_post_init_2_3_2._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qcom_pcie_post_init_2_3_2._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @ipq8074_cfg, !183, !"ipq8074_cfg", i1 false, i1 false}
!183 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1502, i32 35}
!184 = !{ptr @ops_2_3_3, !185, !"ops_2_3_3", i1 false, i1 false}
!185 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1462, i32 35}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 989, i32 30}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 989, i32 39}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 990, i32 9}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 990, i32 25}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 991, i32 16}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1045, i32 4}
!198 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @qcom_pcie_init_2_3_3._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1055, i32 4}
!203 = !{ptr @qcom_pcie_init_2_3_3._entry.94, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr.96, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1069, i32 3}
!207 = !{ptr @qcom_pcie_init_2_3_3._entry.97, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr.99, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @qcom_pcie_init_2_3_3._entry.100, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1075, i32 3}
!211 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr.101, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1081, i32 3}
!214 = !{ptr @qcom_pcie_init_2_3_3._entry.102, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr.104, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1087, i32 3}
!218 = !{ptr @qcom_pcie_init_2_3_3._entry.105, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr.107, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @qcom_pcie_init_2_3_3._entry.108, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1093, i32 3}
!222 = !{ptr @qcom_pcie_init_2_3_3._entry_ptr.109, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @ipq4019_cfg, !224, !"ipq4019_cfg", i1 false, i1 false}
!224 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1506, i32 35}
!225 = !{ptr @ops_2_4_0, !226, !"ops_2_4_0", i1 false, i1 false}
!226 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1454, i32 35}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 715, i32 54}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 748, i32 11}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 753, i32 10}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 772, i32 11}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 776, i32 57}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 785, i32 62}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 819, i32 3}
!241 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @qcom_pcie_init_2_4_0._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 825, i32 3}
!246 = !{ptr @qcom_pcie_init_2_4_0._entry.118, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.120, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 833, i32 3}
!250 = !{ptr @qcom_pcie_init_2_4_0._entry.121, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.123, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.125, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 839, i32 3}
!254 = !{ptr @qcom_pcie_init_2_4_0._entry.124, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.126, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 845, i32 3}
!258 = !{ptr @qcom_pcie_init_2_4_0._entry.127, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.129, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.131, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 851, i32 3}
!262 = !{ptr @qcom_pcie_init_2_4_0._entry.130, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.132, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.134, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 859, i32 3}
!266 = !{ptr @qcom_pcie_init_2_4_0._entry.133, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.135, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.137, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 865, i32 3}
!270 = !{ptr @qcom_pcie_init_2_4_0._entry.136, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.138, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.140, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 871, i32 3}
!274 = !{ptr @qcom_pcie_init_2_4_0._entry.139, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.141, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.143, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 879, i32 3}
!278 = !{ptr @qcom_pcie_init_2_4_0._entry.142, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.144, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @qcom_pcie_init_2_4_0._entry.145, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 885, i32 3}
!282 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.146, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.148, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 891, i32 3}
!285 = !{ptr @qcom_pcie_init_2_4_0._entry.147, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.149, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.151, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 897, i32 3}
!289 = !{ptr @qcom_pcie_init_2_4_0._entry.150, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.152, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.154, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 905, i32 3}
!293 = !{ptr @qcom_pcie_init_2_4_0._entry.153, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.155, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.157, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 911, i32 3}
!297 = !{ptr @qcom_pcie_init_2_4_0._entry.156, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.158, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.160, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 917, i32 3}
!301 = !{ptr @qcom_pcie_init_2_4_0._entry.159, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.161, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.163, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 923, i32 3}
!305 = !{ptr @qcom_pcie_init_2_4_0._entry.162, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.164, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @qcom_pcie_init_2_4_0._entry.165, !308, !"_entry", i1 false, i1 false}
!308 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 929, i32 3}
!309 = !{ptr @qcom_pcie_init_2_4_0._entry_ptr.166, !308, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @sdm845_cfg, !311, !"sdm845_cfg", i1 false, i1 false}
!311 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1510, i32 35}
!312 = !{ptr @ops_2_7_0, !313, !"ops_2_7_0", i1 false, i1 false}
!313 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1470, i32 35}
!314 = !{ptr @.str.167, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1166, i32 20}
!316 = !{ptr @.str.168, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1167, i32 20}
!318 = !{ptr @.str.169, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1168, i32 44}
!320 = !{ptr @.str.170, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1169, i32 21}
!322 = !{ptr @.str.171, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1180, i32 41}
!324 = !{ptr @.str.172, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1184, i32 41}
!326 = !{ptr @.str.173, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1207, i32 3}
!328 = !{ptr @qcom_pcie_init_2_7_0._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @qcom_pcie_init_2_7_0._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @qcom_pcie_init_2_7_0._entry.174, !331, !"_entry", i1 false, i1 false}
!331 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1221, i32 3}
!332 = !{ptr @qcom_pcie_init_2_7_0._entry_ptr.175, !331, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @qcom_pcie_init_2_7_0._entry.176, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1229, i32 3}
!335 = !{ptr @qcom_pcie_init_2_7_0._entry_ptr.177, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @qcom_pcie_init_2_7_0._entry.178, !337, !"_entry", i1 false, i1 false}
!337 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1235, i32 3}
!338 = !{ptr @qcom_pcie_init_2_7_0._entry_ptr.179, !337, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @sm8250_cfg, !340, !"sm8250_cfg", i1 false, i1 false}
!340 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1514, i32 35}
!341 = !{ptr @ops_1_9_0, !342, !"ops_1_9_0", i1 false, i1 false}
!342 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1480, i32 35}
!343 = !{ptr @.str.180, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1323, i32 32}
!345 = !{ptr @sc7280_cfg, !346, !"sc7280_cfg", i1 false, i1 false}
!346 = !{!"../drivers/pci/controller/dwc/pcie-qcom.c", i32 1518, i32 35}
!347 = !{i32 1, !"wchar_size", i32 2}
!348 = !{i32 1, !"min_enum_size", i32 4}
!349 = !{i32 8, !"branch-target-enforcement", i32 0}
!350 = !{i32 8, !"sign-return-address", i32 0}
!351 = !{i32 8, !"sign-return-address-all", i32 0}
!352 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!353 = !{i32 7, !"uwtable", i32 1}
!354 = !{i32 7, !"frame-pointer", i32 2}
!355 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!356 = !{i64 4312809}
!357 = !{i64 2155934723}
!358 = !{i64 2155848358}
!359 = !{i64 4313229}
!360 = !{i64 4313647}
!361 = !{i64 2155849564}
!362 = !{i64 2155849861}
!363 = !{i64 2155816983}
!364 = !{i64 2155817284}
!365 = !{i64 2155819211}
!366 = !{i64 2155831949}
!367 = !{i64 2155832243}
!368 = !{i64 2155832723}
!369 = !{i64 2155833304}
!370 = !{i64 2155833806}
!371 = !{i64 2155834502}
!372 = !{i64 2155835427}
!373 = !{i64 2155836093}
!374 = !{i64 2155836480}
!375 = !{i64 2155836883}
!376 = !{i64 2155837392}
!377 = !{i64 2155818430}
!378 = !{i64 2155861028}
!379 = !{i64 2155861322}
!380 = !{i64 2155861716}
!381 = !{i64 2155862377}
!382 = !{i64 2155862672}
!383 = !{i64 2155863343}
!384 = !{i64 2155863639}
!385 = !{i64 2155864311}
!386 = !{i64 2155864608}
!387 = !{i64 2155850533}
!388 = !{i64 2155850829}
!389 = !{i64 2155913937}
!390 = !{i64 2155914625}
!391 = !{i64 2155914919}
!392 = !{i64 2155915313}
!393 = !{i64 2155916601}
!394 = !{i64 2155917706}
!395 = !{i64 2155918102}
!396 = !{i64 2155918504}
!397 = !{i64 2155918920}
!398 = !{i64 2155919658}
!399 = !{i64 2155919900}
!400 = !{i64 2155920328}
!401 = !{i64 2155897088}
!402 = !{i64 2155897382}
!403 = !{i64 2155897776}
!404 = !{i64 2155898437}
!405 = !{i64 2155898732}
!406 = !{i64 2155899403}
!407 = !{i64 2155899699}
!408 = !{i64 2155900371}
!409 = !{i64 2155900668}
!410 = !{i64 2155928425}
!411 = !{i64 2155929093}
!412 = !{i64 2155929387}
!413 = !{i64 2155929781}
!414 = !{i64 2155930442}
!415 = !{i64 2155930737}
!416 = !{i64 2155931408}
!417 = !{i64 2155931704}
!418 = !{i64 2155932916}
!419 = !{i64 2155933213}
!420 = !{i64 2155935856}
!421 = !{i64 2155936097}
!422 = !{i64 2155936861}
!423 = !{i64 2155937094}
