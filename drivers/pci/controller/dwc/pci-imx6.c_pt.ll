; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pci-imx6.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-imx6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx6_pcie_drvdata = type { i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.imx6_pcie = type { ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }

@__pci_fixup_imx6_pcie_quirk1322 = internal constant %struct.pci_fixup { i16 5827, i16 -21555, i32 1540, i32 8, ptr @imx6_pcie_quirk }, section ".pci_fixup_header", align 4
@__initcall__kmod_pci_imx6__329_1340_imx6_pcie_init6 = internal global ptr @imx6_pcie_init, section ".initcall6.init", align 4
@imx6_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx6_pcie_probe, ptr null, ptr @imx6_pcie_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 1, i32 1, ptr @imx6_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@imx6_pcie_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Limiting cfg_size to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx6_pcie_quirk\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pci/controller/dwc/pci-imx6.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx6_pcie_quirk._entry_ptr = internal global ptr @imx6_pcie_quirk._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6q-pcie\00", [21 x i8] zeroinitializer }, align 32
@imx6_pcie_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @drvdata, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @drvdata, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @drvdata, i64 36) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @drvdata, i64 48) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @drvdata, i64 60) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@imx6_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6_pcie_suspend_noirq, ptr @imx6_pcie_resume_noirq, ptr @imx6_pcie_suspend_noirq, ptr @imx6_pcie_resume_noirq, ptr @imx6_pcie_suspend_noirq, ptr @imx6_pcie_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx6_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @imx6_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,imx7d-pcie-phy\00", [45 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1054, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to map PCIe PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx6_pcie_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry_ptr = internal global ptr @imx6_pcie_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset-gpio-active-high\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCIe reset\00", [21 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 1078, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry_ptr.15 = internal global ptr @imx6_pcie_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_bus\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pcie_bus clock source missing or invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pcie clock source missing or invalid\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcie_inbound_axi\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pcie_inbound_axi clock missing or invalid\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_aux\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pcie_aux clock source missing or invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pciephy\00", [24 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.2, i32 1117, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get PCIEPHY reset control\0A\00", [59 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry_ptr.27 = internal global ptr @imx6_pcie_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apps\00", [27 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.8, ptr @.str.2, i32 1124, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get PCIE APPS reset control\0A\00", [57 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry_ptr.31 = internal global ptr @imx6_pcie_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get pcie apps reset control\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get pcie phy\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pcie_phy clock source missing or invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"turnoff\00", [24 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.8, ptr @.str.2, i32 1160, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get TURNOFF reset control\0A\00", [59 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry_ptr.40 = internal global ptr @imx6_pcie_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", [43 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.8, ptr @.str.2, i32 1168, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to find iomuxc registers\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6_pcie_probe._entry_ptr.44 = internal global ptr @imx6_pcie_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,tx-deemph-gen1\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl,tx-deemph-gen2-3p5db\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,tx-deemph-gen2-6db\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,tx-swing-full\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,tx-swing-low\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,max-link-speed\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vpcie\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vph\00", [28 x i8] zeroinitializer }, align 32
@imx6_pcie_start_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 844, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to bring link up!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx6_pcie_start_link\00", [43 x i8] zeroinitializer }, align 32
@imx6_pcie_start_link._entry_ptr = internal global ptr @imx6_pcie_start_link._entry, section ".printk_index", align 4
@imx6_pcie_start_link._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 852, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@imx6_pcie_start_link._entry_ptr.56 = internal global ptr @imx6_pcie_start_link._entry.55, section ".printk_index", align 4
@imx6_pcie_start_link._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.2, i32 856, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Link: Gen2 disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@imx6_pcie_start_link._entry_ptr.59 = internal global ptr @imx6_pcie_start_link._entry.57, section ".printk_index", align 4
@imx6_pcie_start_link._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.2, i32 860, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Link up, Gen%i\0A\00", [16 x i8] zeroinitializer }, align 32
@imx6_pcie_start_link._entry_ptr.62 = internal global ptr @imx6_pcie_start_link._entry.60, section ".printk_index", align 4
@imx6_pcie_start_link.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.63, ptr @.str.54, ptr @.str.2, ptr @.str.64, i8 0, i8 -40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_imx6\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@imx6_pcie_wait_for_speed_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 767, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Speed change timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imx6_pcie_wait_for_speed_change\00", [32 x i8] zeroinitializer }, align 32
@imx6_pcie_wait_for_speed_change._entry_ptr = internal global ptr @imx6_pcie_wait_for_speed_change._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx6_pcie_assert_core_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 409, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to disable vpcie regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imx6_pcie_assert_core_reset\00", [36 x i8] zeroinitializer }, align 32
@imx6_pcie_assert_core_reset._entry_ptr = internal global ptr @imx6_pcie_assert_core_reset._entry, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 507, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable vpcie regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"imx6_pcie_deassert_core_reset\00", [34 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr = internal global ptr @imx6_pcie_deassert_core_reset._entry, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 514, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable pcie_phy clock\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.73 = internal global ptr @imx6_pcie_deassert_core_reset._entry.71, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.2, i32 520, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable pcie_bus clock\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.76 = internal global ptr @imx6_pcie_deassert_core_reset._entry.74, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.2, i32 526, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to enable pcie clock\0A\00", [35 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.79 = internal global ptr @imx6_pcie_deassert_core_reset._entry.77, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.70, ptr @.str.2, i32 532, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable pcie ref clock\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.82 = internal global ptr @imx6_pcie_deassert_core_reset._entry.80, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.70, ptr @.str.2, i32 539, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to power on PHY\0A\00", [40 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.85 = internal global ptr @imx6_pcie_deassert_core_reset._entry.83, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.70, ptr @.str.2, i32 562, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"waiting for phy ready timeout!\0A\00", [32 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.88 = internal global ptr @imx6_pcie_deassert_core_reset._entry.86, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.70, ptr @.str.2, i32 583, ptr @.str.91, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Unable to apply ERR010728 workaround. DT missing fsl,imx7d-pcie-phy phandle ?\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.92 = internal global ptr @imx6_pcie_deassert_core_reset._entry.89, section ".printk_index", align 4
@imx6_pcie_deassert_core_reset._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.70, ptr @.str.2, i32 615, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@imx6_pcie_deassert_core_reset._entry_ptr.94 = internal global ptr @imx6_pcie_deassert_core_reset._entry.93, section ".printk_index", align 4
@imx6_pcie_enable_ref_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 431, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable pcie_axi clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx6_pcie_enable_ref_clk\00", [39 x i8] zeroinitializer }, align 32
@imx6_pcie_enable_ref_clk._entry_ptr = internal global ptr @imx6_pcie_enable_ref_clk._entry, section ".printk_index", align 4
@imx6_pcie_enable_ref_clk._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 458, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to enable pcie_aux clock\0A\00", [63 x i8] zeroinitializer }, align 32
@imx6_pcie_enable_ref_clk._entry_ptr.99 = internal global ptr @imx6_pcie_enable_ref_clk._entry.97, section ".printk_index", align 4
@imx6_pcie_enable_ref_clk._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 463, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@imx6_pcie_enable_ref_clk._entry_ptr.101 = internal global ptr @imx6_pcie_enable_ref_clk._entry.100, section ".printk_index", align 4
@imx7d_pcie_wait_for_phy_pll_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 494, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCIe PLL lock timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"imx7d_pcie_wait_for_phy_pll_lock\00", [63 x i8] zeroinitializer }, align 32
@imx7d_pcie_wait_for_phy_pll_lock._entry_ptr = internal global ptr @imx7d_pcie_wait_for_phy_pll_lock._entry, section ".printk_index", align 4
@imx6_setup_phy_mpll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 731, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unsupported PHY reference clock rate %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx6_setup_phy_mpll\00", [44 x i8] zeroinitializer }, align 32
@imx6_setup_phy_mpll._entry_ptr = internal global ptr @imx6_setup_phy_mpll._entry, section ".printk_index", align 4
@imx6_pcie_attach_pd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 350, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to add device_link to pcie pd.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx6_pcie_attach_pd\00", [44 x i8] zeroinitializer }, align 32
@imx6_pcie_attach_pd._entry_ptr = internal global ptr @imx6_pcie_attach_pd._entry, section ".printk_index", align 4
@imx6_pcie_attach_pd._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 363, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to add device_link to pcie_phy pd.\0A\00", [53 x i8] zeroinitializer }, align 32
@imx6_pcie_attach_pd._entry_ptr.110 = internal global ptr @imx6_pcie_attach_pd._entry.108, section ".printk_index", align 4
@drvdata = internal constant { [6 x %struct.imx6_pcie_drvdata], [56 x i8] } { [6 x %struct.imx6_pcie_drvdata] [%struct.imx6_pcie_drvdata { i32 0, i32 3, i32 512 }, %struct.imx6_pcie_drvdata { i32 1, i32 7, i32 0 }, %struct.imx6_pcie_drvdata { i32 2, i32 3, i32 512 }, %struct.imx6_pcie_drvdata { i32 3, i32 4, i32 0 }, %struct.imx6_pcie_drvdata { i32 4, i32 0, i32 0 }, %struct.imx6_pcie_drvdata { i32 5, i32 4, i32 0 }], [56 x i8] zeroinitializer }, align 32
@imx6_pcie_suspend_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 985, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to power off PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx6_pcie_suspend_noirq\00", [40 x i8] zeroinitializer }, align 32
@imx6_pcie_suspend_noirq._entry_ptr = internal global ptr @imx6_pcie_suspend_noirq._entry, section ".printk_index", align 4
@imx6_pcie_pm_turnoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 933, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PME_Turn_Off not implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx6_pcie_pm_turnoff\00", [43 x i8] zeroinitializer }, align 32
@imx6_pcie_pm_turnoff._entry_ptr = internal global ptr @imx6_pcie_pm_turnoff._entry, section ".printk_index", align 4
@imx6_pcie_ltssm_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 908, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ltssm_disable not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx6_pcie_ltssm_disable\00", [40 x i8] zeroinitializer }, align 32
@imx6_pcie_ltssm_disable._entry_ptr = internal global ptr @imx6_pcie_ltssm_disable._entry, section ".printk_index", align 4
@imx6_pcie_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1010, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcie link is down after resume.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx6_pcie_resume_noirq\00", [41 x i8] zeroinitializer }, align 32
@imx6_pcie_resume_noirq._entry_ptr = internal global ptr @imx6_pcie_resume_noirq._entry, section ".printk_index", align 4
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"external abort on non-linefetch\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 100000000, i64 125000000, i64 200000000]
@__sancov_gen_cov_switch_values.122 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"imx6_pcie_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1281, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1316, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1283, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"imx6_pcie_of_match\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1271, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"imx6_pcie_pm_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1016, i32 32 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 888, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"imx6_pcie_host_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 884, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1048, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1054, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1068, i32 50 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1070, i32 7 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1076, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1078, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1086, i32 42 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1089, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1091, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1094, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1099, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1102, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1105, i32 43 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1108, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1115, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1117, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1122, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1124, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1137, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1139, i32 38 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1142, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1150, i32 43 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1153, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1158, i32 76 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1160, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1166, i32 39 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1168, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1173, i32 33 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1177, i32 33 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1181, i32 33 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1185, i32 33 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1189, i32 33 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1195, i32 29 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1197, i32 61 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1204, i32 59 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 844, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 852, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 856, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 860, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 864, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 767, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 408, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 506, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 514, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 520, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 526, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 532, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 539, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 562, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 583, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 614, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 431, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 458, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 463, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 494, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 730, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 350, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 363, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant [8 x i8] c"drvdata\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1239, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 985, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 933, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 908, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1010, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.489 = private constant [41 x i8] c"../drivers/pci/controller/dwc/pci-imx6.c\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1335, i32 4 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @__initcall__kmod_pci_imx6__329_1340_imx6_pcie_init6, ptr @__pci_fixup_imx6_pcie_quirk1322, ptr @imx6_pcie_assert_core_reset._entry, ptr @imx6_pcie_assert_core_reset._entry_ptr, ptr @imx6_pcie_attach_pd._entry, ptr @imx6_pcie_attach_pd._entry.108, ptr @imx6_pcie_attach_pd._entry_ptr, ptr @imx6_pcie_attach_pd._entry_ptr.110, ptr @imx6_pcie_deassert_core_reset._entry, ptr @imx6_pcie_deassert_core_reset._entry.71, ptr @imx6_pcie_deassert_core_reset._entry.74, ptr @imx6_pcie_deassert_core_reset._entry.77, ptr @imx6_pcie_deassert_core_reset._entry.80, ptr @imx6_pcie_deassert_core_reset._entry.83, ptr @imx6_pcie_deassert_core_reset._entry.86, ptr @imx6_pcie_deassert_core_reset._entry.89, ptr @imx6_pcie_deassert_core_reset._entry.93, ptr @imx6_pcie_deassert_core_reset._entry_ptr, ptr @imx6_pcie_deassert_core_reset._entry_ptr.73, ptr @imx6_pcie_deassert_core_reset._entry_ptr.76, ptr @imx6_pcie_deassert_core_reset._entry_ptr.79, ptr @imx6_pcie_deassert_core_reset._entry_ptr.82, ptr @imx6_pcie_deassert_core_reset._entry_ptr.85, ptr @imx6_pcie_deassert_core_reset._entry_ptr.88, ptr @imx6_pcie_deassert_core_reset._entry_ptr.92, ptr @imx6_pcie_deassert_core_reset._entry_ptr.94, ptr @imx6_pcie_enable_ref_clk._entry, ptr @imx6_pcie_enable_ref_clk._entry.100, ptr @imx6_pcie_enable_ref_clk._entry.97, ptr @imx6_pcie_enable_ref_clk._entry_ptr, ptr @imx6_pcie_enable_ref_clk._entry_ptr.101, ptr @imx6_pcie_enable_ref_clk._entry_ptr.99, ptr @imx6_pcie_ltssm_disable._entry, ptr @imx6_pcie_ltssm_disable._entry_ptr, ptr @imx6_pcie_pm_turnoff._entry, ptr @imx6_pcie_pm_turnoff._entry_ptr, ptr @imx6_pcie_probe._entry, ptr @imx6_pcie_probe._entry.13, ptr @imx6_pcie_probe._entry.25, ptr @imx6_pcie_probe._entry.29, ptr @imx6_pcie_probe._entry.38, ptr @imx6_pcie_probe._entry.42, ptr @imx6_pcie_probe._entry_ptr, ptr @imx6_pcie_probe._entry_ptr.15, ptr @imx6_pcie_probe._entry_ptr.27, ptr @imx6_pcie_probe._entry_ptr.31, ptr @imx6_pcie_probe._entry_ptr.40, ptr @imx6_pcie_probe._entry_ptr.44, ptr @imx6_pcie_quirk._entry, ptr @imx6_pcie_quirk._entry_ptr, ptr @imx6_pcie_resume_noirq._entry, ptr @imx6_pcie_resume_noirq._entry_ptr, ptr @imx6_pcie_start_link._entry, ptr @imx6_pcie_start_link._entry.55, ptr @imx6_pcie_start_link._entry.57, ptr @imx6_pcie_start_link._entry.60, ptr @imx6_pcie_start_link._entry_ptr, ptr @imx6_pcie_start_link._entry_ptr.56, ptr @imx6_pcie_start_link._entry_ptr.59, ptr @imx6_pcie_start_link._entry_ptr.62, ptr @imx6_pcie_suspend_noirq._entry, ptr @imx6_pcie_suspend_noirq._entry_ptr, ptr @imx6_pcie_wait_for_speed_change._entry, ptr @imx6_pcie_wait_for_speed_change._entry_ptr, ptr @imx6_setup_phy_mpll._entry, ptr @imx6_setup_phy_mpll._entry_ptr, ptr @imx7d_pcie_wait_for_phy_pll_lock._entry, ptr @imx7d_pcie_wait_for_phy_pll_lock._entry_ptr, ptr @imx6_pcie_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx6_pcie_of_match, ptr @imx6_pcie_pm_ops, ptr @dw_pcie_ops, ptr @imx6_pcie_host_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.91, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @drvdata, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_start_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_start_link._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_start_link._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_start_link._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_wait_for_speed_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_assert_core_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_deassert_core_reset._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_enable_ref_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_enable_ref_clk._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_enable_ref_clk._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7d_pcie_wait_for_phy_pll_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_setup_phy_mpll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_attach_pd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_attach_pd._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drvdata to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_suspend_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_pm_turnoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_ltssm_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pcie_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx6_pcie_quirk(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysdata, align 4
  %parent = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parent5 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent5, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %driver = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %cmp.not = icmp eq ptr %9, getelementptr inbounds (%struct.platform_driver, ptr @imx6_pcie_driver, i32 0, i32 5)
  br i1 %cmp.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then12, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drvdata, align 4
  %dbi_length = getelementptr inbounds %struct.imx6_pcie_drvdata, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dbi_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dbi_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool15.not = icmp eq i32 %19, 0
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 45
  %20 = ptrtoint ptr %cfg_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cfg_size, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str, i32 noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then12.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pcie_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hook_fault_code(i32 noundef 8, ptr noundef nonnull @imx6q_pcie_abort_handler, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @.str.119) #6
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx6_pcie_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pcie_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup245_crit_edge, label %if.end

entry.cleanup245_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end:                                           ; preds = %entry
  %call.i395 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i395, null
  br i1 %tobool3.not, label %if.end.cleanup245_crit_edge, label %if.end5

if.end.cleanup245_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i395 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i395, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i395, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i395, i32 0, i32 7
  %ops7 = getelementptr inbounds %struct.dw_pcie, ptr %call.i395, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @imx6_pcie_host_ops, ptr %ops7, align 8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i395, ptr %call.i, align 4
  %call9 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 24
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i396 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i396)
  %tobool.not.i = icmp eq i32 %call.i396, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %if.end24

of_parse_phandle.exit:                            ; preds = %if.end5
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %of_parse_phandle.exit.if.end24_crit_edge, label %if.then12

of_parse_phandle.exit.if.end24_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then12:                                        ; preds = %of_parse_phandle.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %10 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call13 = call i32 @of_address_to_resource(ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup.thread

if.end16:                                         ; preds = %if.then12
  %call17 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #6
  %phy_base = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %phy_base, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call17 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then20, %do.end
  %retval.0.ph = phi i32 [ %call13, %do.end ], [ %12, %if.then20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  br label %cleanup245

cleanup:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  br label %if.end24

if.end24:                                         ; preds = %cleanup, %of_parse_phandle.exit.if.end24_crit_edge, %of_parse_phandle.exit.thread
  %call25 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call26 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call25) #6
  %dbi_base27 = getelementptr inbounds %struct.dw_pcie, ptr %call.i395, i32 0, i32 1
  %13 = ptrtoint ptr %dbi_base27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %dbi_base27, align 4
  %cmp.i397 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i397, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call26 to i32
  br label %cleanup245

if.end33:                                         ; preds = %if.end24
  %call.i398 = call i32 @of_get_named_gpio_flags(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef null) #6
  %reset_gpio = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i398, ptr %reset_gpio, align 4
  %call.i399 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i399, null
  %gpio_active_high = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %tobool.i to i8
  %16 = ptrtoint ptr %gpio_active_high to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %gpio_active_high, align 4
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %18)
  %19 = icmp ult i32 %18, 2048
  br i1 %19, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end33
  %cond = select i1 %tobool.i, i32 2, i32 0
  %call42 = call i32 @devm_gpio_request_one(ptr noundef %dev1, i32 noundef %18, i32 noundef %cond, ptr noundef nonnull @.str.12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then38.if.end53_crit_edge, label %do.end47

if.then38.if.end53_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end47:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup245

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %18)
  %cmp = icmp eq i32 %18, -517
  br i1 %cmp, label %if.else.cleanup245_crit_edge, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else.cleanup245_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end53:                                         ; preds = %if.else.if.end53_crit_edge, %if.then38.if.end53_crit_edge
  %call54 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #6
  %pcie_bus = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %pcie_bus to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call54, ptr %pcie_bus, align 4
  %cmp.i400 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call54 to i32
  %call60 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.17) #6
  br label %cleanup245

if.end61:                                         ; preds = %if.end53
  %call62 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #6
  %pcie = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call62, ptr %pcie, align 4
  %cmp.i401 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call62 to i32
  %call68 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %23, ptr noundef nonnull @.str.19) #6
  br label %cleanup245

if.end69:                                         ; preds = %if.end61
  %24 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drvdata, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.end69.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb79
    i32 3, label %if.end69.sw.bb88_crit_edge
    i32 5, label %sw.bb112
  ]

if.end69.sw.bb88_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

if.end69.sw.epilog_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end69
  %call71 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.20) #6
  %pcie_inbound_axi = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %pcie_inbound_axi to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call71, ptr %pcie_inbound_axi, align 4
  %cmp.i402 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i402, label %if.then74, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then74:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call71 to i32
  %call77 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %30, ptr noundef nonnull @.str.21) #6
  br label %cleanup245

sw.bb79:                                          ; preds = %if.end69
  %call80 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.22) #6
  %pcie_aux = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %pcie_aux to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call80, ptr %pcie_aux, align 4
  %cmp.i403 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i403, label %if.then83, label %sw.bb79.sw.bb88_crit_edge

sw.bb79.sw.bb88_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

if.then83:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %call80 to i32
  %call86 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %32, ptr noundef nonnull @.str.23) #6
  br label %cleanup245

