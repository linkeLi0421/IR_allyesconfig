; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-xilinx-nwl.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-xilinx-nwl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.nwl_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.nwl_msi, ptr, ptr, %struct.raw_spinlock }
%struct.nwl_msi = type { ptr, [2 x i32], ptr, %struct.mutex, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_pcie_xilinx_nwl__236_849_nwl_pcie_driver_init6 = internal global ptr @nwl_pcie_driver_init, section ".initcall6.init", align 4
@nwl_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nwl_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @nwl_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nwl-pcie\00", [23 x i8] zeroinitializer }, align 32
@nwl_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,nwl-pcie-2.11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Parsing DT failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nwl_pcie_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pci/controller/pcie-xilinx-nwl.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry_ptr = internal global ptr @nwl_pcie_probe._entry, section ".printk_index", align 4
@nwl_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't enable PCIe ref clock\0A\00", [35 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry_ptr.8 = internal global ptr @nwl_pcie_probe._entry.6, section ".printk_index", align 4
@nwl_pcie_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HW Initialization failed\0A\00", [38 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry_ptr.11 = internal global ptr @nwl_pcie_probe._entry.9, section ".printk_index", align 4
@nwl_pcie_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 823, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed creating IRQ Domain\0A\00", [36 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry_ptr.14 = internal global ptr @nwl_pcie_probe._entry.12, section ".printk_index", align 4
@nwl_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @nwl_pcie_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable MSI support: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nwl_pcie_probe._entry_ptr.17 = internal global ptr @nwl_pcie_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"breg\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcireg\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intx\00", [27 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BREG is not present\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nwl_pcie_bridge_init\00", [43 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry_ptr = internal global ptr @nwl_pcie_bridge_init._entry, section ".printk_index", align 4
@nwl_pcie_bridge_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECAM is not present\0A\00", [43 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry_ptr.26 = internal global ptr @nwl_pcie_bridge_init._entry.24, section ".printk_index", align 4
@nwl_pcie_bridge_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 697, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Link is UP\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry_ptr.30 = internal global ptr @nwl_pcie_bridge_init._entry.27, section ".printk_index", align 4
@nwl_pcie_bridge_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.3, i32 699, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is DOWN\0A\00", [18 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry_ptr.33 = internal global ptr @nwl_pcie_bridge_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nwl_pcie:misc\00", [18 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail to register misc IRQ#%d\0A\00", [34 x i8] zeroinitializer }, align 32
@nwl_pcie_bridge_init._entry_ptr.38 = internal global ptr @nwl_pcie_bridge_init._entry.36, section ".printk_index", align 4
@nwl_wait_for_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PHY link never came up\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nwl_wait_for_link\00", [46 x i8] zeroinitializer }, align 32
@nwl_wait_for_link._entry_ptr = internal global ptr @nwl_wait_for_link._entry, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Received Message FIFO Overflow\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nwl_pcie_misc_handler\00", [42 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr = internal global ptr @nwl_pcie_misc_handler._entry, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Slave error\0A\00", [19 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.45 = internal global ptr @nwl_pcie_misc_handler._entry.43, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master error\0A\00", [18 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.48 = internal global ptr @nwl_pcie_misc_handler._entry.46, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"In Misc Ingress address translation error\0A\00", [53 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.51 = internal global ptr @nwl_pcie_misc_handler._entry.49, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"In Misc Egress address translation error\0A\00", [54 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.54 = internal global ptr @nwl_pcie_misc_handler._entry.52, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fatal Error in AER Capability\0A\00", [33 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.57 = internal global ptr @nwl_pcie_misc_handler._entry.55, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.42, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Non-Fatal Error in AER Capability\0A\00", [61 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.60 = internal global ptr @nwl_pcie_misc_handler._entry.58, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.42, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Correctable Error in AER Capability\0A\00", [59 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.63 = internal global ptr @nwl_pcie_misc_handler._entry.61, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.42, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported request Detected\0A\00", [34 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.66 = internal global ptr @nwl_pcie_misc_handler._entry.64, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.42, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Non-Fatal Error Detected\0A\00", [38 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.69 = internal global ptr @nwl_pcie_misc_handler._entry.67, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.42, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fatal Error Detected\0A\00", [42 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.72 = internal global ptr @nwl_pcie_misc_handler._entry.70, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.42, ptr @.str.3, i32 306, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Link Autonomous Bandwidth Management Status bit set\0A\00", [43 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.75 = internal global ptr @nwl_pcie_misc_handler._entry.73, section ".printk_index", align 4
@nwl_pcie_misc_handler._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.42, ptr @.str.3, i32 309, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Link Bandwidth Management Status bit set\0A\00", [54 x i8] zeroinitializer }, align 32
@nwl_pcie_misc_handler._entry_ptr.78 = internal global ptr @nwl_pcie_misc_handler._entry.76, section ".printk_index", align 4
@nwl_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No legacy intc node found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nwl_pcie_init_irq_domain\00", [39 x i8] zeroinitializer }, align 32
@nwl_pcie_init_irq_domain._entry_ptr = internal global ptr @nwl_pcie_init_irq_domain._entry, section ".printk_index", align 4
@legacy_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @nwl_legacy_map, ptr null, ptr @pci_irqd_intx_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@nwl_pcie_init_irq_domain._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@nwl_pcie_init_irq_domain._entry_ptr.83 = internal global ptr @nwl_pcie_init_irq_domain._entry.81, section ".printk_index", align 4
@nwl_pcie_init_irq_domain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&pcie->leg_mask_lock\00", [43 x i8] zeroinitializer }, align 32
@nwl_leg_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.85, ptr null, ptr null, ptr @nwl_unmask_leg_irq, ptr @nwl_mask_leg_irq, ptr null, ptr @nwl_mask_leg_irq, ptr null, ptr @nwl_unmask_leg_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nwl_pcie:legacy\00", [16 x i8] zeroinitializer }, align 32
@dev_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nwl_irq_domain_alloc, ptr @nwl_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@nwl_pcie_init_msi_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create dev IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nwl_pcie_init_msi_irq_domain\00", [35 x i8] zeroinitializer }, align 32
@nwl_pcie_init_msi_irq_domain._entry_ptr = internal global ptr @nwl_pcie_init_msi_irq_domain._entry, section ".printk_index", align 4
@nwl_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 7, ptr null, ptr @nwl_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nwl_pcie_init_msi_irq_domain._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.3, i32 519, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create msi IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@nwl_pcie_init_msi_irq_domain._entry_ptr.90 = internal global ptr @nwl_pcie_init_msi_irq_domain._entry.88, section ".printk_index", align 4
@nwl_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.91, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nwl_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nwl_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Xilinx MSI\00", [21 x i8] zeroinitializer }, align 32
@nwl_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.92, ptr null, ptr null, ptr @pci_msi_unmask_irq, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nwl_pcie:msi\00", [19 x i8] zeroinitializer }, align 32
@nwl_pcie_enable_msi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&msi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msi1\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msi0\00", [27 x i8] zeroinitializer }, align 32
@nwl_pcie_enable_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MSI not present\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nwl_pcie_enable_msi\00", [44 x i8] zeroinitializer }, align 32
@nwl_pcie_enable_msi._entry_ptr = internal global ptr @nwl_pcie_enable_msi._entry, section ".printk_index", align 4
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"nwl_pcie_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 841, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 843, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"nwl_pcie_of_match\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 778, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 801, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 811, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 817, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 823, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"nwl_pcie_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 254, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 833, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 749, i32 59 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 755, i32 59 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 761, i32 59 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 768, i32 49 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 634, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 670, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 697, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 699, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 702, i32 49 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 708, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 710, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 213, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 273, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 276, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 279, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 282, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 285, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 288, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 291, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 294, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 297, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 300, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 303, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 306, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 309, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 535, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [18 x i8] c"legacy_domain_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 416, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 545, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 549, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"nwl_leg_irq_chip\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 398, i32 24 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 399, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant [19 x i8] c"dev_msi_domain_ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 497, i32 36 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 512, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c"nwl_msi_domain_info\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 430, i32 31 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 519, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [13 x i8] c"nwl_irq_chip\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 453, i32 24 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 454, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"nwl_msi_irq_chip\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 422, i32 24 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 423, i32 10 }
@___asan_gen_.359 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 562, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 565, i32 48 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 573, i32 48 }
@___asan_gen_.371 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [44 x i8] c"../drivers/pci/controller/pcie-xilinx-nwl.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 583, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__initcall__kmod_pcie_xilinx_nwl__236_849_nwl_pcie_driver_init6, ptr @nwl_pcie_bridge_init._entry, ptr @nwl_pcie_bridge_init._entry.24, ptr @nwl_pcie_bridge_init._entry.27, ptr @nwl_pcie_bridge_init._entry.31, ptr @nwl_pcie_bridge_init._entry.36, ptr @nwl_pcie_bridge_init._entry_ptr, ptr @nwl_pcie_bridge_init._entry_ptr.26, ptr @nwl_pcie_bridge_init._entry_ptr.30, ptr @nwl_pcie_bridge_init._entry_ptr.33, ptr @nwl_pcie_bridge_init._entry_ptr.38, ptr @nwl_pcie_enable_msi._entry, ptr @nwl_pcie_enable_msi._entry_ptr, ptr @nwl_pcie_init_irq_domain._entry, ptr @nwl_pcie_init_irq_domain._entry.81, ptr @nwl_pcie_init_irq_domain._entry_ptr, ptr @nwl_pcie_init_irq_domain._entry_ptr.83, ptr @nwl_pcie_init_msi_irq_domain._entry, ptr @nwl_pcie_init_msi_irq_domain._entry.88, ptr @nwl_pcie_init_msi_irq_domain._entry_ptr, ptr @nwl_pcie_init_msi_irq_domain._entry_ptr.90, ptr @nwl_pcie_misc_handler._entry, ptr @nwl_pcie_misc_handler._entry.43, ptr @nwl_pcie_misc_handler._entry.46, ptr @nwl_pcie_misc_handler._entry.49, ptr @nwl_pcie_misc_handler._entry.52, ptr @nwl_pcie_misc_handler._entry.55, ptr @nwl_pcie_misc_handler._entry.58, ptr @nwl_pcie_misc_handler._entry.61, ptr @nwl_pcie_misc_handler._entry.64, ptr @nwl_pcie_misc_handler._entry.67, ptr @nwl_pcie_misc_handler._entry.70, ptr @nwl_pcie_misc_handler._entry.73, ptr @nwl_pcie_misc_handler._entry.76, ptr @nwl_pcie_misc_handler._entry_ptr, ptr @nwl_pcie_misc_handler._entry_ptr.45, ptr @nwl_pcie_misc_handler._entry_ptr.48, ptr @nwl_pcie_misc_handler._entry_ptr.51, ptr @nwl_pcie_misc_handler._entry_ptr.54, ptr @nwl_pcie_misc_handler._entry_ptr.57, ptr @nwl_pcie_misc_handler._entry_ptr.60, ptr @nwl_pcie_misc_handler._entry_ptr.63, ptr @nwl_pcie_misc_handler._entry_ptr.66, ptr @nwl_pcie_misc_handler._entry_ptr.69, ptr @nwl_pcie_misc_handler._entry_ptr.72, ptr @nwl_pcie_misc_handler._entry_ptr.75, ptr @nwl_pcie_misc_handler._entry_ptr.78, ptr @nwl_pcie_probe._entry, ptr @nwl_pcie_probe._entry.12, ptr @nwl_pcie_probe._entry.15, ptr @nwl_pcie_probe._entry.6, ptr @nwl_pcie_probe._entry.9, ptr @nwl_pcie_probe._entry_ptr, ptr @nwl_pcie_probe._entry_ptr.11, ptr @nwl_pcie_probe._entry_ptr.14, ptr @nwl_pcie_probe._entry_ptr.17, ptr @nwl_pcie_probe._entry_ptr.8, ptr @nwl_wait_for_link._entry, ptr @nwl_wait_for_link._entry_ptr, ptr @nwl_pcie_driver, ptr @.str, ptr @nwl_pcie_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @nwl_pcie_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @legacy_domain_ops, ptr @.str.82, ptr @nwl_pcie_init_irq_domain.__key, ptr @.str.84, ptr @nwl_leg_irq_chip, ptr @.str.85, ptr @dev_msi_domain_ops, ptr @.str.86, ptr @.str.87, ptr @nwl_msi_domain_info, ptr @.str.89, ptr @nwl_irq_chip, ptr @.str.91, ptr @nwl_msi_irq_chip, ptr @.str.92, ptr @nwl_pcie_enable_msi.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_bridge_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_bridge_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_bridge_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_bridge_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_bridge_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_wait_for_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_misc_handler._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_init_irq_domain._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_init_irq_domain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_leg_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_init_msi_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_init_msi_irq_domain._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_enable_msi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nwl_pcie_enable_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nwl_pcie_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 224) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %private.i, align 4
  %ecam_value = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3
  %1 = ptrtoint ptr %ecam_value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %ecam_value, align 4
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.18) #9
  %call2.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call.i) #9
  %breg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2.i, ptr %breg_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.nwl_pcie_parse_dt.exit_crit_edge, label %if.end.i

if.end.nwl_pcie_parse_dt.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nwl_pcie_parse_dt.exit

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  %phys_breg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %phys_breg_base.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %phys_breg_base.i, align 4
  %call7.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.19) #9
  %call8.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7.i) #9
  %pcireg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i, ptr %pcireg_base.i, align 4
  %cmp.i59.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59.i, label %if.end.i.nwl_pcie_parse_dt.exit_crit_edge, label %if.end14.i

if.end.i.nwl_pcie_parse_dt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nwl_pcie_parse_dt.exit

if.end14.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call7.i, align 4
  %phys_pcie_reg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %phys_pcie_reg_base.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %phys_pcie_reg_base.i, align 4
  %call16.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.20) #9
  %call17.i = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef %call16.i) #9
  %ecam_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %ecam_base.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17.i, ptr %ecam_base.i, align 4
  %cmp.i60.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %if.end14.i.nwl_pcie_parse_dt.exit_crit_edge, label %if.end23.i

if.end14.i.nwl_pcie_parse_dt.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nwl_pcie_parse_dt.exit

if.end23.i:                                       ; preds = %if.end14.i
  %11 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call16.i, align 4
  %phys_ecam_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %13 = ptrtoint ptr %phys_ecam_base.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %phys_ecam_base.i, align 4
  %call25.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.21) #9
  %irq_intx.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %irq_intx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call25.i, ptr %irq_intx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp.i = icmp slt i32 %call25.i, 0
  br i1 %cmp.i, label %if.end23.i.do.end_crit_edge, label %nwl_pcie_parse_dt.exit.thread

