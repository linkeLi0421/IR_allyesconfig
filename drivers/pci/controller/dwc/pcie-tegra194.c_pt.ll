; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-tegra194.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-tegra194.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.tegra194_pcie_of_data = type { i32 }
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
%struct.tegra194_pcie = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dw_pcie, ptr, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.mrq_uphy_response = type { %union.anon.98 }
%union.anon.98 = type { %struct.cmd_uphy_margin_status_response }
%struct.cmd_uphy_margin_status_response = type { i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.99, %struct.anon.100 }
%struct.anon.99 = type { ptr, i32 }
%struct.anon.100 = type { ptr, i32, i32 }
%struct.mrq_uphy_request = type { i16, i16, %union.anon.101 }
%union.anon.101 = type { %struct.cmd_uphy_margin_control_request }
%struct.cmd_uphy_margin_control_request = type { i32, i32, i32, i32, i32 }
%struct.cmd_uphy_pcie_controller_state_request = type { i8, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.90, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.90 = type { ptr }

@__initcall__kmod_pcie_tegra194__298_2317_tegra194_pcie_driver_init6 = internal global ptr @tegra194_pcie_driver_init, section ".initcall6.init", align 4
@tegra194_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra194_pcie_probe, ptr @tegra194_pcie_remove, ptr @tegra194_pcie_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra194_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra194_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra194_pcie_driver_exit = internal global ptr @tegra194_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [53 x i8] c"pcie_tegra194.author=Vidya Sagar <vidyas@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [61 x i8] c"pcie_tegra194.description=NVIDIA PCIe host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [60 x i8] c"pcie_tegra194.file=drivers/pci/controller/dwc/pcie-tegra194\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [29 x i8] c"pcie_tegra194.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra194-pcie\00", [18 x i8] zeroinitializer }, align 32
@tegra194_pcie_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_pcie_ep_of_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra194_pcie_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra194_pcie_suspend_late, ptr @tegra194_pcie_resume_early, ptr null, ptr null, ptr null, ptr null, ptr @tegra194_pcie_suspend_noirq, ptr @tegra194_pcie_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @tegra194_pcie_link_up, ptr @tegra194_pcie_start_link, ptr @tegra194_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2000, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to parse device tree: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra194_pcie_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/pci/controller/dwc/pcie-tegra194.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr = internal global ptr @tegra194_pcie_probe._entry, section ".printk_index", align 4
@tegra194_pcie_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 2013, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get slot regulators: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.9 = internal global ptr @tegra194_pcie_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vddio-pex-ctl\00", [18 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 2025, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulator: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.13 = internal global ptr @tegra194_pcie_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 2032, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get core clock: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.17 = internal global ptr @tegra194_pcie_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"appl\00", [27 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 2039, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to find \22appl\22 region\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.21 = internal global ptr @tegra194_pcie_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 2050, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get APB reset: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.25 = internal global ptr @tegra194_pcie_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p2u-%u\00", [25 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 2061, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create P2U string\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.29 = internal global ptr @tegra194_pcie_probe._entry.27, section ".printk_index", align 4
@tegra194_pcie_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 2069, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get PHY: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.32 = internal global ptr @tegra194_pcie_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atu_dma\00", [24 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 2079, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to find \22atu_dma\22 region\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.36 = internal global ptr @tegra194_pcie_probe._entry.34, section ".printk_index", align 4
@tegra194_pcie_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 2092, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get core reset: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.39 = internal global ptr @tegra194_pcie_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra-pcie-intr\00", [16 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 2112, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.44 = internal global ptr @tegra194_pcie_probe._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra-pcie-ep-intr\00", [45 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 2131, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.47 = internal global ptr @tegra194_pcie_probe._entry.46, section ".printk_index", align 4
@tegra194_pcie_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.4, ptr @.str.5, i32 2141, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid PCIe device type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra194_pcie_probe._entry_ptr.50 = internal global ptr @tegra194_pcie_probe._entry.48, section ".printk_index", align 4
@tegra194_pcie_start_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 970, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link is down in DLL\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra194_pcie_start_link\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra194_pcie_start_link._entry_ptr = internal global ptr @tegra194_pcie_start_link._entry, section ".printk_index", align 4
@tegra194_pcie_start_link._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.5, i32 971, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Trying again with DLFE disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra194_pcie_start_link._entry_ptr.56 = internal global ptr @tegra194_pcie_start_link._entry.54, section ".printk_index", align 4
@pcie_gen_freq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 62500000, i32 125000000, i32 250000000, i32 500000000], [16 x i8] zeroinitializer }, align 32
@tegra_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_own_conf_map_bus, ptr @tegra194_pcie_rd_own_conf, ptr @tegra194_pcie_wr_own_conf }, [44 x i8] zeroinitializer }, align 32
@event_cntr_ctrl_offset = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 472, i32 424, i32 424, i32 424, i32 452, i32 472], [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dbi\00", [28 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 1071, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to find \22dbi\22 region\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra194_pcie_parse_dt\00", [41 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr = internal global ptr @tegra194_pcie_parse_dt._entry, section ".printk_index", align 4
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,aspm-cmrt-us\00", [44 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.5, i32 1077, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read ASPM T_cmrt: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.63 = internal global ptr @tegra194_pcie_parse_dt._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,aspm-pwr-on-t-us\00", [40 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.5, i32 1085, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read ASPM Power On time: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.67 = internal global ptr @tegra194_pcie_parse_dt._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nvidia,aspm-l0s-entrance-latency-us\00", [60 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.5, i32 1091, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read ASPM L0s Entrance latency: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.71 = internal global ptr @tegra194_pcie_parse_dt._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-lanes\00", [22 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.59, ptr @.str.5, i32 1095, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read num-lanes: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.75 = internal global ptr @tegra194_pcie_parse_dt._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,bpmp\00", [20 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.59, ptr @.str.5, i32 1101, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read Controller-ID: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.79 = internal global ptr @tegra194_pcie_parse_dt._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy-names\00", [22 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.59, ptr @.str.5, i32 1108, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to find PHY entries: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.83 = internal global ptr @tegra194_pcie_parse_dt._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,update-fc-fixup\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"supports-clkreq\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snps,enable-cdm-check\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.59, ptr @.str.5, i32 1136, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get PERST GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.90 = internal global ptr @tegra194_pcie_parse_dt._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,refclk-select\00", [43 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.59, ptr @.str.5, i32 1152, ptr null, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get REFCLK select GPIOs: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra194_pcie_parse_dt._entry_ptr.94 = internal global ptr @tegra194_pcie_parse_dt._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie3v3\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpcie12v\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_pcie_rp_irq_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.97, ptr @.str.98, ptr @.str.5, ptr @.str.99, i8 0, i8 98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_tegra194\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_pcie_rp_irq_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Link Speed : Gen-%u\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_rp_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.5, i32 404, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CDM check complete\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_pcie_rp_irq_handler._entry_ptr = internal global ptr @tegra_pcie_rp_irq_handler._entry, section ".printk_index", align 4
@tegra_pcie_rp_irq_handler._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.98, ptr @.str.5, i32 408, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CDM comparison mismatch\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_rp_irq_handler._entry_ptr.103 = internal global ptr @tegra_pcie_rp_irq_handler._entry.101, section ".printk_index", align 4
@tegra_pcie_rp_irq_handler._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.98, ptr @.str.5, i32 412, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CDM Logic error\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_pcie_rp_irq_handler._entry_ptr.106 = internal global ptr @tegra_pcie_rp_irq_handler._entry.104, section ".printk_index", align 4
@tegra_pcie_rp_irq_handler._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.98, ptr @.str.5, i32 417, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CDM Error Address Offset = 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_pcie_rp_irq_handler._entry_ptr.109 = internal global ptr @tegra_pcie_rp_irq_handler._entry.107, section ".printk_index", align 4
@apply_bad_link_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 333, ptr @.str.112, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCIe link is bad, width reduced\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"apply_bad_link_workaround\00", [38 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@apply_bad_link_workaround._entry_ptr = internal global ptr @apply_bad_link_workaround._entry, section ".printk_index", align 4
@tegra_pcie_config_rp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.5, i32 1567, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get runtime sync for PCIe dev: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_pcie_config_rp\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_config_rp._entry_ptr = internal global ptr @tegra_pcie_config_rp._entry, section ".printk_index", align 4
@tegra_pcie_config_rp._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.5, i32 1573, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to configure sideband pins: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_pcie_config_rp._entry_ptr.117 = internal global ptr @tegra_pcie_config_rp._entry.115, section ".printk_index", align 4
@tegra_pcie_config_rp._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.5, i32 1579, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialize controller: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_pcie_config_rp._entry_ptr.120 = internal global ptr @tegra_pcie_config_rp._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFP\00", [26 x i8] zeroinitializer }, align 32
@tegra194_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @tegra194_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@tegra_pcie_init_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.5, i32 1459, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add PCIe port: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_pcie_init_controller\00", [37 x i8] zeroinitializer }, align 32
@tegra_pcie_init_controller._entry_ptr = internal global ptr @tegra_pcie_init_controller._entry, section ".printk_index", align 4
@tegra_pcie_config_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.5, i32 1329, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable controller %u: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_pcie_config_controller\00", [35 x i8] zeroinitializer }, align 32
@tegra_pcie_config_controller._entry_ptr = internal global ptr @tegra_pcie_config_controller._entry, section ".printk_index", align 4
@tegra_pcie_config_controller._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.5, i32 1339, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_config_controller._entry_ptr.128 = internal global ptr @tegra_pcie_config_controller._entry.126, section ".printk_index", align 4
@tegra_pcie_config_controller._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.5, i32 1345, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable core clock: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_pcie_config_controller._entry_ptr.131 = internal global ptr @tegra_pcie_config_controller._entry.129, section ".printk_index", align 4
@tegra_pcie_config_controller._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.125, ptr @.str.5, i32 1352, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to deassert core APB reset: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_pcie_config_controller._entry_ptr.134 = internal global ptr @tegra_pcie_config_controller._entry.132, section ".printk_index", align 4
@tegra_pcie_config_controller._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.125, ptr @.str.5, i32 1367, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable PHY: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_pcie_config_controller._entry_ptr.137 = internal global ptr @tegra_pcie_config_controller._entry.135, section ".printk_index", align 4
@tegra_pcie_enable_slot_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.5, i32 1282, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable 3.3V slot supply: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra_pcie_enable_slot_regulators\00", [62 x i8] zeroinitializer }, align 32
@tegra_pcie_enable_slot_regulators._entry_ptr = internal global ptr @tegra_pcie_enable_slot_regulators._entry, section ".printk_index", align 4
@tegra_pcie_enable_slot_regulators._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.5, i32 1291, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable 12V slot supply: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_pcie_enable_slot_regulators._entry_ptr.142 = internal global ptr @tegra_pcie_enable_slot_regulators._entry.140, section ".printk_index", align 4
@tegra_pcie_unconfig_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.5, i32 1423, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to assert \22core\22 reset: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_pcie_unconfig_controller\00", [33 x i8] zeroinitializer }, align 32
@tegra_pcie_unconfig_controller._entry_ptr = internal global ptr @tegra_pcie_unconfig_controller._entry, section ".printk_index", align 4
@tegra_pcie_unconfig_controller._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 1429, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to assert APB reset: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_unconfig_controller._entry_ptr.147 = internal global ptr @tegra_pcie_unconfig_controller._entry.145, section ".printk_index", align 4
@tegra_pcie_unconfig_controller._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.5, i32 1435, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to disable regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_pcie_unconfig_controller._entry_ptr.150 = internal global ptr @tegra_pcie_unconfig_controller._entry.148, section ".printk_index", align 4
@tegra_pcie_unconfig_controller._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.5, i32 1442, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable controller %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_pcie_unconfig_controller._entry_ptr.153 = internal global ptr @tegra_pcie_unconfig_controller._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aspm_state_cnt\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tx L0s entry count : %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rx L0s entry count : %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Link L1 entry count : %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Link L1.1 entry count : %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Link L1.2 entry count : %u\0A\00", [36 x i8] zeroinitializer }, align 32
@event_cntr_data_offset = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 476, i32 428, i32 428, i32 428, i32 456, i32 476], [40 x i8] zeroinitializer }, align 32
@tegra_pcie_downstream_dev_to_D0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.5, i32 1239, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to find downstream devices\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_pcie_downstream_dev_to_D0\00", [32 x i8] zeroinitializer }, align 32
@tegra_pcie_downstream_dev_to_D0._entry_ptr = internal global ptr @tegra_pcie_downstream_dev_to_D0._entry, section ".printk_index", align 4
@tegra_pcie_downstream_dev_to_D0._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.5, i32 1248, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to transition %s to D0 state\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_pcie_downstream_dev_to_D0._entry_ptr.164 = internal global ptr @tegra_pcie_downstream_dev_to_D0._entry.162, section ".printk_index", align 4
@tegra194_pcie_pme_turnoff.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.97, ptr @.str.165, ptr @.str.5, ptr @.str.166, i8 1, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra194_pcie_pme_turnoff\00", [38 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCIe link is not up...!\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra194_pcie_pme_turnoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.5, i32 1507, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Link didn't transition to L2 state\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra194_pcie_pme_turnoff._entry_ptr = internal global ptr @tegra194_pcie_pme_turnoff._entry, section ".printk_index", align 4
@tegra194_pcie_pme_turnoff._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.165, ptr @.str.5, i32 1534, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Link didn't go to detect state\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra194_pcie_pme_turnoff._entry_ptr.170 = internal global ptr @tegra194_pcie_pme_turnoff._entry.168, section ".printk_index", align 4
@tegra_pcie_ep_hard_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.97, ptr @.str.171, ptr @.str.5, ptr @.str.172, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_pcie_ep_hard_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Link is up with Host\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_pcie_ep_hard_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.5, i32 533, ptr @.str.112, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Random interrupt (STATUS = 0x%08X)\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_pcie_ep_hard_irq._entry_ptr = internal global ptr @tegra_pcie_ep_hard_irq._entry, section ".printk_index", align 4
@tegra_pcie_ep_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.5, i32 489, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to send LTR message\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_pcie_ep_irq_thread\00", [39 x i8] zeroinitializer }, align 32
@tegra_pcie_ep_irq_thread._entry_ptr = internal global ptr @tegra_pcie_ep_irq_thread._entry, section ".printk_index", align 4
@pcie_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr null, ptr @tegra_pcie_ep_raise_irq, ptr @tegra_pcie_ep_get_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.5, i32 1916, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to set PERST GPIO debounce time: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_pcie_config_ep\00", [43 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry_ptr = internal global ptr @tegra_pcie_config_ep._entry, section ".printk_index", align 4
@tegra_pcie_config_ep._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.5, i32 1922, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get IRQ for PERST GPIO: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry_ptr.180 = internal global ptr @tegra_pcie_config_ep._entry.178, section ".printk_index", align 4
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_pcie_%u_pex_rst_irq\00", [38 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.177, ptr @.str.5, i32 1930, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create PERST IRQ string\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry_ptr.184 = internal global ptr @tegra_pcie_config_ep._entry.182, section ".printk_index", align 4
@tegra_pcie_config_ep._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.177, ptr @.str.5, i32 1944, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request IRQ for PERST: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry_ptr.187 = internal global ptr @tegra_pcie_config_ep._entry.185, section ".printk_index", align 4
@tegra_pcie_config_ep._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.177, ptr @.str.5, i32 1953, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to initialize DWC Endpoint subsystem: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_pcie_config_ep._entry_ptr.190 = internal global ptr @tegra_pcie_config_ep._entry.188, section ".printk_index", align 4
@tegra_pcie_ep_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.5, i32 1871, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown IRQ type\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_pcie_ep_raise_irq\00", [40 x i8] zeroinitializer }, align 32
@tegra_pcie_ep_raise_irq._entry_ptr = internal global ptr @tegra_pcie_ep_raise_irq._entry, section ".printk_index", align 4
@tegra_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 -64, i8 60, i8 1, [6 x i64] [i64 1048576, i64 0, i64 0, i64 0, i64 0, i64 0], i32 0 }, [32 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_assert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.5, i32 1627, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to go Detect state: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pex_ep_event_pex_rst_assert\00", [36 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_assert._entry_ptr = internal global ptr @pex_ep_event_pex_rst_assert._entry, section ".printk_index", align 4
@pex_ep_event_pex_rst_assert._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.194, ptr @.str.5, i32 1641, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to turn off UPHY: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_assert._entry_ptr.197 = internal global ptr @pex_ep_event_pex_rst_assert._entry.195, section ".printk_index", align 4
@pex_ep_event_pex_rst_assert.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.97, ptr @.str.194, ptr @.str.5, ptr @.str.198, i8 1, i8 -101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Uninitialization of endpoint is completed\0A\00", [53 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.199, ptr @.str.5, i32 1661, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pex_ep_event_pex_rst_deassert\00", [34 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry_ptr = internal global ptr @pex_ep_event_pex_rst_deassert._entry, section ".printk_index", align 4
@pex_ep_event_pex_rst_deassert._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.5, i32 1667, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to init UPHY for PCIe EP: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry_ptr.202 = internal global ptr @pex_ep_event_pex_rst_deassert._entry.200, section ".printk_index", align 4
@pex_ep_event_pex_rst_deassert._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.199, ptr @.str.5, i32 1673, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry_ptr.204 = internal global ptr @pex_ep_event_pex_rst_deassert._entry.203, section ".printk_index", align 4
@pex_ep_event_pex_rst_deassert._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.199, ptr @.str.5, i32 1679, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry_ptr.206 = internal global ptr @pex_ep_event_pex_rst_deassert._entry.205, section ".printk_index", align 4
@pex_ep_event_pex_rst_deassert._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.199, ptr @.str.5, i32 1685, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry_ptr.208 = internal global ptr @pex_ep_event_pex_rst_deassert._entry.207, section ".printk_index", align 4
@pex_ep_event_pex_rst_deassert._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.199, ptr @.str.5, i32 1781, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to complete initialization: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pex_ep_event_pex_rst_deassert._entry_ptr.211 = internal global ptr @pex_ep_event_pex_rst_deassert._entry.209, section ".printk_index", align 4
@pex_ep_event_pex_rst_deassert.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.97, ptr @.str.199, ptr @.str.5, ptr @.str.212, i8 1, i8 -64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.212 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Initialization of endpoint is completed\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra194_pcie_rc_of_data = internal constant { %struct.tegra194_pcie_of_data, [28 x i8] } { %struct.tegra194_pcie_of_data { i32 3 }, [28 x i8] zeroinitializer }, align 32
@tegra194_pcie_ep_of_data = internal constant { %struct.tegra194_pcie_of_data, [28 x i8] } { %struct.tegra194_pcie_of_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@tegra194_pcie_resume_early._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.5, i32 2243, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Suspend is not supported in EP mode\00", [60 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra194_pcie_resume_early\00", [37 x i8] zeroinitializer }, align 32
@tegra194_pcie_resume_early._entry_ptr = internal global ptr @tegra194_pcie_resume_early._entry, section ".printk_index", align 4
@tegra194_pcie_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.5, i32 2216, ptr @.str.1, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init host: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra194_pcie_resume_noirq\00", [37 x i8] zeroinitializer }, align 32
@tegra194_pcie_resume_noirq._entry_ptr = internal global ptr @tegra194_pcie_resume_noirq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.218 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"tegra194_pcie_driver\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2307, i32 31 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2312, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant [23 x i8] c"tegra194_pcie_of_match\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2288, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"tegra194_pcie_pm_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2300, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"tegra_dw_pcie_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1016, i32 33 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1993, i32 23 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1996, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1998, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2011, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2020, i32 49 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2024, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2029, i32 37 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2031, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2037, i32 13 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2039, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2047, i32 51 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2049, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2059, i32 32 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2061, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2069, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2077, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2079, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2091, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2096, i32 42 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2109, i32 25 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2111, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2128, i32 7 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2130, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2141, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 970, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 971, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [14 x i8] c"pcie_gen_freq\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 241, i32 27 }
@___asan_gen_.372 = private unnamed_addr constant [14 x i8] c"tegra_pci_ops\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 572, i32 23 }
@___asan_gen_.375 = private unnamed_addr constant [23 x i8] c"event_cntr_ctrl_offset\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 579, i32 18 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1069, i32 69 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1071, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1075, i32 33 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1077, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1081, i32 33 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1084, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1087, i32 33 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1090, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1093, i32 33 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1095, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1099, i32 39 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1101, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1105, i32 38 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1107, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1113, i32 32 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1117, i32 45 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1120, i32 29 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1126, i32 50 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1134, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1141, i32 11 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1150, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1255, i32 62 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1263, i32 62 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 394, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 404, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 408, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 412, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 417, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 333, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1566, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1573, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1579, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1589, i32 41 }
@___asan_gen_.546 = private unnamed_addr constant [23 x i8] c"tegra194_pcie_host_ops\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1022, i32 38 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1459, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1328, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1339, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1345, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1351, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1367, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1281, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1290, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1423, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1429, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1435, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1441, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 693, i32 41 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 636, i32 16 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 639, i32 16 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 642, i32 16 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 645, i32 16 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 648, i32 16 }
@___asan_gen_.651 = private unnamed_addr constant [23 x i8] c"event_cntr_data_offset\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 588, i32 18 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1239, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1246, i32 5 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1492, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1507, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1534, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 513, i32 5 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 532, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 489, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant [12 x i8] c"pcie_ep_ops\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1894, i32 36 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1915, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1922, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1927, i32 41 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1930, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1944, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1952, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1871, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant [24 x i8] c"tegra_pcie_epc_features\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1878, i32 38 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1627, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1641, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1644, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1660, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1667, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1673, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1679, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1685, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1781, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 1793, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant [25 x i8] c"tegra194_pcie_rc_of_data\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2280, i32 43 }
@___asan_gen_.810 = private unnamed_addr constant [25 x i8] c"tegra194_pcie_ep_of_data\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2284, i32 43 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2243, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.828 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.829 = private constant [46 x i8] c"../drivers/pci/controller/dwc/pcie-tegra194.c\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.829, i32 2216, i32 3 }
@llvm.compiler.used = appending global [277 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_tegra194_pcie_driver_exit, ptr @__initcall__kmod_pcie_tegra194__298_2317_tegra194_pcie_driver_init6, ptr @apply_bad_link_workaround._entry, ptr @apply_bad_link_workaround._entry_ptr, ptr @pex_ep_event_pex_rst_assert._entry, ptr @pex_ep_event_pex_rst_assert._entry.195, ptr @pex_ep_event_pex_rst_assert._entry_ptr, ptr @pex_ep_event_pex_rst_assert._entry_ptr.197, ptr @pex_ep_event_pex_rst_deassert._entry, ptr @pex_ep_event_pex_rst_deassert._entry.200, ptr @pex_ep_event_pex_rst_deassert._entry.203, ptr @pex_ep_event_pex_rst_deassert._entry.205, ptr @pex_ep_event_pex_rst_deassert._entry.207, ptr @pex_ep_event_pex_rst_deassert._entry.209, ptr @pex_ep_event_pex_rst_deassert._entry_ptr, ptr @pex_ep_event_pex_rst_deassert._entry_ptr.202, ptr @pex_ep_event_pex_rst_deassert._entry_ptr.204, ptr @pex_ep_event_pex_rst_deassert._entry_ptr.206, ptr @pex_ep_event_pex_rst_deassert._entry_ptr.208, ptr @pex_ep_event_pex_rst_deassert._entry_ptr.211, ptr @tegra194_pcie_driver_exit, ptr @tegra194_pcie_parse_dt._entry, ptr @tegra194_pcie_parse_dt._entry.61, ptr @tegra194_pcie_parse_dt._entry.65, ptr @tegra194_pcie_parse_dt._entry.69, ptr @tegra194_pcie_parse_dt._entry.73, ptr @tegra194_pcie_parse_dt._entry.77, ptr @tegra194_pcie_parse_dt._entry.81, ptr @tegra194_pcie_parse_dt._entry.88, ptr @tegra194_pcie_parse_dt._entry.92, ptr @tegra194_pcie_parse_dt._entry_ptr, ptr @tegra194_pcie_parse_dt._entry_ptr.63, ptr @tegra194_pcie_parse_dt._entry_ptr.67, ptr @tegra194_pcie_parse_dt._entry_ptr.71, ptr @tegra194_pcie_parse_dt._entry_ptr.75, ptr @tegra194_pcie_parse_dt._entry_ptr.79, ptr @tegra194_pcie_parse_dt._entry_ptr.83, ptr @tegra194_pcie_parse_dt._entry_ptr.90, ptr @tegra194_pcie_parse_dt._entry_ptr.94, ptr @tegra194_pcie_pme_turnoff._entry, ptr @tegra194_pcie_pme_turnoff._entry.168, ptr @tegra194_pcie_pme_turnoff._entry_ptr, ptr @tegra194_pcie_pme_turnoff._entry_ptr.170, ptr @tegra194_pcie_probe._entry, ptr @tegra194_pcie_probe._entry.11, ptr @tegra194_pcie_probe._entry.15, ptr @tegra194_pcie_probe._entry.19, ptr @tegra194_pcie_probe._entry.23, ptr @tegra194_pcie_probe._entry.27, ptr @tegra194_pcie_probe._entry.30, ptr @tegra194_pcie_probe._entry.34, ptr @tegra194_pcie_probe._entry.37, ptr @tegra194_pcie_probe._entry.42, ptr @tegra194_pcie_probe._entry.46, ptr @tegra194_pcie_probe._entry.48, ptr @tegra194_pcie_probe._entry.7, ptr @tegra194_pcie_probe._entry_ptr, ptr @tegra194_pcie_probe._entry_ptr.13, ptr @tegra194_pcie_probe._entry_ptr.17, ptr @tegra194_pcie_probe._entry_ptr.21, ptr @tegra194_pcie_probe._entry_ptr.25, ptr @tegra194_pcie_probe._entry_ptr.29, ptr @tegra194_pcie_probe._entry_ptr.32, ptr @tegra194_pcie_probe._entry_ptr.36, ptr @tegra194_pcie_probe._entry_ptr.39, ptr @tegra194_pcie_probe._entry_ptr.44, ptr @tegra194_pcie_probe._entry_ptr.47, ptr @tegra194_pcie_probe._entry_ptr.50, ptr @tegra194_pcie_probe._entry_ptr.9, ptr @tegra194_pcie_resume_early._entry, ptr @tegra194_pcie_resume_early._entry_ptr, ptr @tegra194_pcie_resume_noirq._entry, ptr @tegra194_pcie_resume_noirq._entry_ptr, ptr @tegra194_pcie_start_link._entry, ptr @tegra194_pcie_start_link._entry.54, ptr @tegra194_pcie_start_link._entry_ptr, ptr @tegra194_pcie_start_link._entry_ptr.56, ptr @tegra_pcie_config_controller._entry, ptr @tegra_pcie_config_controller._entry.126, ptr @tegra_pcie_config_controller._entry.129, ptr @tegra_pcie_config_controller._entry.132, ptr @tegra_pcie_config_controller._entry.135, ptr @tegra_pcie_config_controller._entry_ptr, ptr @tegra_pcie_config_controller._entry_ptr.128, ptr @tegra_pcie_config_controller._entry_ptr.131, ptr @tegra_pcie_config_controller._entry_ptr.134, ptr @tegra_pcie_config_controller._entry_ptr.137, ptr @tegra_pcie_config_ep._entry, ptr @tegra_pcie_config_ep._entry.178, ptr @tegra_pcie_config_ep._entry.182, ptr @tegra_pcie_config_ep._entry.185, ptr @tegra_pcie_config_ep._entry.188, ptr @tegra_pcie_config_ep._entry_ptr, ptr @tegra_pcie_config_ep._entry_ptr.180, ptr @tegra_pcie_config_ep._entry_ptr.184, ptr @tegra_pcie_config_ep._entry_ptr.187, ptr @tegra_pcie_config_ep._entry_ptr.190, ptr @tegra_pcie_config_rp._entry, ptr @tegra_pcie_config_rp._entry.115, ptr @tegra_pcie_config_rp._entry.118, ptr @tegra_pcie_config_rp._entry_ptr, ptr @tegra_pcie_config_rp._entry_ptr.117, ptr @tegra_pcie_config_rp._entry_ptr.120, ptr @tegra_pcie_downstream_dev_to_D0._entry, ptr @tegra_pcie_downstream_dev_to_D0._entry.162, ptr @tegra_pcie_downstream_dev_to_D0._entry_ptr, ptr @tegra_pcie_downstream_dev_to_D0._entry_ptr.164, ptr @tegra_pcie_enable_slot_regulators._entry, ptr @tegra_pcie_enable_slot_regulators._entry.140, ptr @tegra_pcie_enable_slot_regulators._entry_ptr, ptr @tegra_pcie_enable_slot_regulators._entry_ptr.142, ptr @tegra_pcie_ep_hard_irq._entry, ptr @tegra_pcie_ep_hard_irq._entry_ptr, ptr @tegra_pcie_ep_irq_thread._entry, ptr @tegra_pcie_ep_irq_thread._entry_ptr, ptr @tegra_pcie_ep_raise_irq._entry, ptr @tegra_pcie_ep_raise_irq._entry_ptr, ptr @tegra_pcie_init_controller._entry, ptr @tegra_pcie_init_controller._entry_ptr, ptr @tegra_pcie_rp_irq_handler._entry, ptr @tegra_pcie_rp_irq_handler._entry.101, ptr @tegra_pcie_rp_irq_handler._entry.104, ptr @tegra_pcie_rp_irq_handler._entry.107, ptr @tegra_pcie_rp_irq_handler._entry_ptr, ptr @tegra_pcie_rp_irq_handler._entry_ptr.103, ptr @tegra_pcie_rp_irq_handler._entry_ptr.106, ptr @tegra_pcie_rp_irq_handler._entry_ptr.109, ptr @tegra_pcie_unconfig_controller._entry, ptr @tegra_pcie_unconfig_controller._entry.145, ptr @tegra_pcie_unconfig_controller._entry.148, ptr @tegra_pcie_unconfig_controller._entry.151, ptr @tegra_pcie_unconfig_controller._entry_ptr, ptr @tegra_pcie_unconfig_controller._entry_ptr.147, ptr @tegra_pcie_unconfig_controller._entry_ptr.150, ptr @tegra_pcie_unconfig_controller._entry_ptr.153, ptr @tegra194_pcie_driver, ptr @.str, ptr @tegra194_pcie_of_match, ptr @tegra194_pcie_pm_ops, ptr @tegra_dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @pcie_gen_freq, ptr @tegra_pci_ops, ptr @event_cntr_ctrl_offset, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @tegra194_pcie_host_ops, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @event_cntr_data_offset, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @pcie_ep_ops, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @tegra_pcie_epc_features, ptr @.str.193, ptr @.str.194, ptr @.str.196, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.210, ptr @.str.212, ptr @tegra194_pcie_rc_of_data, ptr @tegra194_pcie_ep_of_data, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216], section "llvm.metadata"
@0 = internal global [204 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_start_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_start_link._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_gen_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cntr_ctrl_offset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_parse_dt._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_rp_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_rp_irq_handler._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_rp_irq_handler._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_rp_irq_handler._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apply_bad_link_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_rp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_rp._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_rp._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_init_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_controller._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_controller._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_controller._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_controller._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_enable_slot_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_enable_slot_regulators._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_unconfig_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_unconfig_controller._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_unconfig_controller._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_unconfig_controller._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cntr_data_offset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_downstream_dev_to_D0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_downstream_dev_to_D0._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_pme_turnoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_pme_turnoff._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_ep_hard_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_ep_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_ep._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_ep._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_ep._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_config_ep._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_ep_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_assert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_assert._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_deassert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_deassert._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_deassert._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_deassert._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_deassert._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pex_ep_event_pex_rst_deassert._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_rc_of_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_ep_of_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_resume_early._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_pcie_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra194_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra194_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra194_pcie_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci3 = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %pci3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %pci3, align 8
  %ops = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra_dw_pcie_ops, ptr %ops, align 8
  %n_fts = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %n_fts to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 52, ptr %n_fts, align 8
  %arrayidx7 = getelementptr %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 13, i32 1
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 52, ptr %arrayidx7, align 1
  %version = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 10
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 18698, ptr %version, align 4
  %num_vectors = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 7, i32 15
  %5 = ptrtoint ptr %num_vectors to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %num_vectors, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %mode11 = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mode11, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call.i329 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.57) #8
  %dbi_res.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %dbi_res.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i329, ptr %dbi_res.i, align 8
  %tobool.not.i = icmp eq ptr %call.i329, null
  br i1 %tobool.not.i, label %if.then13.thread, label %if.end.i

if.then13.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.58) #11
  br label %50

if.end.i:                                         ; preds = %if.end
  %aspm_cmrt.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 21
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.60, ptr noundef %aspm_cmrt.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.62, i32 noundef %call.i.i.i) #11
  br label %if.then13

if.end10.i:                                       ; preds = %if.end.i
  %aspm_pwr_on_t.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 22
  %call.i.i160.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef %aspm_pwr_on_t.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160.i)
  %cmp12.i = icmp slt i32 %call.i.i160.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %if.end10.i.if.end18.i_crit_edge

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.66, i32 noundef %call.i.i160.i) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end16.i, %if.end10.i.if.end18.i_crit_edge
  %aspm_l0s_enter_lat.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 23
  %call.i.i161.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.68, ptr noundef %aspm_l0s_enter_lat.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i161.i)
  %cmp20.i = icmp slt i32 %call.i.i161.i, 0
  br i1 %cmp20.i, label %do.end24.i, label %if.end18.i.if.end26.i_crit_edge

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.70, i32 noundef %call.i.i161.i) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end24.i, %if.end18.i.if.end26.i_crit_edge
  %num_lanes.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 17
  %call.i.i162.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.72, ptr noundef %num_lanes.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162.i)
  %cmp28.i = icmp slt i32 %call.i.i162.i, 0
  br i1 %cmp28.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.74, i32 noundef %call.i.i162.i) #11
  br label %if.then13