sw.bb88:                                          ; preds = %sw.bb79.sw.bb88_crit_edge, %if.end69.sw.bb88_crit_edge
  %33 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 868220928, i32 %34)
  %cmp89 = icmp eq i32 %34, 868220928
  br i1 %cmp89, label %if.then90, label %sw.bb88.if.end91_crit_edge

sw.bb88.if.end91_crit_edge:                       ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then90:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  %controller_id = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 9
  %35 = ptrtoint ptr %controller_id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %controller_id, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %sw.bb88.if.end91_crit_edge
  %call.i404 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %pciephy_reset = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %pciephy_reset to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i404, ptr %pciephy_reset, align 4
  %cmp.i405 = icmp ugt ptr %call.i404, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i405, label %do.end98, label %if.end101

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  %37 = ptrtoint ptr %pciephy_reset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pciephy_reset, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %cleanup245

if.end101:                                        ; preds = %if.end91
  %call.i406 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %apps_reset = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 11
  %40 = ptrtoint ptr %apps_reset to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i406, ptr %apps_reset, align 4
  %cmp.i407 = icmp ugt ptr %call.i406, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i407, label %do.end108, label %if.end101.sw.epilog_crit_edge

if.end101.sw.epilog_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #9
  %41 = ptrtoint ptr %apps_reset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %apps_reset, align 4
  %43 = ptrtoint ptr %42 to i32
  br label %cleanup245