if.end23.i.do.end_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

nwl_pcie_parse_dt.exit.thread:                    ; preds = %if.end23.i
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call25.i, ptr noundef nonnull @nwl_pcie_leg_handler, ptr noundef %private.i) #9
  %call8 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 1
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8, ptr %clk, align 4
  %cmp.i79 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then11, label %if.end14

nwl_pcie_parse_dt.exit:                           ; preds = %if.end14.i.nwl_pcie_parse_dt.exit_crit_edge, %if.end.i.nwl_pcie_parse_dt.exit_crit_edge, %if.end.nwl_pcie_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call2.i, %if.end.nwl_pcie_parse_dt.exit_crit_edge ], [ %call8.i, %if.end.i.nwl_pcie_parse_dt.exit_crit_edge ], [ %call17.i, %if.end14.i.nwl_pcie_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %do.end

do.end:                                           ; preds = %nwl_pcie_parse_dt.exit, %if.end23.i.do.end_crit_edge
  %retval.0.i112 = phi i32 [ %retval.0.i, %nwl_pcie_parse_dt.exit ], [ %call25.i, %if.end23.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.then11:                                        ; preds = %nwl_pcie_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %nwl_pcie_parse_dt.exit.thread
  %call.i80 = tail call i32 @clk_prepare(ptr noundef %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i81, label %if.end14.do.end21_crit_edge

if.end14.do.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.end.i81:                                       ; preds = %if.end14
  %call1.i = tail call i32 @clk_enable(ptr noundef %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end22, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call8) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then3.i, %if.end14.do.end21_crit_edge
  %retval.0.i82.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i80, %if.end14.do.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end.i81
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 -16
  %19 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 512
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i83 = icmp eq i32 %22, 0
  br i1 %tobool.not.i83, label %do.end.i, label %if.end.i85

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22) #12
  br label %if.end29

if.end.i85:                                       ; preds = %if.end22
  %23 = ptrtoint ptr %phys_breg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys_breg_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %27, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %25) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %29, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 0) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %31, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 16777216) #9, !srcloc !189
  %32 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %breg_base.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %35 = or i32 %34, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %breg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %39, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 16777216) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 234881024) #9, !srcloc !189
  %of_node.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %42 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i, align 8
  %call6.i = tail call zeroext i1 @of_dma_is_coherent(ptr noundef %43) #9
  br i1 %call6.i, label %if.then7.i, label %if.end.i85.if.end10.i_crit_edge