if.end34.i:                                       ; preds = %if.end26.i
  %cid.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 18
  %call35.i = tail call i32 @of_property_read_u32_index(ptr noundef %11, ptr noundef nonnull @.str.76, i32 noundef 1, ptr noundef %cid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end42.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.78, i32 noundef %call35.i) #11
  br label %tegra194_pcie_parse_dt.exit

if.end42.i:                                       ; preds = %if.end34.i
  %call.i.i = tail call i32 @of_property_read_string_helper(ptr noundef %11, ptr noundef nonnull @.str.80, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp44.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp44.i, label %do.end48.i, label %if.end50.i

do.end48.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.82, i32 noundef %call.i.i) #11
  br label %if.then13

if.end50.i:                                       ; preds = %if.end42.i
  %phy_count.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 27
  %27 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i.i, ptr %phy_count.i, align 4
  %call.i163.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.84, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i163.i, null
  br i1 %tobool.i.not.i, label %if.end50.i.if.end53.i_crit_edge, label %if.then52.i

if.end50.i.if.end53.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  %update_fc_fixup.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %update_fc_fixup.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %update_fc_fixup.i, align 1
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.end50.i.if.end53.i_crit_edge
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  %of_node55.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node55.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node55.i, align 8
  %call.i164.i = tail call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.85, ptr noundef null) #8
  %tobool.i165.i = icmp ne ptr %call.i164.i, null
  %supports_clkreq.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 11
  %frombool.i = zext i1 %tobool.i165.i to i8
  %33 = ptrtoint ptr %supports_clkreq.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool.i, ptr %supports_clkreq.i, align 8
  %call.i166.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.86, ptr noundef null) #8
  %tobool.i167.i = icmp ne ptr %call.i166.i, null
  %enable_cdm_check.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 12
  %frombool58.i = zext i1 %tobool.i167.i to i8
  %34 = ptrtoint ptr %enable_cdm_check.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool58.i, ptr %enable_cdm_check.i, align 1
  %35 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp59.i = icmp eq i32 %36, 3
  br i1 %cmp59.i, label %if.end53.i.if.end19_crit_edge, label %if.end61.i

if.end53.i.if.end19_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end61.i:                                       ; preds = %if.end53.i
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  %call63.i = tail call ptr @devm_gpiod_get(ptr noundef %38, ptr noundef nonnull @.str.87, i32 noundef 1) #8
  %pex_rst_gpiod.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 30
  %39 = ptrtoint ptr %pex_rst_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call63.i, ptr %pex_rst_gpiod.i, align 8
  %cmp.i.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then66.i, label %if.end78.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call63.i to i32
  %cmp69.i = icmp eq ptr %call63.i, inttoptr (i32 -517 to ptr)
  %spec.store.select.i = select i1 %cmp69.i, ptr @.str.2, ptr @.str.1
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %spec.store.select.i, ptr noundef %42, ptr noundef nonnull @.str.89, i32 noundef %40) #11
  br label %tegra194_pcie_parse_dt.exit

if.end78.i:                                       ; preds = %if.end61.i
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 8
  %call80.i = tail call ptr @devm_gpiod_get(ptr noundef %44, ptr noundef nonnull @.str.91, i32 noundef 7) #8
  %pex_refclk_sel_gpiod.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 31
  %45 = ptrtoint ptr %pex_refclk_sel_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call80.i, ptr %pex_refclk_sel_gpiod.i, align 4
  %cmp.i168.i = icmp ugt ptr %call80.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168.i, label %if.then83.i, label %if.end78.i.if.end19_crit_edge

if.end78.i.if.end19_crit_edge:                    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then83.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %call80.i to i32
  %cmp88.i = icmp eq ptr %call80.i, inttoptr (i32 -517 to ptr)
  %spec.store.select101.i = select i1 %cmp88.i, ptr @.str.2, ptr @.str.1
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %spec.store.select101.i, ptr noundef %48, ptr noundef nonnull @.str.93, i32 noundef %46) #11
  %49 = ptrtoint ptr %pex_refclk_sel_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %pex_refclk_sel_gpiod.i, align 4
  br label %if.end19