sw.bb112:                                         ; preds = %if.end69
  %call113 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.22) #6
  %pcie_aux114 = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %pcie_aux114 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call113, ptr %pcie_aux114, align 4
  %cmp.i408 = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i408, label %if.then117, label %if.end121

if.then117:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call113 to i32
  %call120 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %45, ptr noundef nonnull @.str.23) #6
  br label %cleanup245

if.end121:                                        ; preds = %sw.bb112
  %call.i409 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %apps_reset123 = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 11
  %46 = ptrtoint ptr %apps_reset123 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i409, ptr %apps_reset123, align 4
  %cmp.i410 = icmp ugt ptr %call.i409, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i410, label %if.then126, label %if.end130

if.then126:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call.i409 to i32
  %call129 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %47, ptr noundef nonnull @.str.32) #6
  br label %cleanup245

if.end130:                                        ; preds = %if.end121
  %call131 = call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.33) #6
  %phy = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 23
  %48 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call131, ptr %phy, align 4
  %cmp.i411 = icmp ugt ptr %call131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i411, label %if.then134, label %if.end130.sw.epilog_crit_edge

if.end130.sw.epilog_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then134:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %call131 to i32
  %call137 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %49, ptr noundef nonnull @.str.34) #6
  br label %cleanup245

sw.epilog:                                        ; preds = %if.end130.sw.epilog_crit_edge, %if.end101.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end69.sw.epilog_crit_edge
  %phy139 = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 23
  %50 = ptrtoint ptr %phy139 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy139, align 4
  %cmp140 = icmp eq ptr %51, null
  br i1 %cmp140, label %if.then141, label %sw.epilog.if.end150_crit_edge

sw.epilog.if.end150_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then141:                                       ; preds = %sw.epilog
  %call142 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.35) #6
  %pcie_phy = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %pcie_phy to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call142, ptr %pcie_phy, align 4
  %cmp.i412 = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i412, label %if.then145, label %if.then141.if.end150_crit_edge

if.then141.if.end150_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then145:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %call142 to i32
  %call148 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %53, ptr noundef nonnull @.str.36) #6
  br label %cleanup245

if.end150:                                        ; preds = %if.then141.if.end150_crit_edge, %sw.epilog.if.end150_crit_edge
  %call.i413 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %turnoff_reset = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 12
  %54 = ptrtoint ptr %turnoff_reset to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i413, ptr %turnoff_reset, align 4
  %cmp.i414 = icmp ugt ptr %call.i413, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i414, label %do.end157, label %if.end160

do.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #9
  %55 = ptrtoint ptr %turnoff_reset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %turnoff_reset, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %cleanup245

if.end160:                                        ; preds = %if.end150
  %call161 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.41) #6
  %iomuxc_gpr = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 8
  %58 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call161, ptr %iomuxc_gpr, align 4
  %cmp.i415 = icmp ugt ptr %call161, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i415, label %do.end167, label %if.end170

do.end167:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #9
  %59 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iomuxc_gpr, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup245

if.end170:                                        ; preds = %if.end160
  %tx_deemph_gen1 = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 13
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef %tx_deemph_gen1, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool172.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool172.not, label %if.end170.if.end175_crit_edge, label %if.then173

if.end170.if.end175_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %tx_deemph_gen1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_deemph_gen1, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then173, %if.end170.if.end175_crit_edge
  %tx_deemph_gen2_3p5db = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 14
  %call.i.i416 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %tx_deemph_gen2_3p5db, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i416)
  %tobool177.not = icmp sgt i32 %call.i.i416, -1
  br i1 %tobool177.not, label %if.end175.if.end180_crit_edge, label %if.then178

if.end175.if.end180_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then178:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %tx_deemph_gen2_3p5db to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tx_deemph_gen2_3p5db, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %if.end175.if.end180_crit_edge
  %tx_deemph_gen2_6db = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 15
  %call.i.i417 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %tx_deemph_gen2_6db, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i417)
  %tobool182.not = icmp sgt i32 %call.i.i417, -1
  br i1 %tobool182.not, label %if.end180.if.end185_crit_edge, label %if.then183

if.end180.if.end185_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %tx_deemph_gen2_6db to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 20, ptr %tx_deemph_gen2_6db, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.end180.if.end185_crit_edge
  %tx_swing_full = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 16
  %call.i.i418 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef %tx_swing_full, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i418)
  %tobool187.not = icmp sgt i32 %call.i.i418, -1
  br i1 %tobool187.not, label %if.end185.if.end190_crit_edge, label %if.then188

if.end185.if.end190_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then188:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %tx_swing_full to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 127, ptr %tx_swing_full, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.end185.if.end190_crit_edge
  %tx_swing_low = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 17
  %call.i.i419 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef %tx_swing_low, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i419)
  %tobool192.not = icmp sgt i32 %call.i.i419, -1
  br i1 %tobool192.not, label %if.end190.if.end195_crit_edge, label %if.then193

if.end190.if.end195_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end195

if.then193:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %tx_swing_low to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 127, ptr %tx_swing_low, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.end190.if.end195_crit_edge
  %link_gen = getelementptr inbounds %struct.dw_pcie, ptr %call.i395, i32 0, i32 12
  %67 = ptrtoint ptr %link_gen to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %link_gen, align 4
  %call.i.i420 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef %link_gen, i32 noundef 1, i32 noundef 0) #6
  %call199 = call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.51) #6
  %vpcie = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 18
  %68 = ptrtoint ptr %vpcie to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call199, ptr %vpcie, align 4
  %cmp.i421 = icmp ugt ptr %call199, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i421, label %if.then202, label %if.end195.if.end211_crit_edge

if.end195.if.end211_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

if.then202:                                       ; preds = %if.end195
  %69 = ptrtoint ptr %call199 to i32
  %cmp205.not = icmp eq ptr %call199, inttoptr (i32 -19 to ptr)
  br i1 %cmp205.not, label %if.end209, label %if.then202.cleanup245_crit_edge

if.then202.cleanup245_crit_edge:                  ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end209:                                        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %vpcie to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %vpcie, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.end209, %if.end195.if.end211_crit_edge
  %call213 = call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.52) #6
  %vph = getelementptr inbounds %struct.imx6_pcie, ptr %call.i, i32 0, i32 19
  %71 = ptrtoint ptr %vph to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call213, ptr %vph, align 4
  %cmp.i422 = icmp ugt ptr %call213, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i422, label %if.then216, label %if.end211.if.end225_crit_edge

if.end211.if.end225_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end225

if.then216:                                       ; preds = %if.end211
  %72 = ptrtoint ptr %call213 to i32
  %cmp219.not = icmp eq ptr %call213, inttoptr (i32 -19 to ptr)
  br i1 %cmp219.not, label %if.end223, label %if.then216.cleanup245_crit_edge