if.end.i85.if.end10.i_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %47 = or i32 %46, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %47) #9, !srcloc !189
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i85.if.end10.i_crit_edge
  %50 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private.i, align 4
  %52 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 568
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %55 = and i32 %54, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.not.i.i, label %if.end.i.i, label %if.end10.i.if.end14.i86_crit_edge

if.end10.i.if.end14.i86_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.i.i:                                       ; preds = %if.end10.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %56 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %57, i32 568
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %59 = and i32 %58, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.not.1.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i.if.end14.i86_crit_edge

if.end.i.i.if.end14.i86_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.1.i.i:                                     ; preds = %if.end.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %60 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %61, i32 568
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %63 = and i32 %62, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.not.2.i.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.if.end14.i86_crit_edge

if.end.1.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %64 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %65, i32 568
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %67 = and i32 %66, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.not.3.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.if.end14.i86_crit_edge

if.end.2.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %68 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.4.i.i = getelementptr i8, ptr %69, i32 568
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %71 = and i32 %70, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.not.4.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.not.4.i.i, label %if.end.4.i.i, label %if.end.3.i.i.if.end14.i86_crit_edge

if.end.3.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %72 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.5.i.i = getelementptr i8, ptr %73, i32 568
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %75 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.not.5.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i.not.5.i.i, label %if.end.5.i.i, label %if.end.4.i.i.if.end14.i86_crit_edge