tegra194_pcie_parse_dt.exit:                      ; preds = %if.then66.i, %do.end40.i
  %retval.0.i = phi i32 [ %call35.i, %do.end40.i ], [ %40, %if.then66.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %tegra194_pcie_parse_dt.exit.if.then13_crit_edge, label %tegra194_pcie_parse_dt.exit.if.end19_crit_edge

tegra194_pcie_parse_dt.exit.if.end19_crit_edge:   ; preds = %tegra194_pcie_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

tegra194_pcie_parse_dt.exit.if.then13_crit_edge:  ; preds = %tegra194_pcie_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %tegra194_pcie_parse_dt.exit.if.then13_crit_edge, %do.end48.i, %do.end32.i, %do.end8.i
  %retval.0.i347 = phi i32 [ %retval.0.i, %tegra194_pcie_parse_dt.exit.if.then13_crit_edge ], [ %call.i.i, %do.end48.i ], [ %call.i.i162.i, %do.end32.i ], [ %call.i.i.i, %do.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %retval.0.i347)
  %cmp14 = icmp eq i32 %retval.0.i347, -517
  %spec.select360 = select i1 %cmp14, ptr @.str.2, ptr @.str.1
  br label %50

50:                                               ; preds = %if.then13, %if.then13.thread
  %retval.0.i347359 = phi i32 [ -19, %if.then13.thread ], [ %retval.0.i347, %if.then13 ]
  %51 = phi ptr [ @.str.1, %if.then13.thread ], [ %spec.select360, %if.then13 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %51, ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i347359) #11
  br label %cleanup

if.end19:                                         ; preds = %tegra194_pcie_parse_dt.exit.if.end19_crit_edge, %if.then83.i, %if.end78.i.if.end19_crit_edge, %if.end53.i.if.end19_crit_edge
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 8
  %call.i330 = tail call ptr @devm_regulator_get_optional(ptr noundef %53, ptr noundef nonnull @.str.95) #8
  %slot_ctl_3v3.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 25
  %54 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i330, ptr %slot_ctl_3v3.i, align 4
  %cmp.i.i331 = icmp ugt ptr %call.i330, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i331, label %if.then.i, label %if.end19.if.end9.i_crit_edge

if.end19.if.end9.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end19
  %cmp.not.i = icmp eq ptr %call.i330, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i, label %if.end.i332, label %if.then.i.tegra_pcie_get_slot_regulators.exit_crit_edge

if.then.i.tegra_pcie_get_slot_regulators.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_get_slot_regulators.exit

if.end.i332:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %slot_ctl_3v3.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i332, %if.end19.if.end9.i_crit_edge
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 8
  %call11.i = tail call ptr @devm_regulator_get_optional(ptr noundef %57, ptr noundef nonnull @.str.96) #8
  %slot_ctl_12v.i = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 26
  %58 = ptrtoint ptr %slot_ctl_12v.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call11.i, ptr %slot_ctl_12v.i, align 8
  %cmp.i35.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.then14.i, label %if.end9.i.if.end32_crit_edge

if.end9.i.if.end32_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then14.i:                                      ; preds = %if.end9.i
  %cmp17.not.i = icmp eq ptr %call11.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp17.not.i, label %if.end21.i, label %if.then14.i.tegra_pcie_get_slot_regulators.exit_crit_edge

if.then14.i.tegra_pcie_get_slot_regulators.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_get_slot_regulators.exit

if.end21.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %slot_ctl_12v.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %slot_ctl_12v.i, align 8
  br label %if.end32

tegra_pcie_get_slot_regulators.exit:              ; preds = %if.then14.i.tegra_pcie_get_slot_regulators.exit_crit_edge, %if.then.i.tegra_pcie_get_slot_regulators.exit_crit_edge
  %retval.0.i333.in = phi ptr [ %call.i330, %if.then.i.tegra_pcie_get_slot_regulators.exit_crit_edge ], [ %call11.i, %if.then14.i.tegra_pcie_get_slot_regulators.exit_crit_edge ]
  %retval.0.i333 = ptrtoint ptr %retval.0.i333.in to i32
  %cmp21 = icmp slt ptr %retval.0.i333.in, null
  br i1 %cmp21, label %if.then22, label %tegra_pcie_get_slot_regulators.exit.if.end32_crit_edge

tegra_pcie_get_slot_regulators.exit.if.end32_crit_edge: ; preds = %tegra_pcie_get_slot_regulators.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then22:                                        ; preds = %tegra_pcie_get_slot_regulators.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cmp24 = icmp eq ptr %retval.0.i333.in, inttoptr (i32 -517 to ptr)
  %spec.store.select203 = select i1 %cmp24, ptr @.str.2, ptr @.str.1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %spec.store.select203, ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i333) #11
  br label %cleanup

if.end32:                                         ; preds = %tegra_pcie_get_slot_regulators.exit.if.end32_crit_edge, %if.end21.i, %if.end9.i.if.end32_crit_edge
  %retval.0.i333354 = phi i32 [ %retval.0.i333, %tegra_pcie_get_slot_regulators.exit.if.end32_crit_edge ], [ 0, %if.end21.i ], [ 0, %if.end9.i.if.end32_crit_edge ]
  %pex_refclk_sel_gpiod = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 31
  %60 = ptrtoint ptr %pex_refclk_sel_gpiod to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pex_refclk_sel_gpiod, align 4
  %tobool33.not = icmp eq ptr %61, null
  br i1 %tobool33.not, label %if.end32.if.end36_crit_edge, label %if.then34

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %61, i32 noundef 1) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %call37 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %pex_ctl_supply = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 24
  %62 = ptrtoint ptr %pex_ctl_supply to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call37, ptr %pex_ctl_supply, align 8
  %cmp.i334 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then40, label %if.end51

if.then40:                                        ; preds = %if.end36
  %cmp43.not = icmp eq ptr %call37, inttoptr (i32 -517 to ptr)
  br i1 %cmp43.not, label %if.then40.cleanup_crit_edge, label %do.end47

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %63) #11
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %call52 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %core_clk = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call52, ptr %core_clk, align 4
  %cmp.i335 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335, label %do.end58, label %if.end63

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %call52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %65) #11
  %66 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %core_clk, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %call64 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.18) #8
  %appl_res = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 1
  %69 = ptrtoint ptr %appl_res to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call64, ptr %appl_res, align 4
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end71:                                         ; preds = %if.end63
  %call73 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call64) #8
  %appl_base = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %appl_base to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call73, ptr %appl_base, align 8
  %cmp.i336 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i336, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  %call.i.i337 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %core_apb_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 6
  %72 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i337, ptr %core_apb_rst, align 8
  %cmp.i338 = icmp ugt ptr %call.i.i337, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i338, label %do.end86, label %if.end91

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %call.i.i337 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %73) #11
  %74 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %core_apb_rst, align 8
  %76 = ptrtoint ptr %75 to i32
  br label %cleanup

if.end91:                                         ; preds = %if.end79
  %phy_count = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 27
  %77 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %phy_count, align 4
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #8
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %if.end91.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !412

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end91
  %81 = extractvalue { i32, i1 } %79, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %81, i32 noundef 3520) #8
  %tobool93.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool93.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %82 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %phy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp97361.not = icmp eq i32 %83, 0
  br i1 %cmp97361.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %if.end104
  %inc = add nuw i32 %i.0362, 1
  %84 = ptrtoint ptr %phy_count to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %phy_count, align 4
  %cmp97 = icmp ult i32 %inc, %85
  br i1 %cmp97, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0362 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call98 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.26, i32 noundef %i.0362) #8
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %do.end103, label %if.end104

do.end103:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end104:                                        ; preds = %for.body
  %call105 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull %call98) #8
  %arrayidx106 = getelementptr ptr, ptr %call5.i.i, i32 %i.0362
  %86 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call105, ptr %arrayidx106, align 4
  tail call void @kfree(ptr noundef nonnull %call98) #8
  %cmp.i339 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i339, label %if.then109, label %for.cond

if.then109:                                       ; preds = %if.end104
  %cmp112.not = icmp eq ptr %call105, inttoptr (i32 -517 to ptr)
  br i1 %cmp112.not, label %if.then109.cleanup_crit_edge, label %do.end116

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end116:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %call105 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %87) #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %phys119 = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 28
  %88 = ptrtoint ptr %phys119 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call5.i.i, ptr %phys119, align 8
  %call120 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.33) #8
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %do.end125, label %if.end126

do.end125:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end126:                                        ; preds = %for.end
  %atu_dma_res127 = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 3
  %89 = ptrtoint ptr %atu_dma_res127 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call120, ptr %atu_dma_res127, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call120, i32 0, i32 1
  %90 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %end.i, align 4
  %92 = ptrtoint ptr %call120 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call120, align 4
  %sub.i = add i32 %91, 1
  %add.i = sub i32 %sub.i, %93
  %atu_size = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 4
  %94 = ptrtoint ptr %atu_size to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i, ptr %atu_size, align 8
  %call129 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call120) #8
  %atu_base = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 3
  %95 = ptrtoint ptr %atu_base to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call129, ptr %atu_base, align 4
  %cmp.i340 = icmp ugt ptr %call129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %call129 to i32
  br label %cleanup

if.end135:                                        ; preds = %if.end126
  %call.i.i341 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %core_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 7
  %97 = ptrtoint ptr %core_rst to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i.i341, ptr %core_rst, align 4
  %cmp.i342 = icmp ugt ptr %call.i.i341, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i342, label %do.end142, label %if.end147

do.end142:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %call.i.i341 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %98) #11
  %99 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %core_rst, align 4
  %101 = ptrtoint ptr %100 to i32
  br label %cleanup

if.end147:                                        ; preds = %if.end135
  %call148 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.40) #8
  %irq = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 8, i32 7, i32 7
  %102 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call148, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp150 = icmp slt i32 %call148, 0
  br i1 %cmp150, label %if.end147.cleanup_crit_edge, label %if.end153

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end153:                                        ; preds = %if.end147
  %call154 = tail call ptr @tegra_bpmp_get(ptr noundef %dev1) #8
  %bpmp = getelementptr inbounds %struct.tegra194_pcie, ptr %call.i, i32 0, i32 9
  %103 = ptrtoint ptr %bpmp to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call154, ptr %bpmp, align 8
  %cmp.i343 = icmp ugt ptr %call154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i343, label %if.then157, label %if.end160

if.then157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %call154 to i32
  br label %cleanup

if.end160:                                        ; preds = %if.end153
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %105 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %106 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mode11, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i32 %107, label %do.end191 [
    i32 3, label %sw.bb
    i32 1, label %sw.bb175
  ]

sw.bb:                                            ; preds = %if.end160
  %109 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq, align 4
  %call.i344 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %110, ptr noundef nonnull @tegra_pcie_rp_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.41, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool164.not = icmp eq i32 %call.i344, 0
  br i1 %tobool164.not, label %if.end170, label %do.end168

do.end168:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %112, i32 noundef %call.i344) #11
  br label %fail

if.end170:                                        ; preds = %sw.bb
  %call171 = tail call fastcc i32 @tegra_pcie_config_rp(ptr noundef nonnull %call.i)
  %113 = zext i32 %call171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %call171, label %if.end170.fail_crit_edge [
    i32 0, label %if.end170.cleanup_crit_edge
    i32 -123, label %if.end170.cleanup_crit_edge368
  ]

if.end170.cleanup_crit_edge368:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end170.fail_crit_edge:                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

sw.bb175:                                         ; preds = %if.end160
  %114 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq, align 4
  %call177 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %115, ptr noundef nonnull @tegra_pcie_ep_hard_irq, ptr noundef nonnull @tegra_pcie_ep_irq_thread, i32 noundef 8320, ptr noundef nonnull @.str.45, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end184, label %do.end182

do.end182:                                        ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %117, i32 noundef %call177) #11
  br label %fail

if.end184:                                        ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #10
  %call185 = tail call fastcc i32 @tegra_pcie_config_ep(ptr noundef nonnull %call.i)
  br label %fail

do.end191:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %107) #11
  br label %fail

fail:                                             ; preds = %do.end191, %if.end184, %do.end182, %if.end170.fail_crit_edge, %do.end168
  %ret.0 = phi i32 [ %retval.0.i333354, %do.end191 ], [ %call177, %do.end182 ], [ %call185, %if.end184 ], [ %call.i344, %do.end168 ], [ %call171, %if.end170.fail_crit_edge ]
  %118 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bpmp, align 8
  tail call void @tegra_bpmp_put(ptr noundef %119) #8
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end170.cleanup_crit_edge, %if.end170.cleanup_crit_edge368, %if.then157, %if.end147.cleanup_crit_edge, %do.end142, %if.then132, %do.end125, %do.end116, %if.then109.cleanup_crit_edge, %do.end103, %devm_kcalloc.exit.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %do.end86, %if.then76, %do.end70, %do.end58, %do.end47, %if.then40.cleanup_crit_edge, %if.then22, %50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i347359, %50 ], [ %retval.0.i333, %if.then22 ], [ %68, %do.end58 ], [ %71, %if.then76 ], [ %76, %do.end86 ], [ -12, %do.end103 ], [ %96, %if.then132 ], [ %101, %do.end142 ], [ %104, %if.then157 ], [ %ret.0, %fail ], [ -19, %do.end125 ], [ -19, %do.end70 ], [ -12, %entry.cleanup_crit_edge ], [ %63, %do.end47 ], [ -517, %if.then40.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %87, %do.end116 ], [ -517, %if.then109.cleanup_crit_edge ], [ %call148, %if.end147.cleanup_crit_edge ], [ 0, %if.end170.cleanup_crit_edge ], [ 0, %if.end170.cleanup_crit_edge368 ], [ -12, %if.end91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 2, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %debugfs = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  tail call fastcc void @tegra_pcie_downstream_dev_to_D0(ptr noundef %1) #8
  %pp.i = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 8, i32 7
  tail call void @dw_pcie_host_deinit(ptr noundef %pp.i) #8
  tail call fastcc void @tegra194_pcie_pme_turnoff(ptr noundef %1) #8
  tail call fastcc void @tegra_pcie_unconfig_controller(ptr noundef %1) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %9, i1 noundef zeroext true) #8
  %bpmp = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bpmp, align 8
  tail call void @tegra_bpmp_put(ptr noundef %11) #8
  %pex_refclk_sel_gpiod = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 31
  %12 = ptrtoint ptr %pex_refclk_sel_gpiod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pex_refclk_sel_gpiod, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_set_value(ptr noundef nonnull %13, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra194_pcie_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 2, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %debugfs = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  tail call fastcc void @tegra_pcie_downstream_dev_to_D0(ptr noundef %1)
  %irq = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 8, i32 7, i32 7
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #8
  %msi_irq = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 8, i32 7, i32 9
  %8 = ptrtoint ptr %msi_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msi_irq, align 4
  tail call void @disable_irq(i32 noundef %9) #8
  tail call fastcc void @tegra194_pcie_pme_turnoff(ptr noundef %1)
  tail call fastcc void @tegra_pcie_unconfig_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_bpmp_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_rp_irq_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr %struct.tegra194_pcie, ptr %arg, i32 0, i32 8
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !414
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i119 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #8, !srcloc !414
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and4 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end12_crit_edge, label %if.then6

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i121 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %6) #8, !srcloc !415
  %10 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i123 = getelementptr i8, ptr %11, i32 300
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #8, !srcloc !414
  %13 = and i32 %12, -16777217
  %14 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i125 = getelementptr i8, ptr %15, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %13) #8, !srcloc !415
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #8
  %17 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i127 = getelementptr i8, ptr %18, i32 300
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #8, !srcloc !414
  %20 = or i32 %19, 16777216
  %21 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i129 = getelementptr i8, ptr %22, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %20) #8, !srcloc !415
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2060, i32 noundef 4) #8
  %or11 = or i32 %call.i, 131072
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2060, i32 noundef 4, i32 noundef %or11) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %val.0 = phi i32 [ %or11, %if.then6 ], [ %7, %if.then.if.end12_crit_edge ], [ %3, %entry.if.end12_crit_edge ]
  %and13 = and i32 %val.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end35_crit_edge, label %if.then15

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then15:                                        ; preds = %if.end12
  %23 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i131 = getelementptr i8, ptr %24, i32 76
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #8, !srcloc !414
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %and17 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then15.if.end20_crit_edge, label %if.then19

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.then15
  %27 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i133 = getelementptr i8, ptr %28, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 134217728) #8, !srcloc !415
  %pcie_cap_base.i = getelementptr %struct.tegra194_pcie, ptr %arg, i32 0, i32 20
  %29 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcie_cap_base.i, align 8
  %add.i = add i32 %30, 18
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add.i, i32 noundef 2) #8
  %and.i = and i32 %call.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then19.if.end20_crit_edge, label %if.then.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then.i:                                        ; preds = %if.then19
  %conv.i = lshr i32 %call.i.i, 4
  %31 = and i32 %conv.i, 63
  %init_link_width.i = getelementptr %struct.tegra194_pcie, ptr %arg, i32 0, i32 15
  %32 = ptrtoint ptr %init_link_width.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %init_link_width.i, align 4
  %conv4.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv4.i)
  %cmp.i = icmp ult i32 %31, %conv4.i
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end20_crit_edge

if.then.i.if.end20_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.110) #11
  %36 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcie_cap_base.i, align 8
  %add8.i = add i32 %37, 48
  %call.i43.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add8.i, i32 noundef 2) #8
  %38 = and i32 %call.i43.i, 65520
  %39 = or i32 %38, 1
  %40 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pcie_cap_base.i, align 8
  %add16.i = add i32 %41, 48
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %add16.i, i32 noundef 2, i32 noundef %39) #8
  %42 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pcie_cap_base.i, align 8
  %add18.i = add i32 %43, 16
  %call.i46.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add18.i, i32 noundef 2) #8
  %44 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcie_cap_base.i, align 8
  %add24.i = add i32 %45, 16
  %46 = and i32 %call.i46.i, 65503
  %conv.i48.i = or i32 %46, 32
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %add24.i, i32 noundef 2, i32 noundef %conv.i48.i) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end.i, %if.then.i.if.end20_crit_edge, %if.then19.if.end20_crit_edge, %if.then15.if.end20_crit_edge
  %and21 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end35_crit_edge, label %if.then23

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i136 = getelementptr i8, ptr %48, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 67108864) #8, !srcloc !415
  %pcie_cap_base = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 20
  %49 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pcie_cap_base, align 8
  %add = add i32 %50, 18
  %call.i137 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_pcie_rp_irq_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_pcie_rp_irq_handler, %if.end35)) #8
          to label %if.then31 [label %if.end35], !srcloc !416

if.then31:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci1, align 8
  %53 = and i32 %call.i137, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_pcie_rp_irq_handler.__UNIQUE_ID_ddebug293, ptr noundef %52, ptr noundef nonnull @.str.99, i32 noundef %53) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then23, %if.end20.if.end35_crit_edge, %if.end12.if.end35_crit_edge
  %54 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i140 = getelementptr i8, ptr %55, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #8, !srcloc !414
  %57 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool38.not = icmp eq i32 %57, 0
  br i1 %tobool38.not, label %if.end35.if.end74_crit_edge, label %if.then39

if.end35.if.end74_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then39:                                        ; preds = %if.end35
  %58 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %59, i32 148
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #8, !srcloc !414
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  %call.i143 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2848, i32 noundef 4) #8
  %and42 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then39.if.end50_crit_edge, label %do.end47

if.then39.if.end50_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end47:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.100) #11
  %or49 = or i32 %call.i143, 262144
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %if.then39.if.end50_crit_edge
  %tmp.0 = phi i32 [ %or49, %do.end47 ], [ %call.i143, %if.then39.if.end50_crit_edge ]
  %and51 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end59_crit_edge, label %do.end56

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pci1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.102) #11
  %or58 = or i32 %tmp.0, 65536
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.end50.if.end59_crit_edge
  %tmp.1 = phi i32 [ %or58, %do.end56 ], [ %tmp.0, %if.end50.if.end59_crit_edge ]
  %and60 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end59.if.end68_crit_edge, label %do.end65

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.105) #11
  %or67 = or i32 %tmp.1, 131072
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %if.end59.if.end68_crit_edge
  %tmp.2 = phi i32 [ %or67, %do.end65 ], [ %tmp.1, %if.end59.if.end68_crit_edge ]
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2848, i32 noundef 4, i32 noundef %tmp.2) #8
  %call.i144 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2856, i32 noundef 4) #8
  %68 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.108, i32 noundef %call.i144) #11
  br label %if.end74