if.then216.cleanup245_crit_edge:                  ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end223:                                        ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %vph to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %vph, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.end223, %if.end211.if.end225_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call226 = call fastcc i32 @imx6_pcie_attach_pd(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %if.end225.cleanup245_crit_edge

if.end225.cleanup245_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end229:                                        ; preds = %if.end225
  %call231 = call i32 @dw_pcie_host_init(ptr noundef %pp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.end229.cleanup245_crit_edge, label %if.end234

if.end229.cleanup245_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.end234:                                        ; preds = %if.end229
  %call235 = call i32 @pci_msi_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end234.cleanup245_crit_edge, label %if.then237

if.end234.cleanup245_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup245

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  %call238 = call zeroext i8 @dw_pcie_find_capability(ptr noundef nonnull %call.i395, i8 noundef zeroext 5) #6
  %conv = zext i8 %call238 to i32
  %add = add nuw nsw i32 %conv, 2
  %call.i423 = call i32 @dw_pcie_read_dbi(ptr noundef nonnull %call.i395, i32 noundef %add, i32 noundef 2) #6
  %75 = and i32 %call.i423, 65534
  %conv.i424 = or i32 %75, 1
  call void @dw_pcie_write_dbi(ptr noundef nonnull %call.i395, i32 noundef %add, i32 noundef 2, i32 noundef %conv.i424) #6
  br label %cleanup245

cleanup245:                                       ; preds = %if.then237, %if.end234.cleanup245_crit_edge, %if.end229.cleanup245_crit_edge, %if.end225.cleanup245_crit_edge, %if.then216.cleanup245_crit_edge, %if.then202.cleanup245_crit_edge, %do.end167, %do.end157, %if.then145, %if.then134, %if.then126, %if.then117, %do.end108, %do.end98, %if.then83, %if.then74, %if.then65, %if.then57, %if.else.cleanup245_crit_edge, %do.end47, %if.then30, %cleanup.thread, %if.end.cleanup245_crit_edge, %entry.cleanup245_crit_edge
  %retval.1 = phi i32 [ %14, %if.then30 ], [ %call42, %do.end47 ], [ %call60, %if.then57 ], [ %call68, %if.then65 ], [ %call148, %if.then145 ], [ %57, %do.end157 ], [ %61, %do.end167 ], [ %call120, %if.then117 ], [ %call129, %if.then126 ], [ %call137, %if.then134 ], [ %39, %do.end98 ], [ %43, %do.end108 ], [ %call86, %if.then83 ], [ %call77, %if.then74 ], [ -12, %entry.cleanup245_crit_edge ], [ -12, %if.end.cleanup245_crit_edge ], [ -517, %if.else.cleanup245_crit_edge ], [ %call226, %if.end225.cleanup245_crit_edge ], [ %call231, %if.end229.cleanup245_crit_edge ], [ 0, %if.then237 ], [ 0, %if.end234.cleanup245_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ %69, %if.then202.cleanup245_crit_edge ], [ %72, %if.then216.cleanup245_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx6_pcie_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @imx6_pcie_assert_core_reset(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx6_pcie_attach_pd(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_domain = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  %pd_pcie = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %pd_pcie to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %pd_pcie, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool9.not = icmp eq ptr %call1, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call13 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef nonnull %call1, i32 noundef 13) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.106) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %dev, ptr noundef nonnull @.str.35) #6
  %pd_pcie_phy = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %pd_pcie_phy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %pd_pcie_phy, align 4
  %cmp.i49 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call25 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %call17, i32 noundef 13) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.109) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end23.cleanup_crit_edge, %if.then20, %do.end, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then4 ], [ %7, %if.then20 ], [ -22, %do.end30 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pcie_start_link(ptr noundef %pci) #0 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %pci, i8 noundef zeroext 16) #6
  %conv = zext i8 %call3 to i32
  %add = add nuw nsw i32 %conv, 12
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add, i32 noundef 4) #6
  %and = and i32 %call.i, -16
  %or = or i32 %and, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef %add, i32 noundef 4, i32 noundef %or) #6
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %drvdata.i = getelementptr inbounds %struct.imx6_pcie, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %9, label %entry.imx6_pcie_ltssm_enable.exit_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge106
    i32 2, label %entry.sw.bb.i_crit_edge107
    i32 3, label %entry.sw.bb2.i_crit_edge
    i32 4, label %entry.sw.bb2.i_crit_edge108
    i32 5, label %entry.sw.bb2.i_crit_edge109
  ]

entry.sw.bb2.i_crit_edge109:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge108:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

entry.sw.bb.i_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.imx6_pcie_ltssm_enable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_pcie_ltssm_enable.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge106, %entry.sw.bb.i_crit_edge107
  %iomuxc_gpr.i = getelementptr inbounds %struct.imx6_pcie, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %iomuxc_gpr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomuxc_gpr.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 48, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %imx6_pcie_ltssm_enable.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge108, %entry.sw.bb2.i_crit_edge109
  %apps_reset.i = getelementptr inbounds %struct.imx6_pcie, ptr %5, i32 0, i32 11
  %13 = ptrtoint ptr %apps_reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apps_reset.i, align 4
  %call3.i = tail call i32 @reset_control_deassert(ptr noundef %14) #6
  br label %imx6_pcie_ltssm_enable.exit

imx6_pcie_ltssm_enable.exit:                      ; preds = %sw.bb2.i, %sw.bb.i, %entry.imx6_pcie_ltssm_enable.exit_crit_edge
  %call7 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %pci) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %imx6_pcie_ltssm_enable.exit.do.body46_crit_edge

imx6_pcie_ltssm_enable.exit.do.body46_crit_edge:  ; preds = %imx6_pcie_ltssm_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.end:                                           ; preds = %imx6_pcie_ltssm_enable.exit
  %link_gen = getelementptr inbounds %struct.dw_pcie, ptr %pci, i32 0, i32 12
  %15 = ptrtoint ptr %link_gen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %link_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp eq i32 %16, 2
  br i1 %cmp, label %if.then9, label %do.end36

if.then9:                                         ; preds = %if.end
  %call.i99 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add, i32 noundef 4) #6
  %and13 = and i32 %call.i99, -16
  %or14 = or i32 %and13, 2
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef %add, i32 noundef 4, i32 noundef %or14) #6
  %call.i100 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 2060, i32 noundef 4) #6
  %or18 = or i32 %call.i100, 131072
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef 2060, i32 noundef 4, i32 noundef %or18) #6
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  %flags = getelementptr inbounds %struct.imx6_pcie_drvdata, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and19 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then9.if.end26_crit_edge, label %if.then21

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.then9
  %call22 = tail call fastcc i32 @imx6_pcie_wait_for_speed_change(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then21.do.body46.sink.split_crit_edge

if.then21.do.body46.sink.split_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46.sink.split

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.then9.if.end26_crit_edge
  %call27 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %pci) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.if.end37_crit_edge, label %if.end26.do.body46.sink.split_crit_edge

if.end26.do.body46.sink.split_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46.sink.split

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.58) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %if.end26.if.end37_crit_edge
  %add39 = add nuw nsw i32 %conv, 18
  %call.i101 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add39, i32 noundef 2) #6
  %21 = and i32 %call.i101, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %21) #9
  br label %cleanup

do.body46.sink.split:                             ; preds = %if.end26.do.body46.sink.split_crit_edge, %if.then21.do.body46.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call22, %if.then21.do.body46.sink.split_crit_edge ], [ %call27, %if.end26.do.body46.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53) #9
  br label %do.body46

do.body46:                                        ; preds = %do.body46.sink.split, %imx6_pcie_ltssm_enable.exit.do.body46_crit_edge
  %ret.0 = phi i32 [ %call7, %imx6_pcie_ltssm_enable.exit.do.body46_crit_edge ], [ %ret.0.ph, %do.body46.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx6_pcie_start_link.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx6_pcie_start_link, %do.end58)) #6
          to label %if.then53 [label %do.end58], !srcloc !239

if.then53:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %call.i102 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 1832, i32 noundef 4) #6
  %call.i103 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 1836, i32 noundef 4) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx6_pcie_start_link.__UNIQUE_ID_ddebug328, ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %call.i102, i32 noundef %call.i103) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #6
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %tmp.i, align 2, !annotation !240
  %drvdata.i104 = getelementptr inbounds %struct.imx6_pcie, ptr %3, i32 0, i32 24
  %23 = ptrtoint ptr %drvdata.i104 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvdata.i104, align 4
  %flags.i = getelementptr inbounds %struct.imx6_pcie_drvdata, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end58.imx6_pcie_reset_phy.exit_crit_edge, label %if.end.i

do.end58.imx6_pcie_reset_phy.exit_crit_edge:      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_pcie_reset_phy.exit

if.end.i:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pcie_phy_read(ptr noundef %3, i32 noundef 4101, ptr noundef nonnull %tmp.i) #6
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tmp.i, align 2
  %29 = or i16 %28, 40
  store i16 %29, ptr %tmp.i, align 2
  tail call fastcc void @pcie_phy_write(ptr noundef %3, i32 noundef 4101, i16 noundef zeroext %29) #6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #6
  call fastcc void @pcie_phy_read(ptr noundef %3, i32 noundef 4101, ptr noundef nonnull %tmp.i) #6
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tmp.i, align 2
  %32 = and i16 %31, -41
  tail call fastcc void @pcie_phy_write(ptr noundef %3, i32 noundef 4101, i16 noundef zeroext %32) #6
  br label %imx6_pcie_reset_phy.exit

imx6_pcie_reset_phy.exit:                         ; preds = %if.end.i, %do.end58.imx6_pcie_reset_phy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #6
  br label %cleanup

cleanup:                                          ; preds = %imx6_pcie_reset_phy.exit, %if.end37
  %retval.0 = phi i32 [ %ret.0, %imx6_pcie_reset_phy.exit ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_wait_for_link(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx6_pcie_wait_for_speed_change(ptr nocapture noundef readonly %imx6_pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx6_pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %retries.08 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2060, i32 noundef 4) #6
  %and = and i32 %call.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #6
  %inc = add nuw nsw i32 %retries.08, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.65) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_phy_read(ptr nocapture noundef readonly %imx6_pcie, i32 noundef %addr, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx6_pcie, align 4
  %and14.i = and i32 %addr, 65535
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %and14.i) #6
  %or.i = or i32 %and14.i, 65536
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %or.i) #6
  %call.i = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %pcie_phy_wait_ack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pcie_phy_wait_ack.exit:                           ; preds = %entry
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %and14.i) #6
  %call42.i = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not = icmp eq i32 %call42.i, 0
  br i1 %tobool.not, label %if.end, label %pcie_phy_wait_ack.exit.cleanup_crit_edge

pcie_phy_wait_ack.exit.cleanup_crit_edge:         ; preds = %pcie_phy_wait_ack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pcie_phy_wait_ack.exit
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef 524288) #6
  %call2 = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %conv = trunc i32 %call.i1 to i16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %data, align 2
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef 0) #6
  %call7 = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %pcie_phy_wait_ack.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_phy_write(ptr nocapture noundef readonly %imx6_pcie, i32 noundef %addr, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx6_pcie, align 4
  %and14.i = and i32 %addr, 65535
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %and14.i) #6
  %or.i = or i32 %and14.i, 65536
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %or.i) #6
  %call.i = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %pcie_phy_wait_ack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pcie_phy_wait_ack.exit:                           ; preds = %entry
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %and14.i) #6
  %call42.i = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not = icmp eq i32 %call42.i, 0
  br i1 %tobool.not, label %do.body5, label %pcie_phy_wait_ack.exit.cleanup_crit_edge