if.end.4.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %76 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.6.i.i = getelementptr i8, ptr %77, i32 568
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %79 = and i32 %78, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.not.6.i.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i.not.6.i.i, label %if.end.6.i.i, label %if.end.5.i.i.if.end14.i86_crit_edge

if.end.5.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %80 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.7.i.i = getelementptr i8, ptr %81, i32 568
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %83 = and i32 %82, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i.not.7.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i.not.7.i.i, label %if.end.7.i.i, label %if.end.6.i.i.if.end14.i86_crit_edge

if.end.6.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %84 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.8.i.i = getelementptr i8, ptr %85, i32 568
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %87 = and i32 %86, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.not.8.i.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i.not.8.i.i, label %if.end.8.i.i, label %if.end.7.i.i.if.end14.i86_crit_edge

if.end.7.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  %88 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i.9.i.i = getelementptr i8, ptr %89, i32 568
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %91 = and i32 %90, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.not.9.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i.not.9.i.i, label %nwl_wait_for_link.exit.i, label %if.end.8.i.i.if.end14.i86_crit_edge

if.end.8.i.i.if.end14.i86_crit_edge:              ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i86

nwl_wait_for_link.exit.i:                         ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 90000, i32 noundef 100000, i32 noundef 2) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.39) #12
  br label %do.end28

if.end14.i86:                                     ; preds = %if.end.8.i.i.if.end14.i86_crit_edge, %if.end.7.i.i.if.end14.i86_crit_edge, %if.end.6.i.i.if.end14.i86_crit_edge, %if.end.5.i.i.if.end14.i86_crit_edge, %if.end.4.i.i.if.end14.i86_crit_edge, %if.end.3.i.i.if.end14.i86_crit_edge, %if.end.2.i.i.if.end14.i86_crit_edge, %if.end.1.i.i.if.end14.i86_crit_edge, %if.end.i.i.if.end14.i86_crit_edge, %if.end10.i.if.end14.i86_crit_edge
  %92 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %93, i32 544
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i155.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %95 = and i32 %94, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool17.not.i = icmp eq i32 %95, 0
  br i1 %tobool17.not.i, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end14.i86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.25) #12
  br label %if.end29

if.end22.i:                                       ; preds = %if.end14.i86
  %96 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %97, i32 552
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %99 = or i32 %98, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %101, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %99) #9, !srcloc !189
  %102 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i161.i = getelementptr i8, ptr %103, i32 552
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161.i) #9, !srcloc !186
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %106 = ptrtoint ptr %ecam_value to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ecam_value, align 4
  %shl.i = shl i32 %107, 16
  %or26.i = or i32 %shl.i, %105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %108 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #9
  %109 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %110, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 %108) #9, !srcloc !189
  %111 = ptrtoint ptr %phys_ecam_base.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %phys_ecam_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #9
  %114 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %115, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 %113) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %117, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167.i, i32 0) #9, !srcloc !189
  %118 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i169.i = getelementptr i8, ptr %119, i32 552
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %121 = lshr i32 %120, 8
  %122 = trunc i32 %121 to i8
  %conv.i = and i8 %122, 31
  %last_busno.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1
  %123 = ptrtoint ptr %last_busno.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.i, ptr %last_busno.i, align 4
  %conv37.i = zext i8 %conv.i to i32
  %shl38.i = shl nuw nsw i32 %conv37.i, 16
  %or39.i = or i32 %shl38.i, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %124 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #9
  %125 = ptrtoint ptr %ecam_base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ecam_base.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %126, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %124) #9, !srcloc !189
  %127 = ptrtoint ptr %pcireg_base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcireg_base.i, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %128, i32 568
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %130 = and i32 %129, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i.not.i = icmp eq i32 %130, 0
  %.str.32..str.28.i = select i1 %tobool.not.i.not.i, ptr @.str.32, ptr @.str.28
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull %.str.32..str.28.i) #12
  %call53.i = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.34) #9
  %irq_misc.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 2
  %131 = ptrtoint ptr %irq_misc.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call53.i, ptr %irq_misc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp.i89 = icmp slt i32 %call53.i, 0
  br i1 %cmp.i89, label %if.end22.i.do.end28_crit_edge, label %if.end57.i

if.end22.i.do.end28_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

if.end57.i:                                       ; preds = %if.end22.i
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %call53.i, ptr noundef nonnull @nwl_pcie_misc_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.35, ptr noundef %private.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool60.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool60.not.i, label %if.end66.i, label %do.end64.i