if.end74:                                         ; preds = %if.end68, %if.end35.if.end74_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pcie_config_rp(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 8
  tail call void @pm_runtime_enable(ptr noundef %1) #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %call.i) #11
  br label %fail_pm_get_sync

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.116, i32 noundef %call2) #11
  br label %fail_pm_get_sync

if.end8:                                          ; preds = %if.end
  %call.i53 = tail call fastcc i32 @tegra_pcie_config_controller(ptr noundef %pcie, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.i = icmp slt i32 %call.i53, 0
  br i1 %cmp.i, label %if.end8.do.end14_crit_edge, label %if.end.i

if.end8.do.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.end.i:                                         ; preds = %if.end8
  %pp2.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 7
  %ops.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 7, i32 8
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra194_pcie_host_ops, ptr %ops.i, align 8
  %call3.i = tail call i32 @dw_pcie_host_init(ptr noundef %pp2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end15

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.122, i32 noundef %call3.i) #11
  tail call fastcc void @tegra_pcie_unconfig_controller(ptr noundef %pcie) #8
  br label %do.end14

do.end14:                                         ; preds = %do.end.i, %if.end8.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i53, %if.end8.do.end14_crit_edge ], [ %call3.i, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef %retval.0.i.ph) #11
  br label %fail_pm_get_sync

if.end15:                                         ; preds = %if.end.i
  %pci = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8
  %pcie_cap_base.i = getelementptr %struct.tegra194_pcie, ptr %pcie, i32 0, i32 20
  %5 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcie_cap_base.i, align 8
  %add.i = add i32 %6, 18
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add.i, i32 noundef 2) #8
  %7 = and i32 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 13
  %.lobit = lshr exact i32 %7, 13
  %8 = trunc i32 %.lobit to i8
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %link_state, align 2
  br i1 %tobool.not, label %if.end15.fail_host_init_crit_edge, label %if.end20

if.end15.fail_host_init_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_host_init

if.end20:                                         ; preds = %if.end15
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call21 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.121, ptr noundef %11) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.fail_host_init_crit_edge, label %if.end24

if.end20.fail_host_init_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_host_init

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call21, ptr noundef null) #8
  %debugfs = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 29
  %12 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %debugfs, align 4
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %14, ptr noundef nonnull @.str.154, ptr noundef %call25, ptr noundef nonnull @aspm_state_cnt) #8
  br label %cleanup

fail_host_init:                                   ; preds = %if.end20.fail_host_init_crit_edge, %if.end15.fail_host_init_crit_edge
  %ret.0 = phi i32 [ -123, %if.end15.fail_host_init_crit_edge ], [ -12, %if.end20.fail_host_init_crit_edge ]
  tail call fastcc void @tegra_pcie_downstream_dev_to_D0(ptr noundef %pcie) #8
  tail call void @dw_pcie_host_deinit(ptr noundef %pp2.i) #8
  tail call fastcc void @tegra194_pcie_pme_turnoff(ptr noundef %pcie) #8
  tail call fastcc void @tegra_pcie_unconfig_controller(ptr noundef %pcie) #8
  br label %fail_pm_get_sync

fail_pm_get_sync:                                 ; preds = %fail_host_init, %do.end14, %do.end7, %do.end
  %ret.1 = phi i32 [ %call.i, %do.end ], [ %call2, %do.end7 ], [ %retval.0.i.ph, %do.end14 ], [ %ret.0, %fail_host_init ]
  %call.i54 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_pm_get_sync, %if.end24
  %retval.0 = phi i32 [ %ret.1, %fail_pm_get_sync ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ep_hard_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ep1 = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 8, i32 8
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !414
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end22.thread, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #8, !srcloc !414
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %6) #8, !srcloc !415
  %and3 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #8, !srcloc !415
  %12 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 -1) #8, !srcloc !415
  %14 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 -1) #8, !srcloc !415
  %16 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 -1) #8, !srcloc !415
  %18 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 -1) #8, !srcloc !415
  %20 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %21, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 -1) #8, !srcloc !415
  %22 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 -1) #8, !srcloc !415
  %24 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 -1) #8, !srcloc !415
  %26 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %27, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 -1) #8, !srcloc !415
  %28 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %29, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 -1) #8, !srcloc !415
  %30 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 -1) #8, !srcloc !415
  %32 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %33, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 -1) #8, !srcloc !415
  %34 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %35, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 -1) #8, !srcloc !415
  %36 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %37, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 -1) #8, !srcloc !415
  %38 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %39, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 -1) #8, !srcloc !415
  %40 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %41, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 -1) #8, !srcloc !415
  %42 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #8, !srcloc !414
  %45 = or i32 %44, -2147483648
  %46 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %45) #8, !srcloc !415
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %and6 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end22_crit_edge, label %if.then8

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then8:                                         ; preds = %if.end
  %48 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %49, i32 204
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #8, !srcloc !414
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool11.not = icmp eq i32 %51, 0
  br i1 %tobool11.not, label %if.then8.if.end22_crit_edge, label %do.body

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.body:                                          ; preds = %if.then8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_pcie_ep_hard_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_pcie_ep_hard_irq, %do.end)) #8
          to label %if.then18 [label %do.end], !srcloc !416

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_pcie_ep_hard_irq.__UNIQUE_ID_ddebug294, ptr noundef %53, ptr noundef nonnull @.str.172) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  tail call void @dw_pcie_ep_linkup(ptr noundef %ep1) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then8.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %and23 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end31, label %if.end22.if.then25_crit_edge

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.end22.thread:                                  ; preds = %entry
  %and2376 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2376)
  %tobool24.not77 = icmp eq i32 %and2376, 0
  br i1 %tobool24.not77, label %if.end22.thread.do.end36_crit_edge, label %if.end22.thread.if.then25_crit_edge

if.end22.thread.if.then25_crit_edge:              ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

if.end22.thread.do.end36_crit_edge:               ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

if.then25:                                        ; preds = %if.end22.thread.if.then25_crit_edge, %if.end22.if.then25_crit_edge
  %54 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %55, i32 124
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #8, !srcloc !414
  %57 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i70 = getelementptr i8, ptr %58, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %56) #8, !srcloc !415
  %59 = and i32 %56, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool28.not = icmp eq i32 %59, 0
  %spec.select = select i1 %tobool28.not, i32 1, i32 2
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  br i1 %tobool.not, label %if.end31.do.end36_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31.do.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %if.end31.do.end36_crit_edge, %if.end22.thread.do.end36_crit_edge
  %60 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arg, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.173, i32 noundef %3) #11
  %62 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %63, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %2) #8, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end31.cleanup_crit_edge, %if.then25
  %retval.0 = phi i32 [ 1, %do.end36 ], [ 1, %if.end31.cleanup_crit_edge ], [ %spec.select, %if.then25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ep_irq_thread(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 8
  %pcie_cap_base = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 20
  %0 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_cap_base, align 8
  %add = add i32 %1, 18
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add, i32 noundef 2) #8
  %2 = and i32 %call.i, 15
  %core_clk = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 5
  %3 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core_clk, align 4
  %sub = add nsw i32 %2, -1
  %arrayidx = getelementptr [4 x i32], ptr @pcie_gen_freq, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %4, i32 noundef %6) #8
  %cfg_link_cap_l1sub = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 19
  %7 = ptrtoint ptr %cfg_link_cap_l1sub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg_link_cap_l1sub, align 4
  %call.i48 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %8, i32 noundef 4) #8
  %and4 = and i32 %call.i48, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i49 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 4, i32 noundef 4) #8
  %and6 = and i32 %call.i49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1854434952) #8, !srcloc !415
  %11 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %12, i32 200
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #8, !srcloc !414
  %14 = or i32 %13, 134217728
  %15 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %16, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %14) #8, !srcloc !415
  %call11 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call11, 100000000
  %17 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i5556 = getelementptr i8, ptr %18, i32 200
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5556) #8, !srcloc !414
  %20 = and i32 %19, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not57 = icmp eq i32 %20, 0
  br i1 %tobool15.not57, label %if.then8.cleanup_crit_edge, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  br label %if.end17

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end21.if.end17_crit_edge, %if.then8.if.end17_crit_edge
  %call18 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i.i, label %do.end.critedge, label %if.end21

if.end21:                                         ; preds = %if.end17
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %21 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %22, i32 200
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #8, !srcloc !414
  %24 = and i32 %23, 134217728
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %if.end21.cleanup_crit_edge, label %if.end21.if.end17_crit_edge

if.end21.if.end17_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.critedge:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.174) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge, %if.end21.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pcie_config_ep(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 8
  %ep3 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 8
  %ops = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 8, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pcie_ep_ops, ptr %ops, align 4
  %page_size = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 8, i32 5
  %3 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %page_size, align 4
  %pex_rst_gpiod = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 30
  %4 = ptrtoint ptr %pex_rst_gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pex_rst_gpiod, align 8
  %call = tail call i32 @gpiod_set_debounce(ptr noundef %5, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.176, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %pex_rst_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pex_rst_gpiod, align 8
  %call5 = tail call i32 @gpiod_to_irq(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end11

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.179, i32 noundef %call5) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %pex_rst_irq = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 32
  %8 = ptrtoint ptr %pex_rst_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %pex_rst_irq, align 8
  %cid = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 18
  %9 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cid, align 8
  %call12 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.181, i32 noundef %10) #8
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.183) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %pex_rst_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pex_rst_irq, align 8
  tail call void @irq_modify_status(i32 noundef %12, i32 noundef 0, i32 noundef 4096) #8
  %ep_state = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 33
  %13 = ptrtoint ptr %ep_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ep_state, align 4
  %14 = ptrtoint ptr %pex_rst_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pex_rst_irq, align 8
  %call20 = tail call i32 @devm_request_threaded_irq(ptr noundef %1, i32 noundef %15, ptr noundef null, ptr noundef nonnull @tegra_pcie_ep_pex_rst_irq, i32 noundef 8195, ptr noundef nonnull %call12, ptr noundef %pcie) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end26

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.186, i32 noundef %call20) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  tail call void @pm_runtime_enable(ptr noundef %1) #8
  %call27 = tail call i32 @dw_pcie_ep_init(ptr noundef %ep3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %do.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.189, i32 noundef %call27) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.end26.cleanup_crit_edge, %do.end25, %do.end16, %do.end10, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call5, %do.end10 ], [ %call20, %do.end25 ], [ %call27, %do.end32 ], [ -12, %do.end16 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_bpmp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_link_up(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap_base = getelementptr i8, ptr %pci, i32 352
  %0 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_cap_base, align 8
  %add = add i32 %1, 18
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add, i32 noundef 2) #8
  %2 = lshr i32 %call.i, 13
  %.lobit = and i32 %2, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_start_link(ptr noundef %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pp1 = getelementptr inbounds %struct.dw_pcie, ptr %pci, i32 0, i32 7
  %mode = getelementptr i8, ptr %pci, i32 324
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %retry_link.preheader

retry_link.preheader:                             ; preds = %entry
  %appl_base.i = getelementptr i8, ptr %pci, i32 -16
  %core_rst = getelementptr i8, ptr %pci, i32 -4
  br label %retry_link

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pex_rst_irq = getelementptr i8, ptr %pci, i32 400
  %2 = ptrtoint ptr %pex_rst_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pex_rst_irq, align 8
  tail call void @enable_irq(i32 noundef %3) #8
  br label %cleanup

retry_link:                                       ; preds = %do.end, %retry_link.preheader
  %retry.0.off0 = phi i1 [ false, %do.end ], [ true, %retry_link.preheader ]
  %4 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %appl_base.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !414
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %appl_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !415
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %10 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i85 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #8, !srcloc !414
  %13 = or i32 %12, -2147483648
  %14 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i87 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %13) #8, !srcloc !415
  %16 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %appl_base.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !414
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %appl_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !415
  tail call void @msleep(i32 noundef 100) #8
  %call6 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end32, label %if.then7

if.then7:                                         ; preds = %retry_link
  br i1 %retry.0.off0, label %if.end10, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  %22 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i91 = getelementptr i8, ptr %23, i32 208
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #8, !srcloc !414
  %25 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i93 = getelementptr i8, ptr %26, i32 204
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #8, !srcloc !414
  %28 = and i32 %24, -134152192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2013265920, i32 %28)
  %cmp15 = icmp eq i32 %28, -2013265920
  %29 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  %or.cond = select i1 %cmp15, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.51) #11
  %32 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.55) #11
  %34 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i95 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #8, !srcloc !414
  %37 = and i32 %36, 2147483647
  %38 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i97 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %37) #8, !srcloc !415
  %40 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core_rst, align 4
  %call25 = tail call i32 @reset_control_assert(ptr noundef %41) #8
  %42 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core_rst, align 4
  %call27 = tail call i32 @reset_control_deassert(ptr noundef %43) #8
  %call28 = tail call zeroext i16 @dw_pcie_find_ext_capability(ptr noundef %pci, i8 noundef zeroext 37) #8
  %conv = zext i16 %call28 to i32
  %add = add nuw nsw i32 %conv, 4
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add, i32 noundef 4) #8
  %and30 = and i32 %call.i, 2147483647
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef %conv, i32 noundef 4, i32 noundef %and30) #8
  %call31 = tail call i32 @tegra194_pcie_host_init(ptr noundef %pp1)
  tail call void @dw_pcie_setup_rc(ptr noundef %pp1) #8
  br label %retry_link

if.end32:                                         ; preds = %retry_link
  %pcie_cap_base = getelementptr i8, ptr %pci, i32 352
  %44 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pcie_cap_base, align 8
  %add33 = add i32 %45, 18
  %call.i98 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add33, i32 noundef 2) #8
  %46 = and i32 %call.i98, 15
  %core_clk = getelementptr i8, ptr %pci, i32 -12
  %47 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %core_clk, align 4
  %sub = add nsw i32 %46, -1
  %arrayidx = getelementptr [4 x i32], ptr @pcie_gen_freq, i32 0, i32 %sub
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %call37 = tail call i32 @clk_set_rate(ptr noundef %48, i32 noundef %50) #8
  %51 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i18.i = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 -1) #8, !srcloc !415
  %53 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %54, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 -1) #8, !srcloc !415
  %55 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %56, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 -1) #8, !srcloc !415
  %57 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %58, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 -1) #8, !srcloc !415
  %59 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %60, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 -1) #8, !srcloc !415
  %61 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %62, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 -1) #8, !srcloc !415
  %63 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %64, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 -1) #8, !srcloc !415
  %65 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %66, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 -1) #8, !srcloc !415
  %67 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %68, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 -1) #8, !srcloc !415
  %69 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %70, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 -1) #8, !srcloc !415
  %71 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %72, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 -1) #8, !srcloc !415
  %73 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %74, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 -1) #8, !srcloc !415
  %75 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %76, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 -1) #8, !srcloc !415
  %77 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %78, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 -1) #8, !srcloc !415
  %79 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %80, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 -1) #8, !srcloc !415
  %81 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i47.i.i = getelementptr i8, ptr %82, i32 8
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i.i) #8, !srcloc !414
  %84 = or i32 %83, 16777216
  %85 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i49.i.i = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 %84) #8, !srcloc !415
  %87 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i51.i.i = getelementptr i8, ptr %88, i32 28
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #8, !srcloc !414
  %90 = or i32 %89, 33554432
  %91 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i53.i.i = getelementptr i8, ptr %92, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 %90) #8, !srcloc !415
  %enable_cdm_check.i.i = getelementptr i8, ptr %pp1, i32 297
  %93 = ptrtoint ptr %enable_cdm_check.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %enable_cdm_check.i.i, align 1, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i, label %if.end32.tegra_pcie_enable_interrupts.exit_crit_edge, label %if.then.i.i

if.end32.tegra_pcie_enable_interrupts.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_enable_interrupts.exit

if.then.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i55.i.i = getelementptr i8, ptr %96, i32 8
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i.i) #8, !srcloc !414
  %98 = or i32 %97, 2048
  %99 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i57.i.i = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 %98) #8, !srcloc !415
  %101 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i59.i.i = getelementptr i8, ptr %102, i32 144
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #8, !srcloc !414
  %104 = or i32 %103, 50331648
  %105 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i61.i.i = getelementptr i8, ptr %106, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 %104) #8, !srcloc !415
  br label %tegra_pcie_enable_interrupts.exit