pcie_phy_wait_ack.exit.cleanup_crit_edge:         ; preds = %pcie_phy_wait_ack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5:                                         ; preds = %pcie_phy_wait_ack.exit
  %conv17 = zext i16 %data to i32
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %conv17) #6
  %or = or i32 %conv17, 131072
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %or) #6
  %call19 = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body29, label %do.body5.cleanup_crit_edge

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body29:                                        ; preds = %do.body5
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %conv17) #6
  %call49 = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %do.body29
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef 262144) #6
  %call53 = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body63, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body63:                                        ; preds = %if.end52
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef %conv17) #6
  %call83 = tail call fastcc i32 @pcie_phy_poll_ack(ptr noundef %imx6_pcie, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %do.body63.cleanup_crit_edge

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end86:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dw_pcie_write_dbi(ptr noundef %1, i32 noundef 2068, i32 noundef 4, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.body63.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.body29.cleanup_crit_edge, %do.body5.cleanup_crit_edge, %pcie_phy_wait_ack.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcie_phy_poll_ack(ptr nocapture noundef readonly %imx6_pcie, i1 noundef zeroext %exp_val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx6_pcie, align 4
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %2 = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  %cmp = xor i1 %3, %exp_val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %call.i.1 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %5 = and i32 %call.i.1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %cmp.1 = xor i1 %6, %exp_val
  br i1 %cmp.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %call.i.2 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %8 = and i32 %call.i.2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %cmp.2 = xor i1 %9, %exp_val
  br i1 %cmp.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  %call.i.3 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %11 = and i32 %call.i.3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  %cmp.3 = xor i1 %12, %exp_val
  br i1 %cmp.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %call.i.4 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %14 = and i32 %call.i.4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  %cmp.4 = xor i1 %15, %exp_val
  br i1 %cmp.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %call.i.5 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %17 = and i32 %call.i.5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  %cmp.5 = xor i1 %18, %exp_val
  br i1 %cmp.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %call.i.6 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %20 = and i32 %call.i.6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  %cmp.6 = xor i1 %21, %exp_val
  br i1 %cmp.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #6
  %call.i.7 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %23 = and i32 %call.i.7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  %cmp.7 = xor i1 %24, %exp_val
  br i1 %cmp.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %call.i.8 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %26 = and i32 %call.i.8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  %cmp.8 = xor i1 %27, %exp_val
  br i1 %cmp.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %call.i.9 = tail call i32 @dw_pcie_read_dbi(ptr noundef %1, i32 noundef 2064, i32 noundef 4) #6
  %29 = and i32 %call.i.9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  %cmp.9 = xor i1 %30, %exp_val
  br i1 %cmp.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.8.cleanup_crit_edge ], [ -110, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pcie_host_init(ptr nocapture noundef readonly %pp) #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @imx6_pcie_assert_core_reset(ptr noundef %3)
  tail call fastcc void @imx6_pcie_init_phy(ptr noundef %3)
  tail call fastcc void @imx6_pcie_deassert_core_reset(ptr noundef %3)
  %pcie_phy.i = getelementptr inbounds %struct.imx6_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pcie_phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcie_phy.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i, align 2, !annotation !240
  %drvdata.i = getelementptr inbounds %struct.imx6_pcie, ptr %3, i32 0, i32 24
  %7 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drvdata.i, align 4
  %flags.i = getelementptr inbounds %struct.imx6_pcie_drvdata, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.imx6_setup_phy_mpll.exit_crit_edge, label %if.end.i

entry.imx6_setup_phy_mpll.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_setup_phy_mpll.exit

if.end.i:                                         ; preds = %entry
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %call.i, label %do.end.i [
    i32 125000000, label %if.end.i.imx6_setup_phy_mpll.exit_crit_edge
    i32 100000000, label %if.end.i.sw.epilog.i_crit_edge
    i32 200000000, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end.i.imx6_setup_phy_mpll.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_setup_phy_mpll.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.104, i32 noundef %call.i) #9
  br label %imx6_setup_phy_mpll.exit

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %div.0.i = phi i16 [ 5, %sw.bb2.i ], [ 4, %if.end.i.sw.epilog.i_crit_edge ]
  call fastcc void @pcie_phy_read(ptr noundef %3, i32 noundef 17, ptr noundef nonnull %val.i) #6
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %val.i, align 2
  %18 = and i16 %17, -1021
  %19 = or i16 %18, 612
  store i16 %19, ptr %val.i, align 2
  tail call fastcc void @pcie_phy_write(ptr noundef %3, i32 noundef 17, i16 noundef zeroext %19) #6
  call fastcc void @pcie_phy_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %val.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val.i, align 2
  %22 = and i16 %21, -6
  %23 = or i16 %22, %div.0.i
  tail call fastcc void @pcie_phy_write(ptr noundef %3, i32 noundef 16, i16 noundef zeroext %23) #6
  br label %imx6_setup_phy_mpll.exit

imx6_setup_phy_mpll.exit:                         ; preds = %sw.epilog.i, %do.end.i, %if.end.i.imx6_setup_phy_mpll.exit_crit_edge, %entry.imx6_setup_phy_mpll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6_pcie_assert_core_reset(ptr nocapture noundef readonly %imx6_pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx6_pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 24
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge39
    i32 5, label %entry.sw.bb2_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
    i32 0, label %sw.bb11
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge39
  %pciephy_reset = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 10
  %9 = ptrtoint ptr %pciephy_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pciephy_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %10) #6
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %apps_reset = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 11
  %11 = ptrtoint ptr %apps_reset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %apps_reset, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %12) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %13 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomuxc_gpr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 48, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomuxc_gpr, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 20, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr9 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %17 = ptrtoint ptr %iomuxc_gpr9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iomuxc_gpr9, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 4, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr12 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %19 = ptrtoint ptr %iomuxc_gpr12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iomuxc_gpr12, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 4, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %iomuxc_gpr12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomuxc_gpr12, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 4, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %vpcie = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 18
  %23 = ptrtoint ptr %vpcie to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vpcie, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %sw.epilog.if.end22_crit_edge, label %land.lhs.true

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %sw.epilog
  %call17 = tail call i32 @regulator_is_enabled(ptr noundef nonnull %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp sgt i32 %call17, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %25 = ptrtoint ptr %vpcie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vpcie, align 4
  %call19 = tail call i32 @regulator_disable(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then.if.end22_crit_edge, label %do.end

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67, i32 noundef %call19) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %sw.epilog.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6_pcie_init_phy(ptr nocapture noundef readonly %imx6_pcie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 24
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %3, label %entry.sw.default_crit_edge [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 4, label %imx6_pcie_grp_offset.exit
    i32 3, label %sw.bb7
    i32 1, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

imx6_pcie_grp_offset.exit:                        ; preds = %entry
  %iomuxc_gpr = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %5 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomuxc_gpr, align 4
  %controller_id.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 9
  %7 = ptrtoint ptr %controller_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %controller_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp22.i = icmp eq i32 %8, 1
  %cond.i = select i1 %cmp22.i, i32 64, i32 56
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %cond.i, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %vph = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 19
  %9 = ptrtoint ptr %vph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vph, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %imx6_pcie_grp_offset.exit.sw.epilog_crit_edge, label %land.lhs.true

imx6_pcie_grp_offset.exit.sw.epilog_crit_edge:    ; preds = %imx6_pcie_grp_offset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %imx6_pcie_grp_offset.exit
  %call3 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %call3)
  %cmp = icmp sgt i32 %call3, 3000000
  br i1 %cmp, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomuxc_gpr, align 4
  %13 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = add i32 %16, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %17)
  %18 = icmp ult i32 %17, -2
  br i1 %18, label %do.end.i53, label %if.then.imx6_pcie_grp_offset.exit57_crit_edge, !prof !241

if.then.imx6_pcie_grp_offset.exit57_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_pcie_grp_offset.exit57

do.end.i53:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #6
  br label %imx6_pcie_grp_offset.exit57

imx6_pcie_grp_offset.exit57:                      ; preds = %do.end.i53, %if.then.imx6_pcie_grp_offset.exit57_crit_edge
  %19 = ptrtoint ptr %controller_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %controller_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp22.i55 = icmp eq i32 %20, 1
  %cond.i56 = select i1 %cmp22.i55, i32 64, i32 56
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %cond.i56, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr8 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %21 = ptrtoint ptr %iomuxc_gpr8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iomuxc_gpr8, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 48, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr11 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %23 = ptrtoint ptr %iomuxc_gpr11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomuxc_gpr11, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 48, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.default

sw.default:                                       ; preds = %sw.bb10, %entry.sw.default_crit_edge
  %iomuxc_gpr13 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %25 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomuxc_gpr13, align 4
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 48, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomuxc_gpr13, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 48, i32 noundef 496, i32 noundef 144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomuxc_gpr13, align 4
  %tx_deemph_gen1 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 13
  %31 = ptrtoint ptr %tx_deemph_gen1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_deemph_gen1, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 32, i32 noundef 63, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomuxc_gpr13, align 4
  %tx_deemph_gen2_3p5db = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 14
  %35 = ptrtoint ptr %tx_deemph_gen2_3p5db to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_deemph_gen2_3p5db, align 4
  %shl20 = shl i32 %36, 6
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 32, i32 noundef 4032, i32 noundef %shl20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomuxc_gpr13, align 4
  %tx_deemph_gen2_6db = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 15
  %39 = ptrtoint ptr %tx_deemph_gen2_6db to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_deemph_gen2_6db, align 4
  %shl23 = shl i32 %40, 12
  %call.i65 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 32, i32 noundef 258048, i32 noundef %shl23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iomuxc_gpr13, align 4
  %tx_swing_full = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 16
  %43 = ptrtoint ptr %tx_swing_full to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_swing_full, align 4
  %shl26 = shl i32 %44, 18
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 32, i32 noundef 33292288, i32 noundef %shl26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %45 = ptrtoint ptr %iomuxc_gpr13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iomuxc_gpr13, align 4
  %tx_swing_low = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 17
  %47 = ptrtoint ptr %tx_swing_low to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_swing_low, align 4
  %shl29 = shl i32 %48, 25
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 32, i32 noundef -33554432, i32 noundef %shl29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %imx6_pcie_grp_offset.exit57, %land.lhs.true.sw.epilog_crit_edge, %imx6_pcie_grp_offset.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %49 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %drvdata, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp.i = icmp eq i32 %52, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.if.else.i_crit_edge

sw.epilog.if.else.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %controller_id.i69 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 9
  %53 = ptrtoint ptr %controller_id.i69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %controller_id.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp1.i = icmp eq i32 %54, 1
  br i1 %cmp1.i, label %land.lhs.true.i.imx6_pcie_configure_type.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i.imx6_pcie_configure_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_pcie_configure_type.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.epilog.if.else.i_crit_edge
  br label %imx6_pcie_configure_type.exit

imx6_pcie_configure_type.exit:                    ; preds = %if.else.i, %land.lhs.true.i.imx6_pcie_configure_type.exit_crit_edge
  %val.0.i = phi i32 [ 16384, %if.else.i ], [ 1024, %land.lhs.true.i.imx6_pcie_configure_type.exit_crit_edge ]
  %mask.0.i = phi i32 [ 61440, %if.else.i ], [ 3840, %land.lhs.true.i.imx6_pcie_configure_type.exit_crit_edge ]
  %iomuxc_gpr.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %55 = ptrtoint ptr %iomuxc_gpr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iomuxc_gpr.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 48, i32 noundef %mask.0.i, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6_pcie_deassert_core_reset(ptr noundef readonly %imx6_pcie) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imx6_pcie, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vpcie = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 18
  %4 = ptrtoint ptr %vpcie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vpcie, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @regulator_is_enabled(ptr noundef nonnull %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %vpcie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vpcie, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %call6) #9
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %pcie_phy = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 4
  %8 = ptrtoint ptr %pcie_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_phy, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.do.end15_crit_edge

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end16, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i, %if.end9.do.end15_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.72) #9
  br label %err_pcie_phy

if.end16:                                         ; preds = %if.end.i
  %pcie_bus = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 3
  %10 = ptrtoint ptr %pcie_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_bus, align 4
  %call.i168 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end.i172, label %if.end16.do.end22_crit_edge

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i172:                                      ; preds = %if.end16
  %call1.i170 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i170)
  %tobool2.not.i171 = icmp eq i32 %call1.i170, 0
  br i1 %tobool2.not.i171, label %if.end23, label %if.then3.i173

if.then3.i173:                                    ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i173, %if.end16.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75) #9
  br label %err_pcie_bus