do.end64.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %irq_misc.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %irq_misc.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.37, i32 noundef %133) #12
  br label %do.end28

if.end66.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %135, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 218048760) #9, !srcloc !189
  %136 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %137, i32 1024
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %139 = and i32 %138, -218048761
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %141, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 %139) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %142 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %143, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 -218048761) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %144 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %145, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 -251658241) #9, !srcloc !189
  %146 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %147, i32 1056
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %and70.i = and i32 %148, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %149 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %150, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %and70.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %151 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %152, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 251658240) #9, !srcloc !189
  %153 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %154, i32 16
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %156 = or i32 %155, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %157 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %158, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %156) #9, !srcloc !189
  br label %if.end29

do.end28:                                         ; preds = %do.end64.i, %if.end22.i.do.end28_crit_edge, %nwl_wait_for_link.exit.i
  %retval.0.i90 = phi i32 [ %call.i.i, %do.end64.i ], [ -110, %nwl_wait_for_link.exit.i ], [ -22, %if.end22.i.do.end28_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end66.i, %do.end21.i, %do.end.i
  %159 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %private.i, align 4
  %of_node.i91 = getelementptr inbounds %struct.device, ptr %160, i32 0, i32 27
  %161 = ptrtoint ptr %of_node.i91 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %of_node.i91, align 8
  %call.i92 = tail call ptr @of_get_next_child(ptr noundef %162, ptr noundef null) #9
  %tobool.not.i93 = icmp eq ptr %call.i92, null
  br i1 %tobool.not.i93, label %if.end29.do.end35_crit_edge, label %if.end.i95

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end.i95:                                       ; preds = %if.end29
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i92, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @legacy_domain_ops, ptr noundef %private.i) #9
  %legacy_irq_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1
  %163 = ptrtoint ptr %legacy_irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call1.i.i, ptr %legacy_irq_domain.i, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i92) #9
  %164 = ptrtoint ptr %legacy_irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %legacy_irq_domain.i, align 4
  %tobool4.not.i = icmp eq ptr %165, null
  br i1 %tobool4.not.i, label %if.end.i95.do.end35_crit_edge, label %do.body10.i

if.end.i95.do.end35_crit_edge:                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.body10.i:                                      ; preds = %if.end.i95
  %leg_mask_lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %leg_mask_lock.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @nwl_pcie_init_irq_domain.__key, i16 noundef signext 2) #9
  %166 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %private.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %167, i32 0, i32 27
  %168 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %of_node.i.i, align 8
  %call1.i.i.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @dev_msi_domain_ops, ptr noundef %private.i) #9
  %dev_domain.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 6
  %170 = ptrtoint ptr %dev_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call1.i.i.i, ptr %dev_domain.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i96

do.end.i.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.86) #12
  br label %if.end36

if.end.i.i96:                                     ; preds = %do.body10.i
  %tobool.not.i.i25.i = icmp eq ptr %169, null
  %fwnode.i.i26.i = getelementptr inbounds %struct.device_node, ptr %169, i32 0, i32 3
  %spec.select.i.i27.i = select i1 %tobool.not.i.i25.i, ptr null, ptr %fwnode.i.i26.i
  %msi2.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %call6.i.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i27.i, ptr noundef nonnull @nwl_msi_domain_info, ptr noundef nonnull %call1.i.i.i) #9
  %171 = ptrtoint ptr %msi2.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call6.i.i, ptr %msi2.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool8.not.i.i, label %do.end12.i.i, label %if.end.i.i96.if.end36_crit_edge

if.end.i.i96.if.end36_crit_edge:                  ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end12.i.i:                                     ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.89) #12
  %172 = ptrtoint ptr %dev_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev_domain.i.i, align 4
  tail call void @irq_domain_remove(ptr noundef %173) #9
  br label %if.end36

do.end35:                                         ; preds = %if.end.i95.do.end35_crit_edge, %if.end29.do.end35_crit_edge
  %.str.82.sink = phi ptr [ @.str.79, %if.end29.do.end35_crit_edge ], [ @.str.82, %if.end.i95.do.end35_crit_edge ]
  %retval.0.i97 = phi i32 [ -22, %if.end29.do.end35_crit_edge ], [ -12, %if.end.i95.do.end35_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull %.str.82.sink) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end36:                                         ; preds = %do.end12.i.i, %if.end.i.i96.if.end36_crit_edge, %do.end.i.i
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %174 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %private.i, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %175 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @nwl_pcie_ops, ptr %ops, align 4
  %176 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %private.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %177, i32 -16
  %lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 7
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @nwl_pcie_enable_msi.__key) #9
  %call.i99 = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i98, ptr noundef nonnull @.str.94) #9
  %irq_msi1.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 9
  %178 = ptrtoint ptr %irq_msi1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call.i99, ptr %irq_msi1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %if.end36.do.end41_crit_edge, label %if.end.i101

if.end36.do.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

if.end.i101:                                      ; preds = %if.end36
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i99, ptr noundef nonnull @nwl_pcie_msi_handler_high, ptr noundef %private.i) #9
  %call5.i = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i98, ptr noundef nonnull @.str.95) #9
  %irq_msi0.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 8
  %179 = ptrtoint ptr %irq_msi0.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call5.i, ptr %irq_msi0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp7.i = icmp slt i32 %call5.i, 0
  br i1 %cmp7.i, label %if.end.i101.do.end41_crit_edge, label %if.end9.i

if.end.i101.do.end41_crit_edge:                   ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

if.end9.i:                                        ; preds = %if.end.i101
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call5.i, ptr noundef nonnull @nwl_pcie_msi_handler_low, ptr noundef %private.i) #9
  %180 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %181, i32 768
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i103) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %183 = and i32 %182, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i104 = icmp eq i32 %183, 0
  br i1 %tobool.not.i104, label %do.end15.i, label %if.end42

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.96) #12
  br label %do.end41