tegra_pcie_enable_interrupts.exit:                ; preds = %if.then.i.i, %if.end32.tegra_pcie_enable_interrupts.exit_crit_edge
  %107 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pcie_cap_base, align 8
  %add.i.i = add i32 %108, 18
  %call.i.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add.i.i, i32 noundef 2) #8
  %109 = lshr i32 %call.i.i.i, 4
  %110 = trunc i32 %109 to i8
  %conv11.i.i = and i8 %110, 63
  %init_link_width.i.i = getelementptr %struct.dw_pcie, ptr %pci, i32 1, i32 3
  %111 = ptrtoint ptr %init_link_width.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv11.i.i, ptr %init_link_width.i.i, align 4
  %112 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pcie_cap_base, align 8
  %add14.i.i = add i32 %113, 16
  %call.i62.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add14.i.i, i32 noundef 2) #8
  %114 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pcie_cap_base, align 8
  %add21.i.i = add i32 %115, 16
  %116 = and i32 %call.i62.i.i, 64511
  %conv.i64.i.i = or i32 %116, 1024
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef %add21.i.i, i32 noundef 2, i32 noundef %conv.i64.i.i) #8
  %117 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %118, i32 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #8, !srcloc !414
  %120 = or i32 %119, 65600
  %121 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %122, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 %120) #8, !srcloc !415
  %123 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %124, i32 68
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #8, !srcloc !414
  %126 = or i32 %125, 210239488
  %127 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %128, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 %126) #8, !srcloc !415
  %129 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i6.i.i = getelementptr i8, ptr %130, i32 8
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #8, !srcloc !414
  %132 = or i32 %131, 268435584
  %133 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %134, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %132) #8, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %tegra_pcie_enable_interrupts.exit, %if.end10.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra194_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pex_rst_irq = getelementptr i8, ptr %pci, i32 400
  %0 = ptrtoint ptr %pex_rst_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pex_rst_irq, align 8
  tail call void @disable_irq(i32 noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_wait_for_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dw_pcie_find_ext_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_host_init(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %add.ptr.i = getelementptr i8, ptr %pp, i32 -64
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra_pci_ops, ptr %ops, align 4
  %pcie_cap_base = getelementptr i8, ptr %pp, i32 320
  %3 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pcie_cap_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %add.ptr, i8 noundef zeroext 16) #8
  %conv = zext i8 %call2 to i32
  %5 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %pcie_cap_base, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 28, i32 noundef 4) #8
  %and = and i32 %call.i, -258
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 28, i32 noundef 4, i32 noundef %and) #8
  %call.i67 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 36, i32 noundef 4) #8
  %or6 = or i32 %call.i67, 65537
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 36, i32 noundef 4, i32 noundef %or6) #8
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 16, i32 noundef 4, i32 noundef 0) #8
  %call.i68 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2256, i32 noundef 4) #8
  %and8 = and i32 %call.i68, -25
  %or9 = or i32 %and8, 16
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2256, i32 noundef 4, i32 noundef %or9) #8
  %6 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcie_cap_base, align 8
  %add = add i32 %7, 12
  %call.i69 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 4) #8
  %and12 = and i32 %call.i69, -1009
  %num_lanes = getelementptr i8, ptr %pp, i32 308
  %8 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_lanes, align 4
  %shl = shl i32 %9, 4
  %or13 = or i32 %shl, %and12
  %10 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcie_cap_base, align 8
  %add15 = add i32 %11, 12
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add15, i32 noundef 4, i32 noundef %or13) #8
  tail call fastcc void @config_gen3_gen4_eq_presets(ptr noundef %add.ptr.i)
  tail call fastcc void @init_host_aspm(ptr noundef %add.ptr.i)
  %supports_clkreq = getelementptr i8, ptr %pp, i32 296
  %12 = ptrtoint ptr %supports_clkreq to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %supports_clkreq, align 8, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %if.then17, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cfg_link_cap_l1sub.i = getelementptr i8, ptr %pp, i32 316
  %14 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %15, i32 noundef 4) #8
  %and.i = and i32 %call.i.i, -9
  %16 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %17, i32 noundef 4, i32 noundef %and.i) #8
  %18 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  %call.i.i72 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %19, i32 noundef 4) #8
  %and.i73 = and i32 %call.i.i72, -5
  %20 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %21, i32 noundef 4, i32 noundef %and.i73) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.if.end18_crit_edge
  %call.i74 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 2192, i32 noundef 4) #8
  %and20 = and i32 %call.i74, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2192, i32 noundef 4, i32 noundef %and20) #8
  %update_fc_fixup = getelementptr i8, ptr %pp, i32 299
  %22 = ptrtoint ptr %update_fc_fixup to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %update_fc_fixup, align 1, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not = icmp eq i8 %23, 0
  br i1 %tobool21.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i75 = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef 1816, i32 noundef 4) #8
  %or24 = or i32 %call.i75, 524288
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 1816, i32 noundef 4, i32 noundef %or24) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %core_clk = getelementptr i8, ptr %pp, i32 -44
  %24 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core_clk, align 4
  %call26 = tail call i32 @clk_set_rate(ptr noundef %25, i32 noundef 500000000) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup_rc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_gen3_gen4_eq_presets(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8
  %num_lanes = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 17
  %0 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp87.not = icmp eq i32 %1, 0
  br i1 %cmp87.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.088, 1
  %add = add i32 %mul, 340
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add, i32 noundef 2) #8
  %2 = and i32 %call.i, 61680
  %3 = or i32 %2, 1285
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %add, i32 noundef 2, i32 noundef %3) #8
  %call7 = tail call zeroext i16 @dw_pcie_find_ext_capability(ptr noundef %pci1, i8 noundef zeroext 38) #8
  %conv8 = zext i16 %call7 to i32
  %add9 = add i32 %i.088, 32
  %add10 = add i32 %add9, %conv8
  %call.i80 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %add10, i32 noundef 1) #8
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %add10, i32 noundef 1, i32 noundef 85) #8
  %inc = add nuw i32 %i.088, 1
  %4 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_lanes, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i82 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4) #8
  %and20 = and i32 %call.i82, -50331649
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4, i32 noundef %and20) #8
  %call.i83 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2216, i32 noundef 4) #8
  %and22 = and i32 %call.i83, -16776976
  %or23 = or i32 %and22, 261888
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2216, i32 noundef 4, i32 noundef %or23) #8
  %call.i84 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4) #8
  %and26 = and i32 %call.i84, -50331649
  %or27 = or i32 %and26, 16777216
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4, i32 noundef %or27) #8
  %call.i85 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2216, i32 noundef 4) #8
  %and29 = and i32 %call.i85, -16776976
  %or30 = or i32 %and29, 221184
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2216, i32 noundef 4, i32 noundef %or30) #8
  %call.i86 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4) #8
  %and33 = and i32 %call.i86, -50331649
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4, i32 noundef %and33) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_host_aspm(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8
  %call = tail call zeroext i16 @dw_pcie_find_ext_capability(ptr noundef %pci1, i8 noundef zeroext 30) #8
  %conv = zext i16 %call to i32
  %add = add nuw nsw i32 %conv, 4
  %cfg_link_cap_l1sub = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 19
  %0 = ptrtoint ptr %cfg_link_cap_l1sub to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %cfg_link_cap_l1sub, align 4
  %cid = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 18
  %1 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cid, align 8
  %arrayidx = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %4, i32 noundef 4, i32 noundef 83886108) #8
  %5 = ptrtoint ptr %cfg_link_cap_l1sub to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cfg_link_cap_l1sub, align 4
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %6, i32 noundef 4) #8
  %and = and i32 %call.i, -16318209
  %aspm_cmrt = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 21
  %7 = ptrtoint ptr %aspm_cmrt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aspm_cmrt, align 4
  %shl = shl i32 %8, 8
  %or4 = or i32 %shl, %and
  %aspm_pwr_on_t = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 22
  %9 = ptrtoint ptr %aspm_pwr_on_t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aspm_pwr_on_t, align 8
  %shl5 = shl i32 %10, 19
  %or6 = or i32 %or4, %shl5
  %11 = ptrtoint ptr %cfg_link_cap_l1sub to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg_link_cap_l1sub, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %12, i32 noundef 4, i32 noundef %or6) #8
  %call.i35 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 1804, i32 noundef 4) #8
  %and9 = and i32 %call.i35, -1191182337
  %aspm_l0s_enter_lat = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 23
  %13 = ptrtoint ptr %aspm_l0s_enter_lat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aspm_l0s_enter_lat, align 4
  %shl10 = shl i32 %14, 24
  %or11 = or i32 %and9, %shl10
  %or12 = or i32 %or11, 1073741824
  tail call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 1804, i32 noundef 4, i32 noundef %or12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_pcie_own_conf_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_rd_own_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2376, i32 %where)
  %cmp = icmp eq i32 %where, 2376
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_wr_own_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2376, i32 %where)
  %cmp = icmp eq i32 %where, 2376
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pci_generic_config_write(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pcie_config_controller(ptr noundef readonly %pcie, i1 noundef zeroext %en_hw_hot_rst) unnamed_addr #2 align 64 {
entry:
  %resp.i154 = alloca %struct.mrq_uphy_response, align 4
  %msg.i155 = alloca %struct.tegra_bpmp_message, align 4
  %req.i156 = alloca %struct.mrq_uphy_request, align 2
  %resp.i = alloca %struct.mrq_uphy_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_uphy_request, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #8
  %cid.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 18
  %0 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp eq i32 %1, 5
  br i1 %cmp.i, label %tegra_pcie_bpmp_set_ctrl_state.exit.thread, label %tegra_pcie_bpmp_set_ctrl_state.exit

tegra_pcie_bpmp_set_ctrl_state.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  br label %if.end

tegra_pcie_bpmp_set_ctrl_state.exit:              ; preds = %entry
  %2 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %8 = call ptr @memset(ptr %req.i, i32 0, i32 24)
  %9 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %resp.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %3, align 2
  %conv.i = trunc i32 %1 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %2, align 2
  %enable3.i = getelementptr inbounds %struct.cmd_uphy_pcie_controller_state_request, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %enable3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enable3.i, align 1
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 69, ptr %msg.i, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %req.i, ptr %7, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %6, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resp.i, ptr %5, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %4, align 4
  %bpmp.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 9
  %20 = ptrtoint ptr %bpmp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bpmp.i, align 8
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %21, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %tegra_pcie_bpmp_set_ctrl_state.exit.if.end_crit_edge, label %do.end

tegra_pcie_bpmp_set_ctrl_state.exit.if.end_crit_edge: ; preds = %tegra_pcie_bpmp_set_ctrl_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %tegra_pcie_bpmp_set_ctrl_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie, align 8
  %24 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.124, i32 noundef %25, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %tegra_pcie_bpmp_set_ctrl_state.exit.if.end_crit_edge, %tegra_pcie_bpmp_set_ctrl_state.exit.thread
  %slot_ctl_3v3.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 25
  %26 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slot_ctl_3v3.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.if.end3.i_crit_edge, label %if.then.i

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end
  %call.i114 = call i32 @regulator_enable(ptr noundef nonnull %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %do.end.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.138, i32 noundef %call.i114) #11
  br label %fail_slot_reg_en

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end.if.end3.i_crit_edge
  %slot_ctl_12v.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 26
  %30 = ptrtoint ptr %slot_ctl_12v.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slot_ctl_12v.i, align 8
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end15.i_crit_edge, label %if.then5.i

if.end3.i.if.end15.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then5.i:                                       ; preds = %if.end3.i
  %call7.i = call i32 @regulator_enable(ptr noundef nonnull %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end12.i, label %if.then5.i.if.end15.i_crit_edge

if.then5.i.if.end15.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

do.end12.i:                                       ; preds = %if.then5.i
  %32 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.141, i32 noundef %call7.i) #11
  %34 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slot_ctl_3v3.i, align 4
  %tobool23.not.i = icmp eq ptr %35, null
  br i1 %tobool23.not.i, label %do.end12.i.fail_slot_reg_en_crit_edge, label %if.then24.i

do.end12.i.fail_slot_reg_en_crit_edge:            ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_slot_reg_en

if.end15.i:                                       ; preds = %if.then5.i.if.end15.i_crit_edge, %if.end3.i.if.end15.i_crit_edge
  %36 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slot_ctl_3v3.i, align 4
  %tobool17.not.i = icmp eq ptr %37, null
  br i1 %tobool17.not.i, label %lor.lhs.false.i, label %if.end15.i.if.then20.i_crit_edge

if.end15.i.if.then20.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %38 = ptrtoint ptr %slot_ctl_12v.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slot_ctl_12v.i, align 8
  %tobool19.not.i = icmp eq ptr %39, null
  br i1 %tobool19.not.i, label %lor.lhs.false.i.if.end3_crit_edge, label %lor.lhs.false.i.if.then20.i_crit_edge

lor.lhs.false.i.if.then20.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20.i

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then20.i:                                      ; preds = %lor.lhs.false.i.if.then20.i_crit_edge, %if.end15.i.if.then20.i_crit_edge
  call void @msleep(i32 noundef 100) #8
  br label %if.end3

if.then24.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 @regulator_disable(ptr noundef nonnull %35) #8
  br label %fail_slot_reg_en

if.end3:                                          ; preds = %if.then20.i, %lor.lhs.false.i.if.end3_crit_edge
  %pex_ctl_supply = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 24
  %40 = ptrtoint ptr %pex_ctl_supply to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pex_ctl_supply, align 8
  %call4 = call i32 @regulator_enable(ptr noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.127, i32 noundef %call4) #11
  br label %fail_reg_en

if.end11:                                         ; preds = %if.end3
  %core_clk = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 5
  %44 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core_clk, align 4
  %call.i117 = call i32 @clk_prepare(ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool.not.i118 = icmp eq i32 %call.i117, 0
  br i1 %tobool.not.i118, label %if.end.i119, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.end.i119:                                      ; preds = %if.end11
  %call1.i = call i32 @clk_enable(ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %45) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i, %if.end11.do.end17_crit_edge
  %retval.0.i120.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i117, %if.end11.do.end17_crit_edge ]
  %46 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.130, i32 noundef %retval.0.i120.ph) #11
  br label %fail_core_clk

if.end19:                                         ; preds = %if.end.i119
  %core_apb_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 6
  %48 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core_apb_rst, align 8
  %call20 = call i32 @reset_control_deassert(ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.133, i32 noundef %call20) #11
  br label %fail_core_apb_rst

if.end27:                                         ; preds = %if.end19
  br i1 %en_hw_hot_rst, label %if.then29, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 4
  %52 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %53, i32 4
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !414
  %55 = and i32 %54, -53249
  %56 = or i32 %55, 4096
  %57 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i122 = getelementptr i8, ptr %58, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %56) #8, !srcloc !415
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %phy_count.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 27
  %59 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phy_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp33.not.i = icmp eq i32 %60, 0
  br i1 %cmp33.not.i, label %if.end31.if.end39_crit_edge, label %for.body.lr.ph.i

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

for.body.lr.ph.i:                                 ; preds = %if.end31
  %phys.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phys.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %62, i32 %i.034.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %call.i123 = call i32 @phy_init(ptr noundef %64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp1.i = icmp slt i32 %call.i123, 0
  br i1 %cmp1.i, label %for.body.i.while.cond.i_crit_edge, label %if.end.i124

for.body.i.while.cond.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.end.i124:                                      ; preds = %for.body.i
  %65 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phys.i, align 8
  %arrayidx3.i = getelementptr ptr, ptr %66, i32 %i.034.i
  %67 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = call i32 @phy_power_on(ptr noundef %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i124.phy_exit.i_crit_edge, label %for.inc.i

if.end.i124.phy_exit.i_crit_edge:                 ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %phy_exit.i

for.inc.i:                                        ; preds = %if.end.i124
  %inc.i = add nuw i32 %i.034.i, 1
  %69 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %phy_count.i, align 4
  %cmp.i125 = icmp ult i32 %inc.i, %70
  br i1 %cmp.i125, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end39_crit_edge

for.inc.i.if.end39_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

while.cond.i:                                     ; preds = %phy_exit.i, %for.body.i.while.cond.i_crit_edge
  %i.1.i = phi i32 [ %i.2.i, %phy_exit.i ], [ %i.034.i, %for.body.i.while.cond.i_crit_edge ]
  %ret.0.i = phi i32 [ %ret.1.i, %phy_exit.i ], [ %call.i123, %for.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %tobool.not.i126 = icmp eq i32 %i.1.i, 0
  br i1 %tobool.not.i126, label %tegra_pcie_enable_phy.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %i.1.i, -1
  %71 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phys.i, align 8
  %arrayidx9.i = getelementptr ptr, ptr %72, i32 %dec.i
  %73 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = call i32 @phy_power_off(ptr noundef %74) #8
  br label %phy_exit.i

phy_exit.i:                                       ; preds = %while.body.i, %if.end.i124.phy_exit.i_crit_edge
  %i.2.i = phi i32 [ %dec.i, %while.body.i ], [ %i.034.i, %if.end.i124.phy_exit.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.0.i, %while.body.i ], [ %call4.i, %if.end.i124.phy_exit.i_crit_edge ]
  %75 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phys.i, align 8
  %arrayidx12.i = getelementptr ptr, ptr %76, i32 %i.2.i
  %77 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = call i32 @phy_exit(ptr noundef %78) #8
  br label %while.cond.i

tegra_pcie_enable_phy.exit:                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool33.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool33.not, label %tegra_pcie_enable_phy.exit.if.end39_crit_edge, label %do.end37

tegra_pcie_enable_phy.exit.if.end39_crit_edge:    ; preds = %tegra_pcie_enable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end37:                                         ; preds = %tegra_pcie_enable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.136, i32 noundef %ret.0.i) #11
  %81 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core_apb_rst, align 8
  %call55 = call i32 @reset_control_assert(ptr noundef %82) #8
  br label %fail_core_apb_rst

if.end39:                                         ; preds = %tegra_pcie_enable_phy.exit.if.end39_crit_edge, %for.inc.i.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %dbi_res = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 2
  %83 = ptrtoint ptr %dbi_res to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dbi_res, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %and40 = and i32 %86, -4096
  %87 = call i32 @llvm.bswap.i32(i32 %and40) #8
  %appl_base.i128 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 4
  %88 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i129 = getelementptr i8, ptr %89, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %87) #8, !srcloc !415
  %90 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i131 = getelementptr i8, ptr %91, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 67108864) #8, !srcloc !415
  %92 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i133 = getelementptr i8, ptr %93, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 0) #8, !srcloc !415
  %94 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i135 = getelementptr i8, ptr %95, i32 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #8, !srcloc !414
  %97 = or i32 %96, 1073741824
  %98 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i137 = getelementptr i8, ptr %99, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %97) #8, !srcloc !415
  %100 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i139 = getelementptr i8, ptr %101, i32 272
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #8, !srcloc !414
  %103 = or i32 %102, 786432
  %104 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i141 = getelementptr i8, ptr %105, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %103) #8, !srcloc !415
  %supports_clkreq = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 11
  %106 = ptrtoint ptr %supports_clkreq to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %supports_clkreq, align 8, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool45.not = icmp eq i8 %107, 0
  br i1 %tobool45.not, label %if.then46, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %appl_base.i128, align 8
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #8, !srcloc !414
  %111 = and i32 %110, -201326593
  %112 = or i32 %111, 67108864
  %113 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %appl_base.i128, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #8, !srcloc !415
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end39.if.end50_crit_edge
  %atu_dma_res = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 3
  %115 = ptrtoint ptr %atu_dma_res to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %atu_dma_res, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %and52 = and i32 %118, -262144
  %119 = call i32 @llvm.bswap.i32(i32 %and52) #8
  %120 = ptrtoint ptr %appl_base.i128 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %appl_base.i128, align 8
  %add.ptr.i145 = getelementptr i8, ptr %121, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %119) #8, !srcloc !415
  %core_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 7
  %122 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %core_rst, align 4
  %call53 = call i32 @reset_control_deassert(ptr noundef %123) #8
  br label %cleanup

fail_core_apb_rst:                                ; preds = %do.end37, %do.end25
  %ret.0 = phi i32 [ %call20, %do.end25 ], [ %ret.0.i, %do.end37 ]
  %124 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %core_clk, align 4
  call void @clk_disable(ptr noundef %125) #8
  call void @clk_unprepare(ptr noundef %125) #8
  br label %fail_core_clk

fail_core_clk:                                    ; preds = %fail_core_apb_rst, %do.end17
  %ret.1 = phi i32 [ %retval.0.i120.ph, %do.end17 ], [ %ret.0, %fail_core_apb_rst ]
  %126 = ptrtoint ptr %pex_ctl_supply to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pex_ctl_supply, align 8
  %call58 = call i32 @regulator_disable(ptr noundef %127) #8
  br label %fail_reg_en

fail_reg_en:                                      ; preds = %fail_core_clk, %do.end9
  %ret.2 = phi i32 [ %call4, %do.end9 ], [ %ret.1, %fail_core_clk ]
  %128 = ptrtoint ptr %slot_ctl_12v.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %slot_ctl_12v.i, align 8
  %tobool.not.i147 = icmp eq ptr %129, null
  br i1 %tobool.not.i147, label %fail_reg_en.if.end.i152_crit_edge, label %if.then.i149

fail_reg_en.if.end.i152_crit_edge:                ; preds = %fail_reg_en
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i152

if.then.i149:                                     ; preds = %fail_reg_en
  call void @__sanitizer_cov_trace_pc() #10
  %call.i148 = call i32 @regulator_disable(ptr noundef nonnull %129) #8
  br label %if.end.i152

if.end.i152:                                      ; preds = %if.then.i149, %fail_reg_en.if.end.i152_crit_edge
  %130 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %slot_ctl_3v3.i, align 4
  %tobool2.not.i151 = icmp eq ptr %131, null
  br i1 %tobool2.not.i151, label %if.end.i152.fail_slot_reg_en_crit_edge, label %if.then3.i153

if.end.i152.fail_slot_reg_en_crit_edge:           ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_slot_reg_en

if.then3.i153:                                    ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 @regulator_disable(ptr noundef nonnull %131) #8
  br label %fail_slot_reg_en

fail_slot_reg_en:                                 ; preds = %if.then3.i153, %if.end.i152.fail_slot_reg_en_crit_edge, %if.then24.i, %do.end12.i.fail_slot_reg_en_crit_edge, %do.end.i
  %ret.3 = phi i32 [ %ret.2, %if.end.i152.fail_slot_reg_en_crit_edge ], [ %ret.2, %if.then3.i153 ], [ %call7.i, %do.end12.i.fail_slot_reg_en_crit_edge ], [ %call7.i, %if.then24.i ], [ %call.i114, %do.end.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i154) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i155) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i156) #8
  %132 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %133)
  %cmp.i158 = icmp eq i32 %133, 5
  br i1 %cmp.i158, label %fail_slot_reg_en.tegra_pcie_bpmp_set_ctrl_state.exit165_crit_edge, label %if.end.i163

fail_slot_reg_en.tegra_pcie_bpmp_set_ctrl_state.exit165_crit_edge: ; preds = %fail_slot_reg_en
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_bpmp_set_ctrl_state.exit165