if.end23:                                         ; preds = %if.end.i172
  %pcie = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 6
  %12 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcie, align 4
  %call.i176 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i177, label %if.end.i180, label %if.end23.do.end29_crit_edge

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end.i180:                                      ; preds = %if.end23
  %call1.i178 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i178)
  %tobool2.not.i179 = icmp eq i32 %call1.i178, 0
  br i1 %tobool2.not.i179, label %if.end30, label %if.then3.i181

if.then3.i181:                                    ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i181, %if.end23.do.end29_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78) #9
  br label %err_pcie

if.end30:                                         ; preds = %if.end.i180
  %14 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %imx6_pcie, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %drvdata.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 24
  %18 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %21, label %if.end30.if.end37_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %if.end30.sw.bb4.i_crit_edge
    i32 0, label %if.end30.sw.bb4.i_crit_edge200
    i32 4, label %sw.bb17.i
    i32 5, label %sw.bb9.i
  ]

if.end30.sw.bb4.i_crit_edge200:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.end30.sw.bb4.i_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb.i:                                          ; preds = %if.end30
  %pcie_inbound_axi.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 5
  %23 = ptrtoint ptr %pcie_inbound_axi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcie_inbound_axi.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.do.end36_crit_edge

sw.bb.i.do.end36_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end.i.i:                                       ; preds = %sw.bb.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i184, label %if.end.i.i.do.end36.sink.split_crit_edge

if.end.i.i.do.end36.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36.sink.split

if.end.i184:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %25 = ptrtoint ptr %iomuxc_gpr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomuxc_gpr.i, align 4
  %call.i47.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 48, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end37

sw.bb4.i:                                         ; preds = %if.end30.sw.bb4.i_crit_edge, %if.end30.sw.bb4.i_crit_edge200
  %iomuxc_gpr5.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %27 = ptrtoint ptr %iomuxc_gpr5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomuxc_gpr5.i, align 4
  %call.i48.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 4, i32 noundef 262144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %29 = ptrtoint ptr %iomuxc_gpr5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomuxc_gpr5.i, align 4
  %call.i49.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 4, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end37

sw.bb9.i:                                         ; preds = %if.end30
  %pcie_aux.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 7
  %31 = ptrtoint ptr %pcie_aux.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie_aux.i, align 4
  %call.i50.i = tail call i32 @clk_prepare(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %if.end.i54.i, label %sw.bb9.i.do.end36_crit_edge

sw.bb9.i.do.end36_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end.i54.i:                                     ; preds = %sw.bb9.i
  %call1.i52.i = tail call i32 @clk_enable(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool2.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool2.not.i53.i, label %if.end.i54.i.if.end37_crit_edge, label %if.end.i54.i.do.end36.sink.split_crit_edge

if.end.i54.i.do.end36.sink.split_crit_edge:       ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36.sink.split

if.end.i54.i.if.end37_crit_edge:                  ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

sw.bb17.i:                                        ; preds = %if.end30
  %pcie_aux18.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 7
  %33 = ptrtoint ptr %pcie_aux18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie_aux18.i, align 4
  %call.i58.i = tail call i32 @clk_prepare(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %if.end.i62.i, label %sw.bb17.i.do.end36_crit_edge

sw.bb17.i.do.end36_crit_edge:                     ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

if.end.i62.i:                                     ; preds = %sw.bb17.i
  %call1.i60.i = tail call i32 @clk_enable(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60.i)
  %tobool2.not.i61.i = icmp eq i32 %call1.i60.i, 0
  br i1 %tobool2.not.i61.i, label %if.end25.i, label %if.end.i62.i.do.end36.sink.split_crit_edge

if.end.i62.i.do.end36.sink.split_crit_edge:       ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36.sink.split

if.end25.i:                                       ; preds = %if.end.i62.i
  %35 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drvdata.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = add i32 %38, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %39)
  %40 = icmp ult i32 %39, -2
  br i1 %40, label %do.end.i.i, label %if.end25.i.imx6_pcie_grp_offset.exit.i_crit_edge, !prof !241

if.end25.i.imx6_pcie_grp_offset.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_pcie_grp_offset.exit.i

do.end.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef null) #6
  br label %imx6_pcie_grp_offset.exit.i

imx6_pcie_grp_offset.exit.i:                      ; preds = %do.end.i.i, %if.end25.i.imx6_pcie_grp_offset.exit.i_crit_edge
  %controller_id.i.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 9
  %41 = ptrtoint ptr %controller_id.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %controller_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp22.i.i = icmp eq i32 %42, 1
  %cond.i.i = select i1 %cmp22.i.i, i32 64, i32 56
  %iomuxc_gpr27.i = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %43 = ptrtoint ptr %iomuxc_gpr27.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomuxc_gpr27.i, align 4
  %call.i67.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %cond.i.i, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %45 = ptrtoint ptr %iomuxc_gpr27.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iomuxc_gpr27.i, align 4
  %call.i68.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %cond.i.i, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end37

do.end36.sink.split:                              ; preds = %if.end.i62.i.do.end36.sink.split_crit_edge, %if.end.i54.i.do.end36.sink.split_crit_edge, %if.end.i.i.do.end36.sink.split_crit_edge
  %.sink = phi ptr [ %24, %if.end.i.i.do.end36.sink.split_crit_edge ], [ %32, %if.end.i54.i.do.end36.sink.split_crit_edge ], [ %34, %if.end.i62.i.do.end36.sink.split_crit_edge ]
  %.str.98.sink.ph = phi ptr [ @.str.95, %if.end.i.i.do.end36.sink.split_crit_edge ], [ @.str.98, %if.end.i54.i.do.end36.sink.split_crit_edge ], [ @.str.98, %if.end.i62.i.do.end36.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %do.end36

do.end36:                                         ; preds = %do.end36.sink.split, %sw.bb17.i.do.end36_crit_edge, %sw.bb9.i.do.end36_crit_edge, %sw.bb.i.do.end36_crit_edge
  %.str.98.sink = phi ptr [ @.str.95, %sw.bb.i.do.end36_crit_edge ], [ @.str.98, %sw.bb9.i.do.end36_crit_edge ], [ @.str.98, %sw.bb17.i.do.end36_crit_edge ], [ %.str.98.sink.ph, %do.end36.sink.split ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.98.sink) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.81) #9
  %47 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcie, align 4
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  br label %err_pcie

if.end37:                                         ; preds = %imx6_pcie_grp_offset.exit.i, %if.end.i54.i.if.end37_crit_edge, %sw.bb4.i, %if.end.i184, %if.end30.if.end37_crit_edge
  %49 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %drvdata.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %52)
  %cond = icmp eq i32 %52, 5
  br i1 %cond, label %sw.bb, label %if.end37.sw.epilog_crit_edge

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end37
  %phy = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 23
  %53 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy, align 4
  %call38 = tail call i32 @phy_power_on(ptr noundef %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %sw.bb.sw.epilog_crit_edge, label %do.end43

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end43:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.84) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %sw.bb.sw.epilog_crit_edge, %if.end37.sw.epilog_crit_edge
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 500, i32 noundef 2) #6
  %reset_gpio = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 1
  %55 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reset_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %56)
  %57 = icmp ult i32 %56, 2048
  br i1 %57, label %if.then46, label %sw.epilog.if.end52_crit_edge

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_active_high = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 2
  %58 = ptrtoint ptr %gpio_active_high to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %gpio_active_high, align 4, !range !242
  %60 = zext i8 %59 to i32
  %call.i185 = tail call ptr @gpio_to_desc(i32 noundef %56) #6
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i185, i32 noundef %60) #6
  tail call void @msleep(i32 noundef 100) #6
  %61 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reset_gpio, align 4
  %63 = ptrtoint ptr %gpio_active_high to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %gpio_active_high, align 4, !range !242
  %65 = xor i8 %64, 1
  %66 = zext i8 %65 to i32
  %call.i186 = tail call ptr @gpio_to_desc(i32 noundef %62) #6
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i186, i32 noundef %66) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %sw.epilog.if.end52_crit_edge
  %67 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drvdata.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %70, label %if.end52.cleanup_crit_edge [
    i32 4, label %sw.bb55
    i32 5, label %sw.bb57
    i32 3, label %sw.bb66
    i32 1, label %sw.bb94
    i32 2, label %sw.bb96
  ]

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb55:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %pciephy_reset = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 10
  %72 = ptrtoint ptr %pciephy_reset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pciephy_reset, align 4
  %call56 = tail call i32 @reset_control_deassert(ptr noundef %73) #6
  br label %cleanup

sw.bb57:                                          ; preds = %if.end52
  %phy58 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 23
  %74 = ptrtoint ptr %phy58 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy58, align 4
  %call59 = tail call i32 @phy_init(ptr noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %sw.bb57.cleanup_crit_edge, label %do.end64

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end64:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.87) #9
  br label %cleanup