do.end41:                                         ; preds = %do.end15.i, %if.end.i101.do.end41_crit_edge, %if.end36.do.end41_crit_edge
  %retval.0.i106.ph = phi i32 [ -22, %if.end.i101.do.end41_crit_edge ], [ -22, %if.end36.do.end41_crit_edge ], [ -5, %do.end15.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i106.ph) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %185, i32 776
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %187 = or i32 %186, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %189, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %187) #9, !srcloc !189
  %190 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %191, i32 776
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %193 = or i32 %192, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %194 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %195, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %193) #9, !srcloc !189
  %196 = ptrtoint ptr %phys_pcie_reg_base.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %phys_pcie_reg_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #9
  %199 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %200, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %198) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %201 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %202, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 0) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %203 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %204, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 0) #9, !srcloc !189
  %205 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %206, i32 1092
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %208 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %209, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %207) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %210 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %211, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 -1) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %212 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %213, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 0) #9, !srcloc !189
  %214 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %215, i32 1088
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %217 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %218, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %216) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %219 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %220, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 -1) #9, !srcloc !189
  %call43 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end41, %do.end35, %do.end28, %do.end21, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i112, %do.end ], [ %16, %if.then11 ], [ %retval.0.i82.ph, %do.end21 ], [ %retval.0.i90, %do.end28 ], [ %retval.0.i97, %do.end35 ], [ %retval.0.i106.ph, %do.end41 ], [ %call43, %if.end42 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_pcie_leg_handler(ptr noundef %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler_data.i, align 4
  %breg_base.i = getelementptr inbounds %struct.nwl_pcie, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %13, i32 1056
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #9, !srcloc !186
  %15 = lshr i32 %14, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %and21 = and i32 %15, 15
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and21, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp.not22 = icmp eq i32 %and21, 0
  br i1 %cmp.not22, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %legacy_irq_domain = getelementptr inbounds %struct.nwl_pcie, ptr %11, i32 0, i32 15
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %17 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 1056
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !186
  %20 = lshr i32 %19, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %and = and i32 %20, 15
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %status, align 4
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call3 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp418 = icmp ult i32 %call3, 4
  br i1 %cmp418, label %while.body.for.body_crit_edge, label %while.body.while.cond.loopexit_crit_edge

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %bit.019 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call3, %while.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %legacy_irq_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %legacy_irq_domain, align 4
  %call5 = call i32 @generic_handle_domain_irq(ptr noundef %23, i32 noundef %bit.019) #9
  %add = add nuw nsw i32 %bit.019, 1
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 4, i32 noundef %add) #9
  %cmp4 = icmp ult i32 %call6, 4
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.while.cond.loopexit_crit_edge

for.body.while.cond.loopexit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %24 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i15 = icmp eq ptr %25, null
  br i1 %tobool.not.i15, label %if.else.i16, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i16:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i16, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %27, %if.else.i16 ], [ %25, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_pcie_misc_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %breg_base.i = getelementptr inbounds %struct.nwl_pcie, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1024
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !186
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %and = and i32 %5, 131530995
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %and6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %do.end11

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end5.if.end12_crit_edge
  %and13 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %do.end18

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #12
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.end12.if.end19_crit_edge
  %and20 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end26_crit_edge, label %do.end25

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.end19.if.end26_crit_edge
  %and27 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end33_crit_edge, label %do.end32

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53) #12
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end26.if.end33_crit_edge
  %and34 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end40_crit_edge, label %do.end39

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %if.end33.if.end40_crit_edge
  %and41 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end47_crit_edge, label %do.end46

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %if.end40.if.end47_crit_edge
  %and48 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end54_crit_edge, label %do.end53

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.62) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %if.end47.if.end54_crit_edge
  %and55 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end61_crit_edge, label %do.end60

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.65) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end60, %if.end54.if.end61_crit_edge
  %and62 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %do.end67

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68) #12
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end61.if.end68_crit_edge
  %and69 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end75_crit_edge, label %do.end74

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %if.end68.if.end75_crit_edge
  %and76 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end82_crit_edge, label %do.end81

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.74) #12
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.end75.if.end82_crit_edge
  %and83 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end89_crit_edge, label %do.end88

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.77) #12
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %if.end82.if.end89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %7 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %8, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %6) #9, !srcloc !189
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end89 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_legacy_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @nwl_leg_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #9
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #9
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 256) #9
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_irqd_intx_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef readnone %out_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %2 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %1, -1
  %4 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %out_hwirq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_unmask_leg_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %sub = add i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %leg_mask_lock = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leg_mask_lock) #9
  %breg_base.i = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1060
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !186
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %or = or i32 %7, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %9 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %8) #9, !srcloc !189
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leg_mask_lock, i32 noundef %call1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_mask_leg_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %sub = add i32 %3, -1
  %shl = shl nuw i32 1, %sub
  %leg_mask_lock = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leg_mask_lock) #9
  %breg_base.i = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1060
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !186
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %9 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %8) #9, !srcloc !189
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leg_mask_lock, i32 noundef %call1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nwl_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %lock = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 14, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %bitmap = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 14, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp.i = icmp eq i32 %nr_irqs, 0
  br i1 %cmp.i, label %get_count_order.exit, label %get_count_order.exit.thread