if.end.i163:                                      ; preds = %fail_slot_reg_en
  call void @__sanitizer_cov_trace_pc() #10
  %134 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i156, i32 0, i32 2
  %135 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i156, i32 0, i32 1
  %136 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i155, i32 0, i32 2, i32 1
  %137 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i155, i32 0, i32 2
  %138 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i155, i32 0, i32 1, i32 1
  %139 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i155, i32 0, i32 1
  %140 = call ptr @memset(ptr %req.i156, i32 0, i32 24)
  %141 = ptrtoint ptr %resp.i154 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %resp.i154, align 4
  %142 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 4, ptr %135, align 2
  %conv.i159 = trunc i32 %133 to i8
  %143 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv.i159, ptr %134, align 2
  %144 = getelementptr inbounds i8, ptr %msg.i155, i32 20
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %144, align 4
  %146 = ptrtoint ptr %msg.i155 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 69, ptr %msg.i155, align 4
  %147 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %req.i156, ptr %139, align 4
  %148 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 24, ptr %138, align 4
  %149 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %resp.i154, ptr %137, align 4
  %150 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 4, ptr %136, align 4
  %bpmp.i161 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 9
  %151 = ptrtoint ptr %bpmp.i161 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bpmp.i161, align 8
  %call.i162 = call i32 @tegra_bpmp_transfer(ptr noundef %152, ptr noundef nonnull %msg.i155) #8
  br label %tegra_pcie_bpmp_set_ctrl_state.exit165

tegra_pcie_bpmp_set_ctrl_state.exit165:           ; preds = %if.end.i163, %fail_slot_reg_en.tegra_pcie_bpmp_set_ctrl_state.exit165_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i156) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i155) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i154) #8
  br label %cleanup

cleanup:                                          ; preds = %tegra_pcie_bpmp_set_ctrl_state.exit165, %if.end50, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.3, %tegra_pcie_bpmp_set_ctrl_state.exit165 ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_unconfig_controller(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  %resp.i = alloca %struct.mrq_uphy_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_uphy_request, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 7
  %0 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.143, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %phy_count1.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 27
  %4 = ptrtoint ptr %phy_count1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not9.i = icmp eq i32 %5, 0
  br i1 %tobool.not9.i, label %if.end.tegra_pcie_disable_phy.exit_crit_edge, label %while.body.lr.ph.i

if.end.tegra_pcie_disable_phy.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_disable_phy.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %phys.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 28
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %phy_count.010.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %phy_count.010.i, -1
  %6 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %dec.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %9) #8
  %10 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys.i, align 8
  %arrayidx3.i = getelementptr ptr, ptr %11, i32 %dec.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @phy_exit(ptr noundef %13) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.tegra_pcie_disable_phy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.tegra_pcie_disable_phy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_disable_phy.exit

tegra_pcie_disable_phy.exit:                      ; preds = %while.body.i.tegra_pcie_disable_phy.exit_crit_edge, %if.end.tegra_pcie_disable_phy.exit_crit_edge
  %core_apb_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 6
  %14 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core_apb_rst, align 8
  %call1 = tail call i32 @reset_control_assert(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %tegra_pcie_disable_phy.exit.if.end8_crit_edge, label %do.end6

tegra_pcie_disable_phy.exit.if.end8_crit_edge:    ; preds = %tegra_pcie_disable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end6:                                          ; preds = %tegra_pcie_disable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.146, i32 noundef %call1) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %tegra_pcie_disable_phy.exit.if.end8_crit_edge
  %core_clk = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 5
  %18 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #8
  tail call void @clk_unprepare(ptr noundef %19) #8
  %pex_ctl_supply = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 24
  %20 = ptrtoint ptr %pex_ctl_supply to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pex_ctl_supply, align 8
  %call9 = tail call i32 @regulator_disable(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %do.end14

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.149, i32 noundef %call9) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end8.if.end16_crit_edge
  %slot_ctl_12v.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 26
  %24 = ptrtoint ptr %slot_ctl_12v.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slot_ctl_12v.i, align 8
  %tobool.not.i43 = icmp eq ptr %25, null
  br i1 %tobool.not.i43, label %if.end16.if.end.i_crit_edge, label %if.then.i

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44 = tail call i32 @regulator_disable(ptr noundef nonnull %25) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end16.if.end.i_crit_edge
  %slot_ctl_3v3.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 25
  %26 = ptrtoint ptr %slot_ctl_3v3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slot_ctl_3v3.i, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %if.end.i.tegra_pcie_disable_slot_regulators.exit_crit_edge, label %if.then3.i

if.end.i.tegra_pcie_disable_slot_regulators.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_disable_slot_regulators.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 @regulator_disable(ptr noundef nonnull %27) #8
  br label %tegra_pcie_disable_slot_regulators.exit

tegra_pcie_disable_slot_regulators.exit:          ; preds = %if.then3.i, %if.end.i.tegra_pcie_disable_slot_regulators.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #8
  %cid.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 18
  %28 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp.i = icmp eq i32 %29, 5
  br i1 %cmp.i, label %tegra_pcie_bpmp_set_ctrl_state.exit.thread, label %tegra_pcie_bpmp_set_ctrl_state.exit

tegra_pcie_bpmp_set_ctrl_state.exit.thread:       ; preds = %tegra_pcie_disable_slot_regulators.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  br label %if.end24

tegra_pcie_bpmp_set_ctrl_state.exit:              ; preds = %tegra_pcie_disable_slot_regulators.exit
  %30 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %34 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %35 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %36 = call ptr @memset(ptr %req.i, i32 0, i32 24)
  %37 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %resp.i, align 4
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 4, ptr %31, align 2
  %conv.i = trunc i32 %29 to i8
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %30, align 2
  %40 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %42 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 69, ptr %msg.i, align 4
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %req.i, ptr %35, align 4
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 24, ptr %34, align 4
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resp.i, ptr %33, align 4
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %32, align 4
  %bpmp.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 9
  %47 = ptrtoint ptr %bpmp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bpmp.i, align 8
  %call.i45 = call i32 @tegra_bpmp_transfer(ptr noundef %48, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool18.not = icmp eq i32 %call.i45, 0
  br i1 %tobool18.not, label %tegra_pcie_bpmp_set_ctrl_state.exit.if.end24_crit_edge, label %do.end22

tegra_pcie_bpmp_set_ctrl_state.exit.if.end24_crit_edge: ; preds = %tegra_pcie_bpmp_set_ctrl_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end22:                                         ; preds = %tegra_pcie_bpmp_set_ctrl_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcie, align 8
  %51 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.152, i32 noundef %52, i32 noundef %call.i45) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %tegra_pcie_bpmp_set_ctrl_state.exit.if.end24_crit_edge, %tegra_pcie_bpmp_set_ctrl_state.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspm_state_cnt(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %pci.i = getelementptr inbounds %struct.tegra194_pcie, ptr %3, i32 0, i32 8
  %cid.i = getelementptr inbounds %struct.tegra194_pcie, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cid.i, align 8
  %arrayidx.i = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %7, i32 noundef 4) #8
  %and.i = and i32 %call.i.i, -100597789
  %or2.i = or i32 %and.i, 84017180
  %8 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cid.i, align 8
  %arrayidx5.i = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.i, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %11, i32 noundef 4, i32 noundef %or2.i) #8
  %12 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cid.i, align 8
  %arrayidx8.i = getelementptr [6 x i32], ptr @event_cntr_data_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8.i, align 4
  %call.i20.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %15, i32 noundef 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.155, i32 noundef %call.i20.i) #8
  %16 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cid.i, align 8
  %arrayidx.i25 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i25, align 4
  %call.i.i26 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %19, i32 noundef 4) #8
  %and.i27 = and i32 %call.i.i26, -100597789
  %or2.i29 = or i32 %and.i27, 84082716
  %20 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cid.i, align 8
  %arrayidx5.i30 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx5.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5.i30, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %23, i32 noundef 4, i32 noundef %or2.i29) #8
  %24 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cid.i, align 8
  %arrayidx8.i31 = getelementptr [6 x i32], ptr @event_cntr_data_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx8.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.i31, align 4
  %call.i20.i32 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %27, i32 noundef 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.156, i32 noundef %call.i20.i32) #8
  %28 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cid.i, align 8
  %arrayidx.i35 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i35, align 4
  %call.i.i36 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %31, i32 noundef 4) #8
  %and.i37 = and i32 %call.i.i36, -100597789
  %or2.i39 = or i32 %and.i37, 84213788
  %32 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cid.i, align 8
  %arrayidx5.i40 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx5.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.i40, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %35, i32 noundef 4, i32 noundef %or2.i39) #8
  %36 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cid.i, align 8
  %arrayidx8.i41 = getelementptr [6 x i32], ptr @event_cntr_data_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx8.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx8.i41, align 4
  %call.i20.i42 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %39, i32 noundef 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.157, i32 noundef %call.i20.i42) #8
  %40 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cid.i, align 8
  %arrayidx.i45 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i45, align 4
  %call.i.i46 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %43, i32 noundef 4) #8
  %and.i47 = and i32 %call.i.i46, -100597789
  %or2.i49 = or i32 %and.i47, 84344860
  %44 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cid.i, align 8
  %arrayidx5.i50 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx5.i50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5.i50, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %47, i32 noundef 4, i32 noundef %or2.i49) #8
  %48 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cid.i, align 8
  %arrayidx8.i51 = getelementptr [6 x i32], ptr @event_cntr_data_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx8.i51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx8.i51, align 4
  %call.i20.i52 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %51, i32 noundef 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.158, i32 noundef %call.i20.i52) #8
  %52 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cid.i, align 8
  %arrayidx.i55 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i55, align 4
  %call.i.i56 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %55, i32 noundef 4) #8
  %and.i57 = and i32 %call.i.i56, -100597789
  %or2.i59 = or i32 %and.i57, 84410396
  %56 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cid.i, align 8
  %arrayidx5.i60 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx5.i60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.i60, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %59, i32 noundef 4, i32 noundef %or2.i59) #8
  %60 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cid.i, align 8
  %arrayidx8.i61 = getelementptr [6 x i32], ptr @event_cntr_data_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx8.i61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx8.i61, align 4
  %call.i20.i62 = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci.i, i32 noundef %63, i32 noundef 4) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, i32 noundef %call.i20.i62) #8
  %64 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cid.i, align 8
  %arrayidx = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %67, i32 noundef 4, i32 noundef 3) #8
  %68 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cid.i, align 8
  %arrayidx8 = getelementptr [6 x i32], ptr @event_cntr_ctrl_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx8, align 4
  tail call void @dw_pcie_write_dbi(ptr noundef %pci.i, i32 noundef %71, i32 noundef 4, i32 noundef 83886108) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_pcie_downstream_dev_to_D0(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 7, i32 17
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %bus = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  %children = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %child.0.in = phi ptr [ %children, %entry ], [ %child.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %child.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %child.0 = load ptr, ptr %child.0.in, align 4
  %cmp.not = icmp eq ptr %child.0, %children
  br i1 %cmp.not, label %for.cond.do.end_crit_edge, label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.cond
  %parent = getelementptr inbounds %struct.pci_bus, ptr %child.0, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %cmp7 = icmp eq ptr %6, %3
  br i1 %cmp7, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %child.0, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.end14

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.cond.do.end_crit_edge
  %7 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.160) #11
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %devices = getelementptr inbounds %struct.pci_bus, ptr %child.0, i32 0, i32 3
  %9 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %9)
  %pdev.062 = load ptr, ptr %devices, align 4
  %cmp21.not63 = icmp eq ptr %pdev.062, %devices
  br i1 %cmp21.not63, label %if.end14.cleanup_crit_edge, label %if.end14.for.body23_crit_edge

if.end14.for.body23_crit_edge:                    ; preds = %if.end14
  br label %for.body23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body23:                                       ; preds = %for.inc36.for.body23_crit_edge, %if.end14.for.body23_crit_edge
  %pdev.064 = phi ptr [ %pdev.0, %for.inc36.for.body23_crit_edge ], [ %pdev.062, %if.end14.for.body23_crit_edge ]
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev.064, i32 0, i32 6
  %10 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn, align 4
  %12 = and i32 %11, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %if.then25, label %for.body23.for.inc36_crit_edge

for.body23.for.inc36_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36

if.then25:                                        ; preds = %for.body23
  %call = tail call i32 @pci_set_power_state(ptr noundef %pdev.064, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.then25.for.inc36_crit_edge, label %do.end30

if.then25.for.inc36_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36

do.end30:                                         ; preds = %if.then25
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie, align 8
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %pdev.064, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end30.dev_name.exit_crit_edge

do.end30.dev_name.exit_crit_edge:                 ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %pdev.064, i32 0, i32 44
  %17 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev32, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end30.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.end30.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.163, ptr noundef %retval.0.i) #11
  br label %for.inc36

for.inc36:                                        ; preds = %dev_name.exit, %if.then25.for.inc36_crit_edge, %for.body23.for.inc36_crit_edge
  %19 = ptrtoint ptr %pdev.064 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pdev.0 = load ptr, ptr %pdev.064, align 4
  %cmp21.not = icmp eq ptr %pdev.0, %devices
  br i1 %cmp21.not, label %for.inc36.cleanup_crit_edge, label %for.inc36.for.body23_crit_edge

for.inc36.for.body23_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.inc36.cleanup_crit_edge:                      ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc36.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_host_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra194_pcie_pme_turnoff(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8
  %pcie_cap_base.i = getelementptr %struct.tegra194_pcie, ptr %pcie, i32 0, i32 20
  %0 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcie_cap_base.i, align 8
  %add.i = add i32 %1, 18
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add.i, i32 noundef 2) #8
  %2 = and i32 %call.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra194_pcie_pme_turnoff.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra194_pcie_pme_turnoff, %cleanup)) #8
          to label %if.then6 [label %cleanup], !srcloc !416

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra194_pcie_pme_turnoff.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.166) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 4
  %5 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !415
  %7 = ptrtoint ptr %pcie_cap_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pcie_cap_base.i, align 8
  %add.i.i = add i32 %8, 18
  %call.i.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef %add.i.i, i32 noundef 2) #8
  %9 = and i32 %call.i.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end7.if.end68_crit_edge, label %if.end.i

if.end7.if.end68_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end.i:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 228
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !414
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %15, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %13) #8, !srcloc !415
  %call2.i = tail call i64 @ktime_get() #8
  %add.i45.i = add i64 %call2.i, 10000000
  %16 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %appl_base.i, align 8
  %add.ptr47.i = getelementptr i8, ptr %17, i32 208
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not49.i = icmp eq i32 %19, 0
  br i1 %tobool6.not49.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end.i.if.end68_crit_edge

if.end.i.if.end68_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %call10.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call10.i, i64 %add.i45.i)
  %cmp3.i.i = icmp sgt i64 %call10.i, %add.i45.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #8
  %21 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %22, i32 208
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  %24 = and i32 %23, 8192
  %tobool6.not.i = icmp eq i32 %24, 0
  br i1 %tobool6.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.if.end68_crit_edge

cond.false.i.if.end68_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %25 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %appl_base.i, align 8
  %add.ptr16.i = getelementptr i8, ptr %26, i32 208
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not.i = icmp eq i32 %28, 0
  br i1 %tobool30.not.i, label %do.end13, label %for.end.i.if.end68_crit_edge

for.end.i.if.end68_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end13:                                         ; preds = %for.end.i
  %29 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.167) #11
  %31 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %appl_base.i, align 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !414
  %34 = and i32 %33, -16777217
  %35 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %appl_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !415
  %37 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %appl_base.i, align 8
  %add.ptr = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  %40 = and i32 %39, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %appl_base.i, align 8
  %add.ptr24 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %40) #8, !srcloc !415
  %call25 = tail call i64 @ktime_get() #8
  %add.i104 = add i64 %call25, 50000000
  %43 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %appl_base.i, align 8
  %add.ptr30112 = getelementptr i8, ptr %44, i32 208
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30112) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  %46 = and i32 %45, -134152192
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %46)
  %cmp113 = icmp eq i32 %46, 671088640
  br i1 %cmp113, label %do.end13.for.end_crit_edge, label %do.end13.land.lhs.true_crit_edge

do.end13.land.lhs.true_crit_edge:                 ; preds = %do.end13
  br label %land.lhs.true

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %do.end13.land.lhs.true_crit_edge
  %call38 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i104)
  %cmp3.i = icmp sgt i64 %call38, %add.i104
  br i1 %cmp3.i, label %if.then41, label %cond.false

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %appl_base.i, align 8
  %add.ptr45 = getelementptr i8, ptr %49, i32 208
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  %51 = and i32 %50, -134152192
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #8
  %54 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %appl_base.i, align 8
  %add.ptr30 = getelementptr i8, ptr %55, i32 208
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  %57 = and i32 %56, -134152192
  %cmp = icmp eq i32 %57, 671088640
  br i1 %cmp, label %cond.false.if.end68_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.if.end68_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.end:                                          ; preds = %if.then41, %do.end13.for.end_crit_edge
  %.pre-phi = phi i32 [ %47, %do.end13.for.end_crit_edge ], [ %52, %if.then41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %.pre-phi)
  %cmp60 = icmp eq i32 %.pre-phi, 40
  br i1 %cmp60, label %for.end.if.end68_crit_edge, label %do.end65

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end65:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.169) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %for.end.if.end68_crit_edge, %cond.false.if.end68_crit_edge, %for.end.i.if.end68_crit_edge, %cond.false.i.if.end68_crit_edge, %if.end.i.if.end68_crit_edge, %if.end7.if.end68_crit_edge
  %60 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %appl_base.i, align 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !414
  %63 = and i32 %62, -1006632961
  %64 = or i32 %63, 469762048
  %65 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %appl_base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #8, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ep_pex_rst_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pex_rst_gpiod = getelementptr inbounds %struct.tegra194_pcie, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %pex_rst_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pex_rst_gpiod, align 8
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pex_ep_event_pex_rst_assert(ptr noundef %arg)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pex_ep_event_pex_rst_deassert(ptr noundef %arg)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pcie_ep_raise_irq(ptr nocapture noundef readonly %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %interrupt_num)
  %cmp.i = icmp ugt i16 %interrupt_num, 1
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %appl_base.i.i = getelementptr i8, ptr %ep, i32 -232
  %1 = ptrtoint ptr %appl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %appl_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #8, !srcloc !415
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %3 = ptrtoint ptr %appl_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %appl_base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %4, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #8, !srcloc !415
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %interrupt_num)
  %cmp.i12 = icmp ugt i16 %interrupt_num, 31
  br i1 %cmp.i12, label %sw.bb2.cleanup_crit_edge, label %if.end.i15, !prof !412

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i15:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %interrupt_num to i32
  %shl.i = shl nuw i32 1, %conv.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %appl_base.i.i13 = getelementptr i8, ptr %ep, i32 -232
  %6 = ptrtoint ptr %appl_base.i.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %appl_base.i.i13, align 8
  %add.ptr.i.i14 = getelementptr i8, ptr %7, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 %5) #8, !srcloc !415
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !423
  tail call void @arm_heavy_mb() #8
  %conv.i17 = zext i16 %interrupt_num to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i17) #8
  %msi_mem.i = getelementptr i8, ptr %ep, i32 48
  %9 = ptrtoint ptr %msi_mem.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msi_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !415
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.191) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %if.end.i15, %sw.bb2.cleanup_crit_edge, %if.end.i, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %sw.bb4 ], [ 0, %if.end.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.i15 ], [ -22, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @tegra_pcie_ep_get_features(ptr nocapture noundef readnone %ep) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @tegra_pcie_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pex_ep_event_pex_rst_assert(ptr nocapture noundef %pcie) unnamed_addr #2 align 64 {
entry:
  %resp.i = alloca %struct.mrq_uphy_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_uphy_request, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_state = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 33
  %0 = ptrtoint ptr %ep_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 4
  %2 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !414
  %5 = and i32 %4, 2147483647
  %6 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i95 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %5) #8, !srcloc !415
  %call1 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call1, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1625) #8
  %8 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %appl_base.i, align 8
  %add.ptr101 = getelementptr i8, ptr %9, i32 208
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !424
  %11 = and i32 %10, -134152192
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 671088640, i32 %11)
  %cmp15102 = icmp eq i32 %11, 671088640
  br i1 %cmp15102, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then31

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %appl_base.i, align 8
  %add.ptr25 = getelementptr i8, ptr %14, i32 208
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !425
  %16 = and i32 %15, -134152192
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  br label %for.end