sw.bb66:                                          ; preds = %if.end52
  %pciephy_reset67 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 10
  %76 = ptrtoint ptr %pciephy_reset67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pciephy_reset67, align 4
  %call68 = tail call i32 @reset_control_deassert(ptr noundef %77) #6
  %phy_base = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 20
  %78 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy_base, align 4
  %tobool69.not = icmp eq ptr %79, null
  br i1 %tobool69.not, label %do.end92, label %do.body76, !prof !241

do.body76:                                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy_base, align 4
  %add.ptr = getelementptr i8, ptr %81, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 687865856) #6, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_base, align 4
  %add.ptr84 = getelementptr i8, ptr %83, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 1207959552) #6, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy_base, align 4
  %add.ptr89 = getelementptr i8, ptr %85, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 -1140850688) #6, !srcloc !244
  br label %if.end93

do.end92:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.90) #9
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %do.body76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %86 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %val.i, align 4, !annotation !240
  %87 = ptrtoint ptr %imx6_pcie to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %imx6_pcie, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %call.i187 = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i187, 400000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 493) #6
  %iomuxc_gpr.i188 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %91 = ptrtoint ptr %iomuxc_gpr.i188 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iomuxc_gpr.i188, align 4
  %call957.i = call i32 @regmap_read(ptr noundef %92, i32 noundef 88, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call957.i)
  %tobool.not58.i = icmp eq i32 %call957.i, 0
  br i1 %tobool.not58.i, label %if.end93.lor.lhs.false.i_crit_edge, label %if.end93.do.end34.i_crit_edge

if.end93.do.end34.i_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

if.end93.lor.lhs.false.i_crit_edge:               ; preds = %if.end93
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then22.i.lor.lhs.false.i_crit_edge, %if.end93.lor.lhs.false.i_crit_edge
  %93 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %tobool10.not.i = icmp sgt i32 %94, -1
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.imx7d_pcie_wait_for_phy_pll_lock.exit_crit_edge

lor.lhs.false.i.imx7d_pcie_wait_for_phy_pll_lock.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7d_pcie_wait_for_phy_pll_lock.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call14.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then22.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #6
  %95 = ptrtoint ptr %iomuxc_gpr.i188 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %iomuxc_gpr.i188, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %96, i32 noundef 88, ptr noundef nonnull %val.i) #6
  %tobool.not.i189 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i189, label %if.then22.i.lor.lhs.false.i_crit_edge, label %if.then22.i.do.end34.i_crit_edge

if.then22.i.do.end34.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

if.then22.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %97 = ptrtoint ptr %iomuxc_gpr.i188 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %iomuxc_gpr.i188, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %98, i32 noundef 88, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool24.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool24.not.i, label %lor.rhs.i, label %for.end.i.do.end34.i_crit_edge

for.end.i.do.end34.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

lor.rhs.i:                                        ; preds = %for.end.i
  %99 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr.i = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool26.i = icmp slt i32 %.pr.i, 0
  br i1 %tobool26.i, label %lor.rhs.i.imx7d_pcie_wait_for_phy_pll_lock.exit_crit_edge, label %lor.rhs.i.do.end34.i_crit_edge

lor.rhs.i.do.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

lor.rhs.i.imx7d_pcie_wait_for_phy_pll_lock.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx7d_pcie_wait_for_phy_pll_lock.exit

do.end34.i:                                       ; preds = %lor.rhs.i.do.end34.i_crit_edge, %for.end.i.do.end34.i_crit_edge, %if.then22.i.do.end34.i_crit_edge, %if.end93.do.end34.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.102) #9
  br label %imx7d_pcie_wait_for_phy_pll_lock.exit

imx7d_pcie_wait_for_phy_pll_lock.exit:            ; preds = %do.end34.i, %lor.rhs.i.imx7d_pcie_wait_for_phy_pll_lock.exit_crit_edge, %lor.lhs.false.i.imx7d_pcie_wait_for_phy_pll_lock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

sw.bb94:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %100 = ptrtoint ptr %iomuxc_gpr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %iomuxc_gpr, align 4
  %call.i190 = tail call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 20, i32 noundef 524288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb96:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr97 = getelementptr inbounds %struct.imx6_pcie, ptr %imx6_pcie, i32 0, i32 8
  %102 = ptrtoint ptr %iomuxc_gpr97 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iomuxc_gpr97, align 4
  %call.i191 = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 4, i32 noundef 536870912, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 500, i32 noundef 2) #6
  br label %cleanup

err_pcie:                                         ; preds = %do.end36, %do.end29
  %104 = ptrtoint ptr %pcie_bus to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pcie_bus, align 4
  tail call void @clk_disable(ptr noundef %105) #6
  tail call void @clk_unprepare(ptr noundef %105) #6
  br label %err_pcie_bus

err_pcie_bus:                                     ; preds = %err_pcie, %do.end22
  %106 = ptrtoint ptr %pcie_phy to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pcie_phy, align 4
  tail call void @clk_disable(ptr noundef %107) #6
  tail call void @clk_unprepare(ptr noundef %107) #6
  br label %err_pcie_phy

err_pcie_phy:                                     ; preds = %err_pcie_bus, %do.end15
  %108 = ptrtoint ptr %vpcie to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vpcie, align 4
  %tobool104.not = icmp eq ptr %109, null
  br i1 %tobool104.not, label %err_pcie_phy.cleanup_crit_edge, label %land.lhs.true105

err_pcie_phy.cleanup_crit_edge:                   ; preds = %err_pcie_phy
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true105:                                 ; preds = %err_pcie_phy
  %call107 = tail call i32 @regulator_is_enabled(ptr noundef nonnull %109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp = icmp sgt i32 %call107, 0
  br i1 %cmp, label %if.then109, label %land.lhs.true105.cleanup_crit_edge

land.lhs.true105.cleanup_crit_edge:               ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then109:                                       ; preds = %land.lhs.true105
  %110 = ptrtoint ptr %vpcie to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vpcie, align 4
  %call111 = tail call i32 @regulator_disable(ptr noundef %111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.then109.cleanup_crit_edge, label %do.end116

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end116:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.67, i32 noundef %call111) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %if.then109.cleanup_crit_edge, %land.lhs.true105.cleanup_crit_edge, %err_pcie_phy.cleanup_crit_edge, %sw.bb96, %sw.bb94, %imx7d_pcie_wait_for_phy_pll_lock.exit, %do.end64, %sw.bb57.cleanup_crit_edge, %sw.bb55, %if.end52.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pcie_suspend_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %flags = getelementptr inbounds %struct.imx6_pcie_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %turnoff_reset.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %turnoff_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %turnoff_reset.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @reset_control_assert(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %turnoff_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %turnoff_reset.i, align 4
  %call4.i = tail call i32 @reset_control_deassert(ptr noundef %13) #6
  br label %pm_turnoff_sleep.i

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cond.i = icmp eq i32 %15, 1
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %iomuxc_gpr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomuxc_gpr.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 48, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %iomuxc_gpr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomuxc_gpr.i, align 4
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 48, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %pm_turnoff_sleep.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.113) #9
  br label %imx6_pcie_pm_turnoff.exit

pm_turnoff_sleep.i:                               ; preds = %sw.bb.i, %if.then.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #6
  br label %imx6_pcie_pm_turnoff.exit

imx6_pcie_pm_turnoff.exit:                        ; preds = %pm_turnoff_sleep.i, %do.end.i
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %drvdata.i12 = getelementptr inbounds %struct.imx6_pcie, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %drvdata.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drvdata.i12, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %25, label %do.end.i16 [
    i32 1, label %imx6_pcie_pm_turnoff.exit.sw.bb.i15_crit_edge
    i32 2, label %imx6_pcie_pm_turnoff.exit.sw.bb.i15_crit_edge22
    i32 3, label %imx6_pcie_pm_turnoff.exit.sw.bb2.i_crit_edge
    i32 5, label %imx6_pcie_pm_turnoff.exit.sw.bb2.i_crit_edge23
  ]

imx6_pcie_pm_turnoff.exit.sw.bb2.i_crit_edge23:   ; preds = %imx6_pcie_pm_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

imx6_pcie_pm_turnoff.exit.sw.bb2.i_crit_edge:     ; preds = %imx6_pcie_pm_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

imx6_pcie_pm_turnoff.exit.sw.bb.i15_crit_edge22:  ; preds = %imx6_pcie_pm_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i15

imx6_pcie_pm_turnoff.exit.sw.bb.i15_crit_edge:    ; preds = %imx6_pcie_pm_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i15

sw.bb.i15:                                        ; preds = %imx6_pcie_pm_turnoff.exit.sw.bb.i15_crit_edge, %imx6_pcie_pm_turnoff.exit.sw.bb.i15_crit_edge22
  %iomuxc_gpr.i13 = getelementptr inbounds %struct.imx6_pcie, ptr %21, i32 0, i32 8
  %27 = ptrtoint ptr %iomuxc_gpr.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomuxc_gpr.i13, align 4
  %call.i.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 48, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %imx6_pcie_ltssm_disable.exit

sw.bb2.i:                                         ; preds = %imx6_pcie_pm_turnoff.exit.sw.bb2.i_crit_edge, %imx6_pcie_pm_turnoff.exit.sw.bb2.i_crit_edge23
  %apps_reset.i = getelementptr inbounds %struct.imx6_pcie, ptr %21, i32 0, i32 11
  %29 = ptrtoint ptr %apps_reset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %apps_reset.i, align 4
  %call3.i = tail call i32 @reset_control_assert(ptr noundef %30) #6
  br label %imx6_pcie_ltssm_disable.exit

do.end.i16:                                       ; preds = %imx6_pcie_pm_turnoff.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.115) #9
  br label %imx6_pcie_ltssm_disable.exit

imx6_pcie_ltssm_disable.exit:                     ; preds = %do.end.i16, %sw.bb2.i, %sw.bb.i15
  %pcie.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %pcie.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie.i, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  %pcie_phy.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %pcie_phy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie_phy.i, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  %pcie_bus.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %pcie_bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcie_bus.i, align 4
  tail call void @clk_disable(ptr noundef %36) #6
  tail call void @clk_unprepare(ptr noundef %36) #6
  %37 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %drvdata, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %40, label %imx6_pcie_ltssm_disable.exit.imx6_pcie_clk_disable.exit_crit_edge [
    i32 1, label %sw.bb.i18
    i32 3, label %sw.bb1.i
    i32 4, label %imx6_pcie_ltssm_disable.exit.sw.bb2.i21_crit_edge
    i32 5, label %imx6_pcie_ltssm_disable.exit.sw.bb2.i21_crit_edge24
  ]