get_count_order.exit:                             ; preds = %entry
  %call2 = tail call i32 @bitmap_find_free_region(ptr noundef %bitmap, i32 noundef 64, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %get_count_order.exit.cleanup_crit_edge, label %get_count_order.exit.for.end_crit_edge

get_count_order.exit.for.end_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

get_count_order.exit.cleanup_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

get_count_order.exit.thread:                      ; preds = %entry
  %dec.i = add i32 %nr_irqs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #9, !range !193
  %sub.i.i = sub nuw nsw i32 32, %2
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call224 = tail call i32 @bitmap_find_free_region(ptr noundef %bitmap, i32 noundef 64, i32 noundef %cond.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp25 = icmp slt i32 %call224, 0
  br i1 %cmp25, label %get_count_order.exit.thread.cleanup_crit_edge, label %get_count_order.exit.thread.for.body_crit_edge

get_count_order.exit.thread.for.body_crit_edge:   ; preds = %get_count_order.exit.thread
  br label %for.body

get_count_order.exit.thread.cleanup_crit_edge:    ; preds = %get_count_order.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %get_count_order.exit.thread.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %get_count_order.exit.thread.for.body_crit_edge ]
  %add = add i32 %i.022, %virq
  %add5 = add i32 %i.022, %call224
  %3 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add, i32 noundef %add5, ptr noundef nonnull @nwl_irq_chip, ptr noundef %4, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #9
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %get_count_order.exit.for.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end, %get_count_order.exit.thread.cleanup_crit_edge, %get_count_order.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -28, %get_count_order.exit.thread.cleanup_crit_edge ], [ -28, %get_count_order.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #9
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 14, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp.i = icmp eq i32 %nr_irqs, 0
  br i1 %cmp.i, label %entry.get_count_order.exit_crit_edge, label %if.end.i

entry.get_count_order.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_count_order.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %nr_irqs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #9, !range !193
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %entry.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %entry.get_count_order.exit_crit_edge ]
  %bitmap = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 14, i32 1
  tail call void @bitmap_release_region(ptr noundef %bitmap, i32 noundef %3, i32 noundef %retval.0.i) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nwl_msi_set_affinity(ptr nocapture noundef readnone %irq_data, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nwl_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %phys_pcie_reg_base = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %phys_pcie_reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_pcie_reg_base, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %msg, align 4
  %5 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %9 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nwl_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %pcireg_base.i.i = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pcireg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcireg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 568
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i7.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i7.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.not.i = icmp eq i32 %devfn, 0
  br i1 %cmp.not.i, label %if.else.i.if.end_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %ecam_base = getelementptr inbounds %struct.nwl_pcie, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ecam_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ecam_base, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 20
  %and1 = shl i32 %devfn, 12
  %shl2 = and i32 %and1, 1044480
  %or = or i32 %shl, %shl2
  %and3 = and i32 %where, 4095
  %or4 = or i32 %or, %and3
  %add.ptr = getelementptr i8, ptr %9, i32 %or4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %if.then.i.cleanup_crit_edge ], [ null, %if.else.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_pcie_msi_handler_high(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  tail call fastcc void @nwl_pcie_handle_msi_irq(ptr noundef %3, i32 noundef 1092)
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i7 = icmp eq ptr %13, null
  br i1 %tobool.not.i7, label %if.else.i8, label %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge

chained_irq_enter.exit.chained_irq_exit.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i8:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i8, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %15, %if.else.i8 ], [ %13, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nwl_pcie_msi_handler_low(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  tail call fastcc void @nwl_pcie_handle_msi_irq(ptr noundef %3, i32 noundef 1088)
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i7 = icmp eq ptr %13, null
  br i1 %tobool.not.i7, label %if.else.i8, label %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge

chained_irq_enter.exit.chained_irq_exit.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i8:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i8, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %15, %if.else.i8 ], [ %13, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nwl_pcie_handle_msi_irq(ptr nocapture noundef readonly %pcie, i32 noundef %status_reg) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %breg_base.i = getelementptr inbounds %struct.nwl_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %1, i32 %status_reg
  %2 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #9, !srcloc !186
  %3 = call i32 @llvm.bswap.i32(i32 %2) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not17 = icmp eq i32 %2, 0
  br i1 %cmp.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev_domain = getelementptr inbounds %struct.nwl_pcie, ptr %pcie, i32 0, i32 14, i32 2
  br label %while.body

while.cond.loopexit:                              ; preds = %for.body.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %5 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %status_reg
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !186
  %8 = call i32 @llvm.bswap.i32(i32 %7) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call2)
  %cmp314 = icmp ult i32 %call2, 32
  br i1 %cmp314, label %while.body.for.body_crit_edge, label %while.body.while.cond.loopexit_crit_edge

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body.for.body_crit_edge
  %bit.015 = phi i32 [ %call5, %for.body.for.body_crit_edge ], [ %call2, %while.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %bit.015
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  call void @arm_heavy_mb() #9
  %10 = call i32 @llvm.bswap.i32(i32 %shl) #9
  %11 = ptrtoint ptr %breg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %breg_base.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %12, i32 %status_reg
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %10) #9, !srcloc !189
  %13 = ptrtoint ptr %dev_domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_domain, align 4
  %call4 = call i32 @generic_handle_domain_irq(ptr noundef %14, i32 noundef %bit.015) #9
  %add = add nuw nsw i32 %bit.015, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef %add) #9
  %cmp3 = icmp ult i32 %call5, 32
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.while.cond.loopexit_crit_edge

for.body.while.cond.loopexit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !136, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168, !170, !172, !173, !174, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_pcie_xilinx_nwl__236_849_nwl_pcie_driver_init6, !1, !"__initcall__kmod_pcie_xilinx_nwl__236_849_nwl_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 849, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 843, i32 11}
!4 = !{ptr @nwl_pcie_driver, !5, !"nwl_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 841, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 801, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nwl_pcie_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @nwl_pcie_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 811, i32 3}
!16 = !{ptr @nwl_pcie_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nwl_pcie_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 817, i32 3}
!20 = !{ptr @nwl_pcie_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nwl_pcie_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 823, i32 3}
!24 = !{ptr @nwl_pcie_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nwl_pcie_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 833, i32 4}
!28 = !{ptr @nwl_pcie_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nwl_pcie_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 749, i32 59}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 755, i32 59}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 761, i32 59}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 768, i32 49}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 634, i32 3}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nwl_pcie_bridge_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @nwl_pcie_bridge_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 670, i32 3}
!45 = !{ptr @nwl_pcie_bridge_init._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nwl_pcie_bridge_init._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 697, i32 3}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nwl_pcie_bridge_init._entry.27, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @nwl_pcie_bridge_init._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 699, i32 3}
!54 = !{ptr @nwl_pcie_bridge_init._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nwl_pcie_bridge_init._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 702, i32 49}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 708, i32 11}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 710, i32 3}
!62 = !{ptr @nwl_pcie_bridge_init._entry.36, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @nwl_pcie_bridge_init._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 213, i32 2}
!66 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nwl_wait_for_link._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @nwl_wait_for_link._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 273, i32 3}
!71 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nwl_pcie_misc_handler._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @nwl_pcie_misc_handler._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 276, i32 3}
!76 = !{ptr @nwl_pcie_misc_handler._entry.43, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nwl_pcie_misc_handler._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 279, i32 3}
!80 = !{ptr @nwl_pcie_misc_handler._entry.46, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @nwl_pcie_misc_handler._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 282, i32 3}
!84 = !{ptr @nwl_pcie_misc_handler._entry.49, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @nwl_pcie_misc_handler._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 285, i32 3}
!88 = !{ptr @nwl_pcie_misc_handler._entry.52, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @nwl_pcie_misc_handler._entry_ptr.54, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 288, i32 3}
!92 = !{ptr @nwl_pcie_misc_handler._entry.55, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nwl_pcie_misc_handler._entry_ptr.57, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 291, i32 3}
!96 = !{ptr @nwl_pcie_misc_handler._entry.58, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nwl_pcie_misc_handler._entry_ptr.60, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.62, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 294, i32 3}
!100 = !{ptr @nwl_pcie_misc_handler._entry.61, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @nwl_pcie_misc_handler._entry_ptr.63, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.65, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 297, i32 3}
!104 = !{ptr @nwl_pcie_misc_handler._entry.64, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @nwl_pcie_misc_handler._entry_ptr.66, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.68, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 300, i32 3}
!108 = !{ptr @nwl_pcie_misc_handler._entry.67, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @nwl_pcie_misc_handler._entry_ptr.69, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.71, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 303, i32 3}
!112 = !{ptr @nwl_pcie_misc_handler._entry.70, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @nwl_pcie_misc_handler._entry_ptr.72, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.74, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 306, i32 3}
!116 = !{ptr @nwl_pcie_misc_handler._entry.73, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @nwl_pcie_misc_handler._entry_ptr.75, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.77, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 309, i32 3}
!120 = !{ptr @nwl_pcie_misc_handler._entry.76, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nwl_pcie_misc_handler._entry_ptr.78, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 535, i32 3}
!124 = !{ptr @.str.80, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nwl_pcie_init_irq_domain._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @nwl_pcie_init_irq_domain._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.82, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 545, i32 3}
!129 = !{ptr @nwl_pcie_init_irq_domain._entry.81, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nwl_pcie_init_irq_domain._entry_ptr.83, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @nwl_pcie_init_irq_domain.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 549, i32 2}
!133 = !{ptr @.str.84, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @legacy_domain_ops, !135, !"legacy_domain_ops", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 416, i32 36}
!136 = !{ptr @.str.85, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 399, i32 10}
!138 = !{ptr @nwl_leg_irq_chip, !139, !"nwl_leg_irq_chip", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 398, i32 24}
!140 = !{ptr @.str.86, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 512, i32 3}
!142 = !{ptr @.str.87, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nwl_pcie_init_msi_irq_domain._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @nwl_pcie_init_msi_irq_domain._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.89, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 519, i32 3}
!147 = !{ptr @nwl_pcie_init_msi_irq_domain._entry.88, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @nwl_pcie_init_msi_irq_domain._entry_ptr.90, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @dev_msi_domain_ops, !150, !"dev_msi_domain_ops", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 497, i32 36}
!151 = !{ptr @.str.91, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 454, i32 10}
!153 = !{ptr @nwl_irq_chip, !154, !"nwl_irq_chip", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 453, i32 24}
!155 = !{ptr @nwl_msi_domain_info, !156, !"nwl_msi_domain_info", i1 false, i1 false}
!156 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 430, i32 31}
!157 = !{ptr @.str.92, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 423, i32 10}
!159 = !{ptr @nwl_msi_irq_chip, !160, !"nwl_msi_irq_chip", i1 false, i1 false}
!160 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 422, i32 24}
!161 = !{ptr @nwl_pcie_ops, !162, !"nwl_pcie_ops", i1 false, i1 false}
!162 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 254, i32 23}
!163 = !{ptr @nwl_pcie_enable_msi.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 562, i32 2}
!165 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.94, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 565, i32 48}
!168 = !{ptr @.str.95, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 573, i32 48}
!170 = !{ptr @.str.96, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 583, i32 3}
!172 = !{ptr @.str.97, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @nwl_pcie_enable_msi._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @nwl_pcie_enable_msi._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @nwl_pcie_of_match, !176, !"nwl_pcie_of_match", i1 false, i1 false}
!176 = !{!"../drivers/pci/controller/pcie-xilinx-nwl.c", i32 778, i32 34}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 4259180}
!187 = !{i64 2154706217}
!188 = !{i64 2154706604}
!189 = !{i64 4258762}
!190 = !{i64 2154707963}
!191 = !{i64 2154761706}
!192 = !{i64 2154707332}
!193 = !{i32 0, i32 33}