if.then31:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %18 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %appl_base.i, align 8
  %add.ptr = getelementptr i8, ptr %19, i32 208
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !424
  %21 = and i32 %20, -134152192
  %cmp15 = icmp eq i32 %21, 671088640
  br i1 %cmp15, label %if.then31.if.end43_crit_edge, label %if.then31.land.lhs.true_crit_edge

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

for.end:                                          ; preds = %if.then21, %if.end.for.end_crit_edge
  %.pre-phi = phi i32 [ %12, %if.end.for.end_crit_edge ], [ %17, %if.then21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %.pre-phi)
  %cmp37 = icmp eq i32 %.pre-phi, 40
  br i1 %cmp37, label %for.end.if.end43_crit_edge, label %do.end42

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.193, i32 noundef -110) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %for.end.if.end43_crit_edge, %if.then31.if.end43_crit_edge
  %core_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 7
  %24 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core_rst, align 4
  %call44 = tail call i32 @reset_control_assert(ptr noundef %25) #8
  %phy_count1.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 27
  %26 = ptrtoint ptr %phy_count1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not9.i = icmp eq i32 %27, 0
  br i1 %tobool.not9.i, label %if.end43.tegra_pcie_disable_phy.exit_crit_edge, label %while.body.lr.ph.i

if.end43.tegra_pcie_disable_phy.exit_crit_edge:   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_disable_phy.exit

while.body.lr.ph.i:                               ; preds = %if.end43
  %phys.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 28
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %phy_count.010.i = phi i32 [ %27, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %phy_count.010.i, -1
  %28 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phys.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %29, i32 %dec.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %31) #8
  %32 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phys.i, align 8
  %arrayidx3.i = getelementptr ptr, ptr %33, i32 %dec.i
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @phy_exit(ptr noundef %35) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.tegra_pcie_disable_phy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.tegra_pcie_disable_phy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pcie_disable_phy.exit

tegra_pcie_disable_phy.exit:                      ; preds = %while.body.i.tegra_pcie_disable_phy.exit_crit_edge, %if.end43.tegra_pcie_disable_phy.exit_crit_edge
  %core_apb_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 6
  %36 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core_apb_rst, align 8
  %call45 = tail call i32 @reset_control_assert(ptr noundef %37) #8
  %core_clk = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 5
  %38 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %39) #8
  tail call void @clk_unprepare(ptr noundef %39) #8
  %40 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcie, align 8
  %call.i97 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %42 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %44 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %45 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #8
  %46 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 1
  %47 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 2
  %48 = call ptr @memset(ptr %req.i, i32 0, i32 24)
  %49 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %resp.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 5, ptr %46, align 2
  %storemerge.in.in.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 18
  %51 = ptrtoint ptr %storemerge.in.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %storemerge.in.i = load i32, ptr %storemerge.in.in.i, align 8
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %storemerge.i, ptr %47, align 2
  %53 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %53, align 4
  %55 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 69, ptr %msg.i, align 4
  %56 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %req.i, ptr %42, align 4
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 24, ptr %43, align 4
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %resp.i, ptr %44, align 4
  %59 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %45, align 4
  %bpmp.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 9
  %60 = ptrtoint ptr %bpmp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bpmp.i, align 8
  %call.i98 = call i32 @tegra_bpmp_transfer(ptr noundef %61, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool49.not = icmp eq i32 %call.i98, 0
  br i1 %tobool49.not, label %tegra_pcie_disable_phy.exit.if.end55_crit_edge, label %do.end53

tegra_pcie_disable_phy.exit.if.end55_crit_edge:   ; preds = %tegra_pcie_disable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end53:                                         ; preds = %tegra_pcie_disable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.196, i32 noundef %call.i98) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end53, %tegra_pcie_disable_phy.exit.if.end55_crit_edge
  %64 = ptrtoint ptr %ep_state to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %ep_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pex_ep_event_pex_rst_assert.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pex_ep_event_pex_rst_assert, %cleanup)) #8
          to label %if.then64 [label %cleanup], !srcloc !416

if.then64:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcie, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pex_ep_event_pex_rst_assert.__UNIQUE_ID_ddebug296, ptr noundef %66, ptr noundef nonnull @.str.198) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end55, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pex_ep_event_pex_rst_deassert(ptr noundef %pcie) unnamed_addr #2 align 64 {
entry:
  %resp.i299 = alloca %struct.mrq_uphy_response, align 4
  %msg.i300 = alloca %struct.tegra_bpmp_message, align 4
  %req.i301 = alloca %struct.mrq_uphy_request, align 2
  %resp.i = alloca %struct.mrq_uphy_response, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %req.i = alloca %struct.mrq_uphy_request, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci1 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8
  %ep2 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 8
  %ep_state = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 33
  %2 = ptrtoint ptr %ep_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ep_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !426
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !427
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !428
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %call.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i) #8
  %9 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %req.i, i32 0, i32 24)
  %12 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %resp.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %9, align 2
  %storemerge.in.in.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 18
  %14 = ptrtoint ptr %storemerge.in.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge.in.i = load i32, ptr %storemerge.in.in.i, align 8
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge.i, ptr %10, align 2
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 69, ptr %msg.i, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %req.i, ptr %5, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 24, ptr %6, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resp.i, ptr %7, align 4
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %8, align 4
  %bpmp.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 9
  %23 = ptrtoint ptr %bpmp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpmp.i, align 8
  %call.i217 = call i32 @tegra_bpmp_transfer(ptr noundef %24, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool.not = icmp eq i32 %call.i217, 0
  br i1 %tobool.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.201, i32 noundef %call.i217) #11
  br label %fail_pll_init

if.end12:                                         ; preds = %if.end6
  %core_clk = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 5
  %25 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core_clk, align 4
  %call.i218 = call i32 @clk_prepare(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.do.end18_crit_edge

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.end.i:                                         ; preds = %if.end12
  %call1.i = call i32 @clk_enable(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %26) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i, %if.end12.do.end18_crit_edge
  %retval.0.i219.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i218, %if.end12.do.end18_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.130, i32 noundef %retval.0.i219.ph) #11
  br label %fail_core_clk_enable

if.end19:                                         ; preds = %if.end.i
  %core_apb_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 6
  %27 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core_apb_rst, align 8
  %call20 = call i32 @reset_control_deassert(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.133, i32 noundef %call20) #11
  br label %fail_core_apb_rst

if.end26:                                         ; preds = %if.end19
  %phy_count.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 27
  %29 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %phy_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp33.not.i = icmp eq i32 %30, 0
  br i1 %cmp33.not.i, label %if.end26.if.end33_crit_edge, label %for.body.lr.ph.i

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.body.lr.ph.i:                                 ; preds = %if.end26
  %phys.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phys.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %i.034.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %call.i220 = call i32 @phy_init(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %cmp1.i = icmp slt i32 %call.i220, 0
  br i1 %cmp1.i, label %for.body.i.while.cond.i_crit_edge, label %if.end.i221

for.body.i.while.cond.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.end.i221:                                      ; preds = %for.body.i
  %35 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phys.i, align 8
  %arrayidx3.i = getelementptr ptr, ptr %36, i32 %i.034.i
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = call i32 @phy_power_on(ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i221.phy_exit.i_crit_edge, label %for.inc.i

if.end.i221.phy_exit.i_crit_edge:                 ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %phy_exit.i

for.inc.i:                                        ; preds = %if.end.i221
  %inc.i = add nuw i32 %i.034.i, 1
  %39 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_count.i, align 4
  %cmp.i222 = icmp ult i32 %inc.i, %40
  br i1 %cmp.i222, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end33_crit_edge

for.inc.i.if.end33_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

while.cond.i:                                     ; preds = %phy_exit.i, %for.body.i.while.cond.i_crit_edge
  %i.1.i = phi i32 [ %i.2.i, %phy_exit.i ], [ %i.034.i, %for.body.i.while.cond.i_crit_edge ]
  %ret.0.i = phi i32 [ %ret.1.i, %phy_exit.i ], [ %call.i220, %for.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %tobool.not.i223 = icmp eq i32 %i.1.i, 0
  br i1 %tobool.not.i223, label %tegra_pcie_enable_phy.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i32 %i.1.i, -1
  %41 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phys.i, align 8
  %arrayidx9.i = getelementptr ptr, ptr %42, i32 %dec.i
  %43 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = call i32 @phy_power_off(ptr noundef %44) #8
  br label %phy_exit.i

phy_exit.i:                                       ; preds = %while.body.i, %if.end.i221.phy_exit.i_crit_edge
  %i.2.i = phi i32 [ %dec.i, %while.body.i ], [ %i.034.i, %if.end.i221.phy_exit.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.0.i, %while.body.i ], [ %call4.i, %if.end.i221.phy_exit.i_crit_edge ]
  %45 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phys.i, align 8
  %arrayidx12.i = getelementptr ptr, ptr %46, i32 %i.2.i
  %47 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx12.i, align 4
  %call13.i = call i32 @phy_exit(ptr noundef %48) #8
  br label %while.cond.i

tegra_pcie_enable_phy.exit:                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool28.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool28.not, label %tegra_pcie_enable_phy.exit.if.end33_crit_edge, label %do.end32

tegra_pcie_enable_phy.exit.if.end33_crit_edge:    ; preds = %tegra_pcie_enable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end32:                                         ; preds = %tegra_pcie_enable_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.136, i32 noundef %ret.0.i) #11
  br label %fail_phy

if.end33:                                         ; preds = %tegra_pcie_enable_phy.exit.if.end33_crit_edge, %for.inc.i.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 4
  %49 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %50, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #8, !srcloc !415
  %51 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i226 = getelementptr i8, ptr %52, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 -1) #8, !srcloc !415
  %53 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i228 = getelementptr i8, ptr %54, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 -1) #8, !srcloc !415
  %55 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i230 = getelementptr i8, ptr %56, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 -1) #8, !srcloc !415
  %57 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i232 = getelementptr i8, ptr %58, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232, i32 -1) #8, !srcloc !415
  %59 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i234 = getelementptr i8, ptr %60, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234, i32 -1) #8, !srcloc !415
  %61 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i236 = getelementptr i8, ptr %62, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i236, i32 -1) #8, !srcloc !415
  %63 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i238 = getelementptr i8, ptr %64, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238, i32 -1) #8, !srcloc !415
  %65 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i240 = getelementptr i8, ptr %66, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 -1) #8, !srcloc !415
  %67 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i242 = getelementptr i8, ptr %68, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242, i32 -1) #8, !srcloc !415
  %69 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i244 = getelementptr i8, ptr %70, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i244, i32 -1) #8, !srcloc !415
  %71 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i246 = getelementptr i8, ptr %72, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246, i32 -1) #8, !srcloc !415
  %73 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i248 = getelementptr i8, ptr %74, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 -1) #8, !srcloc !415
  %75 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i250 = getelementptr i8, ptr %76, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250, i32 -1) #8, !srcloc !415
  %77 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i252 = getelementptr i8, ptr %78, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i252, i32 -1) #8, !srcloc !415
  %79 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i254 = getelementptr i8, ptr %80, i32 256
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i254) #8, !srcloc !414
  %82 = and i32 %81, -251658241
  %83 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i256 = getelementptr i8, ptr %84, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256, i32 %82) #8, !srcloc !415
  %85 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i258 = getelementptr i8, ptr %86, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 0) #8, !srcloc !415
  %87 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i260 = getelementptr i8, ptr %88, i32 4
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260) #8, !srcloc !414
  %90 = or i32 %89, 1073745920
  %91 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i262 = getelementptr i8, ptr %92, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %90) #8, !srcloc !415
  %93 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i264 = getelementptr i8, ptr %94, i32 272
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264) #8, !srcloc !414
  %96 = or i32 %95, 4980736
  %97 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i266 = getelementptr i8, ptr %98, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266, i32 %96) #8, !srcloc !415
  %99 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %appl_base.i, align 8
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !414
  %102 = or i32 %101, 805306368
  %103 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %appl_base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #8, !srcloc !415
  %dbi_res = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 2
  %105 = ptrtoint ptr %dbi_res to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dbi_res, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %and44 = and i32 %108, -4096
  %109 = call i32 @llvm.bswap.i32(i32 %and44) #8
  %110 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i270 = getelementptr i8, ptr %111, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %109) #8, !srcloc !415
  %atu_dma_res = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 3
  %112 = ptrtoint ptr %atu_dma_res to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %atu_dma_res, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %and46 = and i32 %115, -262144
  %116 = call i32 @llvm.bswap.i32(i32 %and46) #8
  %117 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i272 = getelementptr i8, ptr %118, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 %116) #8, !srcloc !415
  %119 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i274 = getelementptr i8, ptr %120, i32 8
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i274) #8, !srcloc !414
  %122 = or i32 %121, 25165888
  %123 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i276 = getelementptr i8, ptr %124, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 %122) #8, !srcloc !415
  %125 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i278 = getelementptr i8, ptr %126, i32 28
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #8, !srcloc !414
  %128 = or i32 %127, 134217792
  %129 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i280 = getelementptr i8, ptr %130, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %128) #8, !srcloc !415
  %core_rst = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 7
  %131 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %core_rst, align 4
  %call54 = call i32 @reset_control_deassert(ptr noundef %132) #8
  %update_fc_fixup = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 14
  %133 = ptrtoint ptr %update_fc_fixup to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %update_fc_fixup, align 1, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool55.not = icmp eq i8 %134, 0
  br i1 %tobool55.not, label %if.end33.if.end59_crit_edge, label %if.then56

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then56:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call.i281 = call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 1816, i32 noundef 4) #8
  %or58 = or i32 %call.i281, 524288
  call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 1816, i32 noundef 4, i32 noundef %or58) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end33.if.end59_crit_edge
  call fastcc void @config_gen3_gen4_eq_presets(ptr noundef %pcie)
  call fastcc void @init_host_aspm(ptr noundef %pcie)
  %supports_clkreq = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 11
  %135 = ptrtoint ptr %supports_clkreq to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %supports_clkreq, align 8, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool60.not = icmp eq i8 %136, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.if.end62_crit_edge

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %cfg_link_cap_l1sub.i = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 19
  %137 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  %call.i.i = call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %138, i32 noundef 4) #8
  %and.i = and i32 %call.i.i, -9
  %139 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %140, i32 noundef 4, i32 noundef %and.i) #8
  %141 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  %call.i.i284 = call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef %142, i32 noundef 4) #8
  %and.i285 = and i32 %call.i.i284, -5
  %143 = ptrtoint ptr %cfg_link_cap_l1sub.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cfg_link_cap_l1sub.i, align 4
  call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef %144, i32 noundef 4, i32 noundef %and.i285) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59.if.end62_crit_edge
  %call.i286 = call i32 @dw_pcie_read_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4) #8
  %and64 = and i32 %call.i286, -2
  call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2192, i32 noundef 4, i32 noundef %and64) #8
  %call66 = call zeroext i8 @dw_pcie_find_capability(ptr noundef %pci1, i8 noundef zeroext 16) #8
  %conv = zext i8 %call66 to i32
  %pcie_cap_base = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 20
  %145 = ptrtoint ptr %pcie_cap_base to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv, ptr %pcie_cap_base, align 8
  %146 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %core_clk, align 4
  %call68 = call i32 @clk_set_rate(ptr noundef %147, i32 noundef 500000000) #8
  %msi_mem_phys = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 8, i32 8, i32 11
  %148 = ptrtoint ptr %msi_mem_phys to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msi_mem_phys, align 4
  %and69 = and i32 %149, -4
  %or70 = or i32 %and69, 1
  call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2368, i32 noundef 4, i32 noundef %or70) #8
  call void @dw_pcie_write_dbi(ptr noundef %pci1, i32 noundef 2372, i32 noundef 4, i32 noundef 0) #8
  %call74 = call i32 @dw_pcie_ep_init_complete(ptr noundef %ep2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %if.end62
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.210, i32 noundef %call74) #11
  %150 = ptrtoint ptr %core_rst to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %core_rst, align 4
  %call95 = call i32 @reset_control_assert(ptr noundef %151) #8
  %152 = ptrtoint ptr %phy_count.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %phy_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not9.i = icmp eq i32 %153, 0
  br i1 %tobool.not9.i, label %do.end79.fail_phy_crit_edge, label %while.body.lr.ph.i

do.end79.fail_phy_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_phy

while.body.lr.ph.i:                               ; preds = %do.end79
  %phys.i287 = getelementptr inbounds %struct.tegra194_pcie, ptr %pcie, i32 0, i32 28
  br label %while.body.i294

while.body.i294:                                  ; preds = %while.body.i294.while.body.i294_crit_edge, %while.body.lr.ph.i
  %phy_count.010.i = phi i32 [ %153, %while.body.lr.ph.i ], [ %dec.i288, %while.body.i294.while.body.i294_crit_edge ]
  %dec.i288 = add i32 %phy_count.010.i, -1
  %154 = ptrtoint ptr %phys.i287 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %phys.i287, align 8
  %arrayidx.i289 = getelementptr ptr, ptr %155, i32 %dec.i288
  %156 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i289, align 4
  %call.i290 = call i32 @phy_power_off(ptr noundef %157) #8
  %158 = ptrtoint ptr %phys.i287 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %phys.i287, align 8
  %arrayidx3.i291 = getelementptr ptr, ptr %159, i32 %dec.i288
  %160 = ptrtoint ptr %arrayidx3.i291 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx3.i291, align 4
  %call4.i292 = call i32 @phy_exit(ptr noundef %161) #8
  %tobool.not.i293 = icmp eq i32 %dec.i288, 0
  br i1 %tobool.not.i293, label %while.body.i294.fail_phy_crit_edge, label %while.body.i294.while.body.i294_crit_edge

while.body.i294.while.body.i294_crit_edge:        ; preds = %while.body.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i294

while.body.i294.fail_phy_crit_edge:               ; preds = %while.body.i294
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_phy

if.end80:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  call void @dw_pcie_ep_init_notify(ptr noundef %ep2) #8
  %162 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i296 = getelementptr i8, ptr %163, i32 4
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296) #8, !srcloc !414
  %165 = or i32 %164, -2147483648
  %166 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i298 = getelementptr i8, ptr %167, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298, i32 %165) #8, !srcloc !415
  %168 = ptrtoint ptr %ep_state to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %ep_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pex_ep_event_pex_rst_deassert.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pex_ep_event_pex_rst_deassert, %cleanup)) #8
          to label %if.then90 [label %cleanup], !srcloc !416

if.then90:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pex_ep_event_pex_rst_deassert.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.212) #8
  br label %cleanup

fail_phy:                                         ; preds = %while.body.i294.fail_phy_crit_edge, %do.end79.fail_phy_crit_edge, %do.end32
  %169 = ptrtoint ptr %core_apb_rst to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %core_apb_rst, align 8
  %call97 = call i32 @reset_control_assert(ptr noundef %170) #8
  br label %fail_core_apb_rst