imx6_pcie_ltssm_disable.exit.sw.bb2.i21_crit_edge24: ; preds = %imx6_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i21

imx6_pcie_ltssm_disable.exit.sw.bb2.i21_crit_edge: ; preds = %imx6_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i21

imx6_pcie_ltssm_disable.exit.imx6_pcie_clk_disable.exit_crit_edge: ; preds = %imx6_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx6_pcie_clk_disable.exit

sw.bb.i18:                                        ; preds = %imx6_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pcie_inbound_axi.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %pcie_inbound_axi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcie_inbound_axi.i, align 4
  tail call void @clk_disable(ptr noundef %43) #6
  tail call void @clk_unprepare(ptr noundef %43) #6
  br label %imx6_pcie_clk_disable.exit

sw.bb1.i:                                         ; preds = %imx6_pcie_ltssm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %iomuxc_gpr.i19 = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %iomuxc_gpr.i19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iomuxc_gpr.i19, align 4
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 48, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %imx6_pcie_clk_disable.exit

sw.bb2.i21:                                       ; preds = %imx6_pcie_ltssm_disable.exit.sw.bb2.i21_crit_edge, %imx6_pcie_ltssm_disable.exit.sw.bb2.i21_crit_edge24
  %pcie_aux.i = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %pcie_aux.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcie_aux.i, align 4
  tail call void @clk_disable(ptr noundef %47) #6
  tail call void @clk_unprepare(ptr noundef %47) #6
  br label %imx6_pcie_clk_disable.exit

imx6_pcie_clk_disable.exit:                       ; preds = %sw.bb2.i21, %sw.bb1.i, %sw.bb.i18, %imx6_pcie_ltssm_disable.exit.imx6_pcie_clk_disable.exit_crit_edge
  %48 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %drvdata, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cond = icmp eq i32 %51, 5
  br i1 %cond, label %sw.bb, label %imx6_pcie_clk_disable.exit.cleanup_crit_edge

imx6_pcie_clk_disable.exit.cleanup_crit_edge:     ; preds = %imx6_pcie_clk_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %imx6_pcie_clk_disable.exit
  %phy = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 23
  %52 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_power_off(ptr noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %sw.bb.cleanup_crit_edge, label %do.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.111) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb.cleanup_crit_edge, %imx6_pcie_clk_disable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6_pcie_resume_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drvdata = getelementptr inbounds %struct.imx6_pcie, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %flags = getelementptr inbounds %struct.imx6_pcie_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %pp1 = getelementptr inbounds %struct.dw_pcie, ptr %7, i32 0, i32 7
  tail call fastcc void @imx6_pcie_assert_core_reset(ptr noundef %1)
  tail call fastcc void @imx6_pcie_init_phy(ptr noundef %1)
  tail call fastcc void @imx6_pcie_deassert_core_reset(ptr noundef %1)
  tail call void @dw_pcie_setup_rc(ptr noundef %pp1) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @imx6_pcie_start_link(ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.117) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup_rc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx6q_pcie_abort_handler(i32 noundef %addr, i32 noundef %fsr, ptr nocapture noundef %regs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %shr = lshr i32 %4, 12
  %and = and i32 %shr, 15
  %and1 = and i32 %4, 202375168
  call void @__sanitizer_cov_trace_const_cmp4(i32 68157440, i32 %and1)
  %cmp = icmp eq i32 %and1, 68157440
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2 = and i32 %4, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool.not, i32 -1, i32 255
  br label %cleanup.sink.split

if.end8:                                          ; preds = %entry
  %and9 = and i32 %4, 235929744
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048720, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 1048720
  br i1 %cmp10, label %if.end8.cleanup.sink.split_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.then
  %.sink = phi i32 [ %., %if.then ], [ -1, %if.end8.cleanup.sink.split_crit_edge ]
  %arrayidx13 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %arrayidx13, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add16 = add i32 %7, 4
  store i32 %add16, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @__pci_fixup_imx6_pcie_quirk1322, !1, !"__pci_fixup_imx6_pcie_quirk1322", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1321, i32 1}
!2 = !{ptr @__initcall__kmod_pci_imx6__329_1340_imx6_pcie_init6, !3, !"__initcall__kmod_pci_imx6__329_1340_imx6_pcie_init6", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1340, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1316, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @imx6_pcie_quirk._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @imx6_pcie_quirk._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1283, i32 11}
!14 = !{ptr @imx6_pcie_driver, !15, !"imx6_pcie_driver", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1281, i32 31}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1048, i32 30}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1054, i32 4}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx6_pcie_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx6_pcie_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1068, i32 50}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1070, i32 7}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1076, i32 5}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1078, i32 4}
!32 = !{ptr @imx6_pcie_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx6_pcie_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1086, i32 42}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1089, i32 10}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1091, i32 38}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1094, i32 10}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1099, i32 11}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1102, i32 11}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1105, i32 43}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1108, i32 11}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1115, i32 14}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1117, i32 4}
!54 = !{ptr @imx6_pcie_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx6_pcie_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1122, i32 11}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1124, i32 4}
!60 = !{ptr @imx6_pcie_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @imx6_pcie_probe._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1137, i32 11}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1139, i32 38}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1142, i32 11}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1150, i32 43}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1153, i32 11}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1158, i32 76}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1160, i32 3}
!76 = !{ptr @imx6_pcie_probe._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @imx6_pcie_probe._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1166, i32 39}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1168, i32 3}
!82 = !{ptr @imx6_pcie_probe._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @imx6_pcie_probe._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1173, i32 33}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1177, i32 33}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1181, i32 33}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1185, i32 33}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1189, i32 33}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1195, i32 29}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1197, i32 61}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1204, i32 59}
!100 = !{ptr @dw_pcie_ops, !101, !"dw_pcie_ops", i1 false, i1 false}
!101 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 888, i32 33}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 844, i32 5}
!104 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @imx6_pcie_start_link._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @imx6_pcie_start_link._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @imx6_pcie_start_link._entry.55, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 852, i32 4}
!109 = !{ptr @imx6_pcie_start_link._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 856, i32 3}
!112 = !{ptr @imx6_pcie_start_link._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @imx6_pcie_start_link._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 860, i32 2}
!116 = !{ptr @imx6_pcie_start_link._entry.60, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @imx6_pcie_start_link._entry_ptr.62, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 864, i32 2}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @imx6_pcie_start_link.__UNIQUE_ID_ddebug328, !119, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 767, i32 2}
!124 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @imx6_pcie_wait_for_speed_change._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @imx6_pcie_wait_for_speed_change._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @imx6_pcie_host_ops, !128, !"imx6_pcie_host_ops", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 884, i32 38}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 408, i32 4}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @imx6_pcie_assert_core_reset._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @imx6_pcie_assert_core_reset._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 506, i32 4}
!136 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @imx6_pcie_deassert_core_reset._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 514, i32 3}
!141 = !{ptr @imx6_pcie_deassert_core_reset._entry.71, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.73, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 520, i32 3}
!145 = !{ptr @imx6_pcie_deassert_core_reset._entry.74, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.76, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 526, i32 3}
!149 = !{ptr @imx6_pcie_deassert_core_reset._entry.77, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.79, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 532, i32 3}
!153 = !{ptr @imx6_pcie_deassert_core_reset._entry.80, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.82, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 539, i32 4}
!157 = !{ptr @imx6_pcie_deassert_core_reset._entry.83, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.85, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 562, i32 4}
!161 = !{ptr @imx6_pcie_deassert_core_reset._entry.86, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.88, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 583, i32 4}
!165 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @imx6_pcie_deassert_core_reset._entry.89, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.92, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @imx6_pcie_deassert_core_reset._entry.93, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 614, i32 4}
!170 = !{ptr @imx6_pcie_deassert_core_reset._entry_ptr.94, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 431, i32 4}
!173 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @imx6_pcie_enable_ref_clk._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @imx6_pcie_enable_ref_clk._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.98, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 458, i32 4}
!178 = !{ptr @imx6_pcie_enable_ref_clk._entry.97, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @imx6_pcie_enable_ref_clk._entry_ptr.99, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @imx6_pcie_enable_ref_clk._entry.100, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 463, i32 4}
!182 = !{ptr @imx6_pcie_enable_ref_clk._entry_ptr.101, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 494, i32 3}
!185 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @imx7d_pcie_wait_for_phy_pll_lock._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @imx7d_pcie_wait_for_phy_pll_lock._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 730, i32 3}
!190 = !{ptr @.str.105, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @imx6_setup_phy_mpll._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @imx6_setup_phy_mpll._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.106, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 350, i32 3}
!195 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @imx6_pcie_attach_pd._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @imx6_pcie_attach_pd._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 363, i32 3}
!200 = !{ptr @imx6_pcie_attach_pd._entry.108, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @imx6_pcie_attach_pd._entry_ptr.110, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @imx6_pcie_of_match, !203, !"imx6_pcie_of_match", i1 false, i1 false}
!203 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1271, i32 34}
!204 = !{ptr @drvdata, !205, !"drvdata", i1 false, i1 false}
!205 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1239, i32 39}
!206 = !{ptr @imx6_pcie_pm_ops, !207, !"imx6_pcie_pm_ops", i1 false, i1 false}
!207 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1016, i32 32}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 985, i32 4}
!210 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @imx6_pcie_suspend_noirq._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @imx6_pcie_suspend_noirq._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 933, i32 3}
!215 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @imx6_pcie_pm_turnoff._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @imx6_pcie_pm_turnoff._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 908, i32 3}
!220 = !{ptr @.str.116, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @imx6_pcie_ltssm_disable._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @imx6_pcie_ltssm_disable._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1010, i32 3}
!225 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @imx6_pcie_resume_noirq._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @imx6_pcie_resume_noirq._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pci/controller/dwc/pci-imx6.c", i32 1335, i32 4}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{i64 2148787363, i64 2148787368, i64 2148787381, i64 2148787425, i64 2148787459, i64 2148787480}
!240 = !{!"auto-init"}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{i8 0, i8 2}
!243 = !{i64 2156124932}
!244 = !{i64 4950512}
!245 = !{i64 2156125565}
!246 = !{i64 2156126145}