fail_core_apb_rst:                                ; preds = %fail_phy, %do.end25
  %171 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %core_clk, align 4
  call void @clk_disable(ptr noundef %172) #8
  call void @clk_unprepare(ptr noundef %172) #8
  br label %fail_core_clk_enable

fail_core_clk_enable:                             ; preds = %fail_core_apb_rst, %do.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp.i299) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i300) #8
  %173 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i300, i32 0, i32 1
  %174 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i300, i32 0, i32 1, i32 1
  %175 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i300, i32 0, i32 2
  %176 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i300, i32 0, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i301) #8
  %177 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i301, i32 0, i32 1
  %178 = getelementptr inbounds %struct.mrq_uphy_request, ptr %req.i301, i32 0, i32 2
  %179 = call ptr @memset(ptr %req.i301, i32 0, i32 24)
  %180 = ptrtoint ptr %resp.i299 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %resp.i299, align 4
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 5, ptr %177, align 2
  %182 = ptrtoint ptr %storemerge.in.in.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %storemerge.in.i303 = load i32, ptr %storemerge.in.in.i, align 8
  %storemerge.i304 = trunc i32 %storemerge.in.i303 to i8
  %183 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %storemerge.i304, ptr %178, align 2
  %184 = getelementptr inbounds i8, ptr %msg.i300, i32 20
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %184, align 4
  %186 = ptrtoint ptr %msg.i300 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 69, ptr %msg.i300, align 4
  %187 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %req.i301, ptr %173, align 4
  %188 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 24, ptr %174, align 4
  %189 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %resp.i299, ptr %175, align 4
  %190 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 4, ptr %176, align 4
  %191 = ptrtoint ptr %bpmp.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bpmp.i, align 8
  %call.i306 = call i32 @tegra_bpmp_transfer(ptr noundef %192, ptr noundef nonnull %msg.i300) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i301) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i300) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp.i299) #8
  br label %fail_pll_init

fail_pll_init:                                    ; preds = %fail_core_clk_enable, %do.end11
  %call.i307 = call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_pll_init, %if.then90, %if.end80, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_init_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_suspend_late(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 2, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !414
  %7 = and i32 %6, -53249
  %8 = or i32 %7, 4096
  %9 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %8) #8, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_resume_early(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.213) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_state, align 2, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %appl_base.i = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !414
  %9 = and i32 %8, -53249
  %10 = or i32 %9, 16384
  %11 = ptrtoint ptr %appl_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %appl_base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %10) #8, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 2, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 8
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %pci, i32 noundef 2088, i32 noundef 4) #8
  %msi_ctrl_int = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %msi_ctrl_int to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %msi_ctrl_int, align 8
  tail call fastcc void @tegra_pcie_downstream_dev_to_D0(ptr noundef %1)
  tail call fastcc void @tegra194_pcie_pme_turnoff(ptr noundef %1)
  tail call fastcc void @tegra_pcie_unconfig_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra194_pcie_resume_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %link_state = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %link_state, align 2, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @tegra_pcie_config_controller(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pci = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 8
  %pp = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 8, i32 7
  %call4 = tail call i32 @tegra194_pcie_host_init(ptr noundef %pp)
  tail call void @dw_pcie_setup_rc(ptr noundef %pp) #8
  %call11 = tail call i32 @tegra194_pcie_start_link(ptr noundef %pci)
  %msi_ctrl_int = getelementptr inbounds %struct.tegra194_pcie, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %msi_ctrl_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi_ctrl_int, align 8
  tail call void @dw_pcie_write_dbi(ptr noundef %pci, i32 noundef 2088, i32 noundef 4, i32 noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 204)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 204)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !83, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !125, !126, !127, !129, !131, !132, !133, !135, !137, !138, !139, !141, !143, !144, !145, !147, !149, !150, !151, !153, !155, !157, !159, !161, !162, !163, !165, !167, !168, !169, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !273, !275, !277, !279, !281, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !344, !345, !346, !347, !349, !351, !352, !353, !354, !356, !357, !358, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !382, !384, !385, !387, !389, !391, !393, !395, !396, !397, !398, !400, !401, !402}
!llvm.module.flags = !{!403, !404, !405, !406, !407, !408, !409, !410}
!llvm.ident = !{!411}

!0 = !{ptr @__initcall__kmod_pcie_tegra194__298_2317_tegra194_pcie_driver_init6, !1, !"__initcall__kmod_pcie_tegra194__298_2317_tegra194_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2317, i32 1}
!2 = !{ptr @__exitcall_tegra194_pcie_driver_exit, !1, !"__exitcall_tegra194_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2321, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2322, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2323, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2312, i32 11}
!12 = !{ptr @tegra194_pcie_driver, !13, !"tegra194_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2307, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1993, i32 23}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1996, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1998, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra194_pcie_probe._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra194_pcie_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2011, i32 3}
!27 = !{ptr @tegra194_pcie_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra194_pcie_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2020, i32 49}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2024, i32 4}
!33 = !{ptr @tegra194_pcie_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra194_pcie_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2029, i32 37}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2031, i32 3}
!39 = !{ptr @tegra194_pcie_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra194_pcie_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2037, i32 13}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2039, i32 3}
!45 = !{ptr @tegra194_pcie_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tegra194_pcie_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2047, i32 51}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2049, i32 3}
!51 = !{ptr @tegra194_pcie_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tegra194_pcie_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2059, i32 32}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2061, i32 4}
!57 = !{ptr @tegra194_pcie_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tegra194_pcie_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2069, i32 5}
!61 = !{ptr @tegra194_pcie_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tegra194_pcie_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2077, i32 10}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2079, i32 3}
!67 = !{ptr @tegra194_pcie_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tegra194_pcie_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2091, i32 3}
!71 = !{ptr @tegra194_pcie_probe._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tegra194_pcie_probe._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2096, i32 42}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2109, i32 25}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2111, i32 4}
!79 = !{ptr @tegra194_pcie_probe._entry.42, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra194_pcie_probe._entry_ptr.44, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2128, i32 7}
!83 = !{ptr @tegra194_pcie_probe._entry.46, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2130, i32 4}
!85 = !{ptr @tegra194_pcie_probe._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2141, i32 3}
!88 = !{ptr @tegra194_pcie_probe._entry.48, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tegra194_pcie_probe._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @tegra_dw_pcie_ops, !91, !"tegra_dw_pcie_ops", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1016, i32 33}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 970, i32 3}
!94 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tegra194_pcie_start_link._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @tegra194_pcie_start_link._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 971, i32 3}
!100 = !{ptr @tegra194_pcie_start_link._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tegra194_pcie_start_link._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @tegra_pci_ops, !103, !"tegra_pci_ops", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 572, i32 23}
!104 = !{ptr @event_cntr_ctrl_offset, !105, !"event_cntr_ctrl_offset", i1 false, i1 false}
!105 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 579, i32 18}
!106 = !{ptr @pcie_gen_freq, !107, !"pcie_gen_freq", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 241, i32 27}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1069, i32 69}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1071, i32 3}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tegra194_pcie_parse_dt._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @tegra194_pcie_parse_dt._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1075, i32 33}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1077, i32 3}
!119 = !{ptr @tegra194_pcie_parse_dt._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1081, i32 33}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1084, i32 3}
!125 = !{ptr @tegra194_pcie_parse_dt._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1087, i32 33}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1090, i32 3}
!131 = !{ptr @tegra194_pcie_parse_dt._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1093, i32 33}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1095, i32 3}
!137 = !{ptr @tegra194_pcie_parse_dt._entry.73, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.75, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1099, i32 39}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1101, i32 3}
!143 = !{ptr @tegra194_pcie_parse_dt._entry.77, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.79, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1105, i32 38}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1107, i32 3}
!149 = !{ptr @tegra194_pcie_parse_dt._entry.81, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.83, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1113, i32 32}
!153 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1117, i32 45}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1120, i32 29}
!157 = !{ptr @.str.87, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1126, i32 50}
!159 = !{ptr @.str.89, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1134, i32 3}
!161 = !{ptr @tegra194_pcie_parse_dt._entry.88, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.90, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1141, i32 11}
!165 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1150, i32 3}
!167 = !{ptr @tegra194_pcie_parse_dt._entry.92, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @tegra194_pcie_parse_dt._entry_ptr.94, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1255, i32 62}
!171 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1263, i32 62}
!173 = !{ptr @.str.97, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 394, i32 4}
!175 = !{ptr @.str.98, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @tegra_pcie_rp_irq_handler.__UNIQUE_ID_ddebug293, !174, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!178 = !{ptr @.str.100, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 404, i32 4}
!180 = !{ptr @tegra_pcie_rp_irq_handler._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tegra_pcie_rp_irq_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 408, i32 4}
!184 = !{ptr @tegra_pcie_rp_irq_handler._entry.101, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tegra_pcie_rp_irq_handler._entry_ptr.103, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.105, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 412, i32 4}
!188 = !{ptr @tegra_pcie_rp_irq_handler._entry.104, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tegra_pcie_rp_irq_handler._entry_ptr.106, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 417, i32 3}
!192 = !{ptr @tegra_pcie_rp_irq_handler._entry.107, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tegra_pcie_rp_irq_handler._entry_ptr.109, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.110, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 333, i32 4}
!196 = !{ptr @.str.111, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @apply_bad_link_workaround._entry, !195, !"_entry", i1 false, i1 false}
!199 = !{ptr @apply_bad_link_workaround._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.113, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1566, i32 3}
!202 = !{ptr @.str.114, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @tegra_pcie_config_rp._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @tegra_pcie_config_rp._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.116, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1573, i32 3}
!207 = !{ptr @tegra_pcie_config_rp._entry.115, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @tegra_pcie_config_rp._entry_ptr.117, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1579, i32 3}
!211 = !{ptr @tegra_pcie_config_rp._entry.118, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @tegra_pcie_config_rp._entry_ptr.120, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1589, i32 41}
!215 = !{ptr @.str.122, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1459, i32 3}
!217 = !{ptr @.str.123, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @tegra_pcie_init_controller._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @tegra_pcie_init_controller._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.124, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1328, i32 3}
!222 = !{ptr @.str.125, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @tegra_pcie_config_controller._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @tegra_pcie_config_controller._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1339, i32 3}
!227 = !{ptr @tegra_pcie_config_controller._entry.126, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @tegra_pcie_config_controller._entry_ptr.128, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.130, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1345, i32 3}
!231 = !{ptr @tegra_pcie_config_controller._entry.129, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @tegra_pcie_config_controller._entry_ptr.131, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.133, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1351, i32 3}
!235 = !{ptr @tegra_pcie_config_controller._entry.132, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @tegra_pcie_config_controller._entry_ptr.134, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.136, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1367, i32 3}
!239 = !{ptr @tegra_pcie_config_controller._entry.135, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @tegra_pcie_config_controller._entry_ptr.137, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.138, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1281, i32 4}
!243 = !{ptr @.str.139, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @tegra_pcie_enable_slot_regulators._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @tegra_pcie_enable_slot_regulators._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.141, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1290, i32 4}
!248 = !{ptr @tegra_pcie_enable_slot_regulators._entry.140, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @tegra_pcie_enable_slot_regulators._entry_ptr.142, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @tegra194_pcie_host_ops, !251, !"tegra194_pcie_host_ops", i1 false, i1 false}
!251 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1022, i32 38}
!252 = !{ptr @.str.143, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1423, i32 3}
!254 = !{ptr @.str.144, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @tegra_pcie_unconfig_controller._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @tegra_pcie_unconfig_controller._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.146, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1429, i32 3}
!259 = !{ptr @tegra_pcie_unconfig_controller._entry.145, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @tegra_pcie_unconfig_controller._entry_ptr.147, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.149, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1435, i32 3}
!263 = !{ptr @tegra_pcie_unconfig_controller._entry.148, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @tegra_pcie_unconfig_controller._entry_ptr.150, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.152, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1441, i32 3}
!267 = !{ptr @tegra_pcie_unconfig_controller._entry.151, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @tegra_pcie_unconfig_controller._entry_ptr.153, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.154, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 693, i32 41}
!271 = !{ptr @.str.155, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 636, i32 16}
!273 = !{ptr @.str.156, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 639, i32 16}
!275 = !{ptr @.str.157, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 642, i32 16}
!277 = !{ptr @.str.158, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 645, i32 16}
!279 = !{ptr @.str.159, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 648, i32 16}
!281 = !{ptr @event_cntr_data_offset, !282, !"event_cntr_data_offset", i1 false, i1 false}
!282 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 588, i32 18}
!283 = !{ptr @.str.160, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1239, i32 3}
!285 = !{ptr @.str.161, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @tegra_pcie_downstream_dev_to_D0._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @tegra_pcie_downstream_dev_to_D0._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.163, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1246, i32 5}
!290 = !{ptr @tegra_pcie_downstream_dev_to_D0._entry.162, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @tegra_pcie_downstream_dev_to_D0._entry_ptr.164, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.165, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1492, i32 3}
!294 = !{ptr @.str.166, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @tegra194_pcie_pme_turnoff.__UNIQUE_ID_ddebug295, !293, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!296 = !{ptr @.str.167, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1507, i32 3}
!298 = !{ptr @tegra194_pcie_pme_turnoff._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @tegra194_pcie_pme_turnoff._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.169, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1534, i32 4}
!302 = !{ptr @tegra194_pcie_pme_turnoff._entry.168, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @tegra194_pcie_pme_turnoff._entry_ptr.170, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.171, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 513, i32 5}
!306 = !{ptr @.str.172, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @tegra_pcie_ep_hard_irq.__UNIQUE_ID_ddebug294, !305, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!308 = !{ptr @.str.173, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 532, i32 3}
!310 = !{ptr @tegra_pcie_ep_hard_irq._entry, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @tegra_pcie_ep_hard_irq._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.174, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 489, i32 4}
!314 = !{ptr @.str.175, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @tegra_pcie_ep_irq_thread._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @tegra_pcie_ep_irq_thread._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.176, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1915, i32 3}
!319 = !{ptr @.str.177, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @tegra_pcie_config_ep._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @tegra_pcie_config_ep._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.179, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1922, i32 3}
!324 = !{ptr @tegra_pcie_config_ep._entry.178, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @tegra_pcie_config_ep._entry_ptr.180, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.181, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1927, i32 41}
!328 = !{ptr @.str.183, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1930, i32 3}
!330 = !{ptr @tegra_pcie_config_ep._entry.182, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @tegra_pcie_config_ep._entry_ptr.184, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.186, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1944, i32 3}
!334 = !{ptr @tegra_pcie_config_ep._entry.185, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @tegra_pcie_config_ep._entry_ptr.187, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.189, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1952, i32 3}
!338 = !{ptr @tegra_pcie_config_ep._entry.188, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @tegra_pcie_config_ep._entry_ptr.190, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @pcie_ep_ops, !341, !"pcie_ep_ops", i1 false, i1 false}
!341 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1894, i32 36}
!342 = !{ptr @.str.191, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1871, i32 3}
!344 = !{ptr @.str.192, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @tegra_pcie_ep_raise_irq._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @tegra_pcie_ep_raise_irq._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @tegra_pcie_epc_features, !348, !"tegra_pcie_epc_features", i1 false, i1 false}
!348 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1878, i32 38}
!349 = !{ptr @.str.193, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1627, i32 3}
!351 = !{ptr @.str.194, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @pex_ep_event_pex_rst_assert._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @pex_ep_event_pex_rst_assert._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.196, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1641, i32 3}
!356 = !{ptr @pex_ep_event_pex_rst_assert._entry.195, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @pex_ep_event_pex_rst_assert._entry_ptr.197, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.198, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1644, i32 2}
!360 = !{ptr @pex_ep_event_pex_rst_assert.__UNIQUE_ID_ddebug296, !359, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!361 = !{ptr @.str.199, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1660, i32 3}
!363 = !{ptr @pex_ep_event_pex_rst_deassert._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @pex_ep_event_pex_rst_deassert._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.201, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1667, i32 3}
!367 = !{ptr @pex_ep_event_pex_rst_deassert._entry.200, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @pex_ep_event_pex_rst_deassert._entry_ptr.202, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @pex_ep_event_pex_rst_deassert._entry.203, !370, !"_entry", i1 false, i1 false}
!370 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1673, i32 3}
!371 = !{ptr @pex_ep_event_pex_rst_deassert._entry_ptr.204, !370, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @pex_ep_event_pex_rst_deassert._entry.205, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1679, i32 3}
!374 = !{ptr @pex_ep_event_pex_rst_deassert._entry_ptr.206, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @pex_ep_event_pex_rst_deassert._entry.207, !376, !"_entry", i1 false, i1 false}
!376 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1685, i32 3}
!377 = !{ptr @pex_ep_event_pex_rst_deassert._entry_ptr.208, !376, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.210, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1781, i32 3}
!380 = !{ptr @pex_ep_event_pex_rst_deassert._entry.209, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @pex_ep_event_pex_rst_deassert._entry_ptr.211, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.212, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 1793, i32 2}
!384 = !{ptr @pex_ep_event_pex_rst_deassert.__UNIQUE_ID_ddebug297, !383, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!385 = !{ptr @tegra194_pcie_of_match, !386, !"tegra194_pcie_of_match", i1 false, i1 false}
!386 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2288, i32 34}
!387 = !{ptr @tegra194_pcie_rc_of_data, !388, !"tegra194_pcie_rc_of_data", i1 false, i1 false}
!388 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2280, i32 43}
!389 = !{ptr @tegra194_pcie_ep_of_data, !390, !"tegra194_pcie_ep_of_data", i1 false, i1 false}
!390 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2284, i32 43}
!391 = !{ptr @tegra194_pcie_pm_ops, !392, !"tegra194_pcie_pm_ops", i1 false, i1 false}
!392 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2300, i32 32}
!393 = !{ptr @.str.213, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2243, i32 3}
!395 = !{ptr @.str.214, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @tegra194_pcie_resume_early._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @tegra194_pcie_resume_early._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.215, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/pci/controller/dwc/pcie-tegra194.c", i32 2216, i32 3}
!400 = !{ptr @.str.216, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @tegra194_pcie_resume_noirq._entry, !399, !"_entry", i1 false, i1 false}
!402 = !{ptr @tegra194_pcie_resume_noirq._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!403 = !{i32 1, !"wchar_size", i32 2}
!404 = !{i32 1, !"min_enum_size", i32 4}
!405 = !{i32 8, !"branch-target-enforcement", i32 0}
!406 = !{i32 8, !"sign-return-address", i32 0}
!407 = !{i32 8, !"sign-return-address-all", i32 0}
!408 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!409 = !{i32 7, !"uwtable", i32 1}
!410 = !{i32 7, !"frame-pointer", i32 2}
!411 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!412 = !{!"branch_weights", i32 1, i32 2000}
!413 = !{i8 0, i8 2}
!414 = !{i64 5720960}
!415 = !{i64 5720542}
!416 = !{i64 2148784230, i64 2148784235, i64 2148784248, i64 2148784292, i64 2148784326, i64 2148784347}
!417 = !{i64 2156096967}
!418 = !{i64 2156097473}
!419 = !{i64 2156102681}
!420 = !{i64 2156102986}
!421 = !{i64 2156106966}
!422 = !{i64 2156107472}
!423 = !{i64 2156143254}
!424 = !{i64 2156119112}
!425 = !{i64 2156119618}
!426 = !{i64 2148301834}
!427 = !{i64 786657, i64 786682, i64 786704, i64 786720, i64 786732, i64 786752, i64 786776, i64 786792, i64 786804}
!428 = !{i64 2148302022}
