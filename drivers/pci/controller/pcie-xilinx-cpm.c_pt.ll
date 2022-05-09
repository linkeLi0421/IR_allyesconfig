; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-xilinx-cpm.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-xilinx-cpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.73 = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_config_window = type { %struct.resource, %struct.resource, i32, ptr, ptr, %union.anon.72, ptr }
%union.anon.72 = type { ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.xilinx_cpm_pcie = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.raw_spinlock }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pcie_xilinx_cpm__242_608_xilinx_cpm_pcie_driver_init6 = internal global ptr @xilinx_cpm_pcie_driver_init, section ".initcall6.init", align 4
@xilinx_cpm_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xilinx_cpm_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @xilinx_cpm_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xilinx-cpm-pcie\00", [16 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,versal-cpm-host-1.00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Parsing DT failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx_cpm_pcie_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/pci/controller/pcie-xilinx-cpm.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_probe._entry_ptr = internal global ptr @xilinx_cpm_pcie_probe._entry, section ".printk_index", align 4
@xilinx_cpm_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 572, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set up interrupts\0A\00", [35 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_probe._entry_ptr.8 = internal global ptr @xilinx_cpm_pcie_probe._entry.6, section ".printk_index", align 4
@pci_generic_ecam_ops = external dso_local constant %struct.pci_ecam_ops, align 4
@xilinx_cpm_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No PCIe Intc node found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xilinx_cpm_pcie_init_irq_domain\00", [32 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_irq_domain._entry_ptr = internal global ptr @xilinx_cpm_pcie_init_irq_domain._entry, section ".printk_index", align 4
@event_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @xilinx_cpm_pcie_event_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @xilinx_cpm_pcie_intx_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_irq_domain.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_irq_domain._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate IRQ domains\0A\00", [32 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_irq_domain._entry_ptr.14 = internal global ptr @xilinx_cpm_pcie_init_irq_domain._entry.12, section ".printk_index", align 4
@xilinx_cpm_event_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_cpm_mask_event_irq, ptr null, ptr @xilinx_cpm_unmask_event_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RC-Event\00", [23 x i8] zeroinitializer }, align 32
@xilinx_cpm_leg_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_cpm_mask_leg_irq, ptr null, ptr @xilinx_cpm_unmask_leg_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTx\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpm_slcr\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 468, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCIe Link is UP\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xilinx_cpm_pcie_init_port\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_port._entry_ptr = internal global ptr @xilinx_cpm_pcie_init_port._entry, section ".printk_index", align 4
@xilinx_cpm_pcie_init_port._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 470, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCIe Link is DOWN\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_init_port._entry_ptr.24 = internal global ptr @xilinx_cpm_pcie_init_port._entry.22, section ".printk_index", align 4
@intr_cause = internal constant { [32 x %struct.anon.73], [64 x i8] } { [32 x %struct.anon.73] [%struct.anon.73 { ptr @.str.33, ptr @.str.34 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 { ptr @.str.35, ptr @.str.36 }, %struct.anon.73 { ptr @.str.37, ptr @.str.38 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 { ptr @.str.39, ptr @.str.40 }, %struct.anon.73 { ptr @.str.41, ptr @.str.42 }, %struct.anon.73 { ptr @.str.43, ptr @.str.44 }, %struct.anon.73 { ptr @.str.45, ptr @.str.46 }, %struct.anon.73 { ptr @.str.47, ptr @.str.48 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 { ptr @.str.49, ptr @.str.50 }, %struct.anon.73 zeroinitializer, %struct.anon.73 { ptr @.str.51, ptr @.str.52 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 { ptr @.str.53, ptr @.str.54 }, %struct.anon.73 { ptr @.str.55, ptr @.str.56 }, %struct.anon.73 { ptr @.str.57, ptr @.str.58 }, %struct.anon.73 { ptr @.str.59, ptr @.str.60 }, %struct.anon.73 { ptr @.str.61, ptr @.str.62 }, %struct.anon.73 { ptr @.str.63, ptr @.str.64 }, %struct.anon.73 { ptr @.str.65, ptr @.str.66 }, %struct.anon.73 { ptr @.str.67, ptr @.str.68 }, %struct.anon.73 { ptr @.str.69, ptr @.str.70 }, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer, %struct.anon.73 zeroinitializer], [64 x i8] zeroinitializer }, align 32
@xilinx_cpm_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xilinx_cpm_setup_irq\00", [43 x i8] zeroinitializer }, align 32
@xilinx_cpm_setup_irq._entry_ptr = internal global ptr @xilinx_cpm_setup_irq._entry, section ".printk_index", align 4
@xilinx_cpm_setup_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@xilinx_cpm_setup_irq._entry_ptr.29 = internal global ptr @xilinx_cpm_setup_irq._entry.27, section ".printk_index", align 4
@xilinx_cpm_setup_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map INTx interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@xilinx_cpm_setup_irq._entry_ptr.32 = internal global ptr @xilinx_cpm_setup_irq._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINK_DOWN\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Link Down\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HOT_RESET\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hot reset\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CFG_PCIE_TIMEOUT\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCIe ECAM access timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CFG_TIMEOUT\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ECAM access timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CORRECTABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Correctable error message\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NONFATAL\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Non fatal error message\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FATAL\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Fatal error message\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CFG_ERR_POISON\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ECAM poisoned completion received\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PME_TO_ACK_RCVD\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PME_TO_ACK message received\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PM_PME_RCVD\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PM_PME message received\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SLV_UNSUPP\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Slave unsupported request\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SLV_UNEXP\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Slave unexpected completion\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SLV_COMPL\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Slave completion timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SLV_ERRP\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Slave Error Poison\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SLV_CMPABT\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Slave Completer Abort\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SLV_ILLBUR\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Slave Illegal Burst\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MST_DECERR\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Master decode error\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MST_SLVERR\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Master slave error\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SLV_PCIE_TIMEOUT\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCIe completion timeout received\00", [63 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 345, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xilinx_cpm_pcie_intr_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_intr_handler._entry_ptr = internal global ptr @xilinx_cpm_pcie_intr_handler._entry, section ".printk_index", align 4
@xilinx_cpm_pcie_intr_handler._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.3, i32 347, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown IRQ %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@xilinx_cpm_pcie_intr_handler._entry_ptr.76 = internal global ptr @xilinx_cpm_pcie_intr_handler._entry.74, section ".printk_index", align 4
@cpm_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcie_xilinx_cpm\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpm_pcie_clear_err_interrupts\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Requester ID %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"xilinx_cpm_pcie_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 599, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 601, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"xilinx_cpm_pcie_of_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 594, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 564, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 572, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 381, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"event_domain_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 270, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 208, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 402, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 408, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"xilinx_cpm_event_irq_chip\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 254, i32 24 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 255, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"xilinx_cpm_leg_irq_chip\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 182, i32 24 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 183, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 508, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 512, i32 59 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 468, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 470, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"intr_cause\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 306, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 431, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 438, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 446, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 307, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 308, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 321, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 309, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 310, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 311, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 312, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 322, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 323, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 324, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 313, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 314, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 315, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 316, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 317, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 318, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 319, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 320, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 325, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 345, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 347, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private constant [44 x i8] c"../drivers/pci/controller/pcie-xilinx-cpm.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 147, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__initcall__kmod_pcie_xilinx_cpm__242_608_xilinx_cpm_pcie_driver_init6, ptr @xilinx_cpm_pcie_init_irq_domain._entry, ptr @xilinx_cpm_pcie_init_irq_domain._entry.12, ptr @xilinx_cpm_pcie_init_irq_domain._entry_ptr, ptr @xilinx_cpm_pcie_init_irq_domain._entry_ptr.14, ptr @xilinx_cpm_pcie_init_port._entry, ptr @xilinx_cpm_pcie_init_port._entry.22, ptr @xilinx_cpm_pcie_init_port._entry_ptr, ptr @xilinx_cpm_pcie_init_port._entry_ptr.24, ptr @xilinx_cpm_pcie_intr_handler._entry, ptr @xilinx_cpm_pcie_intr_handler._entry.74, ptr @xilinx_cpm_pcie_intr_handler._entry_ptr, ptr @xilinx_cpm_pcie_intr_handler._entry_ptr.76, ptr @xilinx_cpm_pcie_probe._entry, ptr @xilinx_cpm_pcie_probe._entry.6, ptr @xilinx_cpm_pcie_probe._entry_ptr, ptr @xilinx_cpm_pcie_probe._entry_ptr.8, ptr @xilinx_cpm_setup_irq._entry, ptr @xilinx_cpm_setup_irq._entry.27, ptr @xilinx_cpm_setup_irq._entry.30, ptr @xilinx_cpm_setup_irq._entry_ptr, ptr @xilinx_cpm_setup_irq._entry_ptr.29, ptr @xilinx_cpm_setup_irq._entry_ptr.32, ptr @xilinx_cpm_pcie_driver, ptr @.str, ptr @xilinx_cpm_pcie_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @event_domain_ops, ptr @intx_domain_ops, ptr @xilinx_cpm_pcie_init_irq_domain.__key, ptr @.str.11, ptr @.str.13, ptr @xilinx_cpm_event_irq_chip, ptr @.str.15, ptr @xilinx_cpm_leg_irq_chip, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @intr_cause, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_init_irq_domain.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_init_irq_domain._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_event_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_leg_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_init_port._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_cause to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_setup_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_setup_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_cpm_pcie_intr_handler._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_cpm_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_cpm_pcie_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_cpm_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 76) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %private.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @event_domain_ops, ptr noundef %private.i) #6
  %cpm_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i, ptr %cpm_domain.i, align 4
  %tobool4.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.out.i_crit_edge, label %if.end6.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call1.i.i, i32 noundef 5) #6
  %call1.i41.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %private.i) #6
  %intx_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %intx_domain.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i41.i, ptr %intx_domain.i, align 4
  %tobool10.not.i = icmp eq ptr %call1.i41.i, null
  br i1 %tobool10.not.i, label %if.end6.i.out.i_crit_edge, label %if.end7

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

out.i:                                            ; preds = %if.end6.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %intx_domain.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %intx_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intx_domain.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %out.i.if.end.i.i_crit_edge, label %if.then.i.i

out.i.if.end.i.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_remove(ptr noundef nonnull %6) #6
  %7 = ptrtoint ptr %intx_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %intx_domain.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %out.i.if.end.i.i_crit_edge
  %8 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpm_domain.i, align 4
  %tobool3.not.i.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.xilinx_cpm_free_irq_domains.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.xilinx_cpm_free_irq_domains.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xilinx_cpm_free_irq_domains.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_remove(ptr noundef nonnull %9) #6
  %10 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cpm_domain.i, align 4
  br label %xilinx_cpm_free_irq_domains.exit.i

xilinx_cpm_free_irq_domains.exit.i:               ; preds = %if.then4.i.i, %if.end.i.i.xilinx_cpm_free_irq_domains.exit.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end6.i
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call1.i41.i, i32 noundef 1) #6
  tail call void @of_node_put(ptr noundef nonnull %call.i) #6
  %lock.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @xilinx_cpm_pcie_init_irq_domain.__key, i16 noundef signext 2) #6
  %windows = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %entry1.0.in.i = phi ptr [ %windows, %if.end7 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %windows
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %res.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %15, 7936
  %cmp2.i = icmp eq i32 %and.i.i, 4096
  br i1 %cmp2.i, label %resource_list_first_type.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

resource_list_first_type.exit:                    ; preds = %for.body.i
  %tobool9.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool9.not, label %resource_list_first_type.exit.cleanup_crit_edge, label %if.end11

resource_list_first_type.exit.cleanup_crit_edge:  ; preds = %resource_list_first_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %resource_list_first_type.exit
  %res.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %res.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res.i.le, align 4
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 -16
  %call.i54 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.17) #6
  %cpm_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %cpm_base.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i54, ptr %cpm_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end11.xilinx_cpm_pcie_parse_dt.exit_crit_edge, label %if.end.i56

if.end11.xilinx_cpm_pcie_parse_dt.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %xilinx_cpm_pcie_parse_dt.exit

if.end.i56:                                       ; preds = %if.end11
  %call6.i = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull @.str.18) #6
  %tobool.not.i55 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i55, label %if.end.i56.do.end_crit_edge, label %if.end8.i

if.end.i56.do.end_crit_edge:                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end8.i:                                        ; preds = %if.end.i56
  %call9.i = tail call ptr @pci_ecam_create(ptr noundef %19, ptr noundef nonnull %call6.i, ptr noundef %17, ptr noundef nonnull @pci_generic_ecam_ops) #6
  %cfg.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %cfg.i, align 4
  %cmp.i30.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %if.end8.i.xilinx_cpm_pcie_parse_dt.exit_crit_edge, label %xilinx_cpm_pcie_parse_dt.exit.thread

if.end8.i.xilinx_cpm_pcie_parse_dt.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xilinx_cpm_pcie_parse_dt.exit

xilinx_cpm_pcie_parse_dt.exit.thread:             ; preds = %if.end8.i
  %22 = getelementptr inbounds %struct.pci_config_window, ptr %call9.i, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %reg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 3612
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !154
  %27 = and i32 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 4
  %.str.23..str.19.i = select i1 %tobool.i.not.i, ptr @.str.23, ptr @.str.19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull %.str.23..str.19.i) #9
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !155
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %33, i32 3600
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #6, !srcloc !154
  %35 = and i32 %34, 429912863
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %37, i32 3600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %35) #6, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %cpm_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpm_base.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %39, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 33554432) #6, !srcloc !155
  %40 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %41, i32 3616
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #6, !srcloc !154
  %43 = or i32 %42, 16777216
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %45, i32 3616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %43) #6, !srcloc !155
  %46 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %47, i32 -16
  %call.i61 = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i60, i32 noundef 0) #6
  %irq2.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 6
  %48 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call.i61, ptr %irq2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i = icmp slt i32 %call.i61, 0
  br i1 %cmp.i, label %xilinx_cpm_pcie_parse_dt.exit.thread.do.end21_crit_edge, label %xilinx_cpm_pcie_parse_dt.exit.thread.for.body.i63_crit_edge

xilinx_cpm_pcie_parse_dt.exit.thread.for.body.i63_crit_edge: ; preds = %xilinx_cpm_pcie_parse_dt.exit.thread
  br label %for.body.i63

xilinx_cpm_pcie_parse_dt.exit.thread.do.end21_crit_edge: ; preds = %xilinx_cpm_pcie_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

xilinx_cpm_pcie_parse_dt.exit:                    ; preds = %if.end8.i.xilinx_cpm_pcie_parse_dt.exit_crit_edge, %if.end11.xilinx_cpm_pcie_parse_dt.exit_crit_edge
  %retval.0.i57.in = phi ptr [ %call.i54, %if.end11.xilinx_cpm_pcie_parse_dt.exit_crit_edge ], [ %call9.i, %if.end8.i.xilinx_cpm_pcie_parse_dt.exit_crit_edge ]
  %retval.0.i57 = ptrtoint ptr %retval.0.i57.in to i32
  br label %do.end

do.end:                                           ; preds = %xilinx_cpm_pcie_parse_dt.exit, %if.end.i56.do.end_crit_edge
  %retval.0.i5781 = phi i32 [ %retval.0.i57, %xilinx_cpm_pcie_parse_dt.exit ], [ -6, %if.end.i56.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %err_parse_dt

for.body.i63:                                     ; preds = %for.inc.i.for.body.i63_crit_edge, %xilinx_cpm_pcie_parse_dt.exit.thread.for.body.i63_crit_edge
  %i.063.i = phi i32 [ %inc.i, %for.inc.i.for.body.i63_crit_edge ], [ 0, %xilinx_cpm_pcie_parse_dt.exit.thread.for.body.i63_crit_edge ]
  %arrayidx.i = getelementptr [32 x %struct.anon.73], ptr @intr_cause, i32 0, i32 %i.063.i
  %49 = lshr i32 -535994138, %i.063.i
  %50 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.not.i, label %if.end7.i, label %for.body.i63.for.inc.i_crit_edge

for.body.i63.for.inc.i_crit_edge:                 ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i63
  %51 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cpm_domain.i, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %52, i32 noundef %i.063.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %do.end.i64, label %if.end11.i

do.end.i64:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.25) #9
  br label %do.end21

if.end11.i:                                       ; preds = %if.end7.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %call.i58.i = tail call i32 @devm_request_threaded_irq(ptr noundef %47, i32 noundef %call.i.i, ptr noundef nonnull @xilinx_cpm_pcie_intr_handler, ptr noundef null, i32 noundef 0, ptr noundef %54, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool14.not.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.for.inc.i_crit_edge, label %do.end18.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #9
  br label %do.end21

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %for.body.i63.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i63_crit_edge

for.inc.i.for.body.i63_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i63

for.end.i:                                        ; preds = %for.inc.i
  %55 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cpm_domain.i, align 4
  %call.i59.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %56, i32 noundef 16, ptr noundef null) #6
  %intx_irq.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  %57 = ptrtoint ptr %intx_irq.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i59.i, ptr %intx_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool23.not.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool23.not.i, label %do.end27.i, label %if.end22

do.end27.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.31) #9
  br label %do.end21

do.end21:                                         ; preds = %do.end27.i, %do.end18.i, %do.end.i64, %xilinx_cpm_pcie_parse_dt.exit.thread.do.end21_crit_edge
  %retval.2.i.ph = phi i32 [ %call.i58.i, %do.end18.i ], [ -6, %do.end.i64 ], [ %call.i61, %xilinx_cpm_pcie_parse_dt.exit.thread.do.end21_crit_edge ], [ -6, %do.end27.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %err_setup_irq

if.end22:                                         ; preds = %for.end.i
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i59.i, ptr noundef nonnull @xilinx_cpm_pcie_intx_flow, ptr noundef %private.i) #6
  %58 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq2.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %59, ptr noundef nonnull @xilinx_cpm_pcie_event_flow, ptr noundef %private.i) #6
  %60 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i, align 4
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %62 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr getelementptr inbounds (%struct.pci_ecam_ops, ptr @pci_generic_ecam_ops, i32 0, i32 1), ptr %ops, align 4
  %call23 = tail call i32 @pci_host_probe(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %err_host_bridge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_host_bridge:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %intx_irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %intx_irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %65, ptr noundef null, ptr noundef null) #6
  %66 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq2.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %67, ptr noundef null, ptr noundef null) #6
  br label %err_setup_irq

err_setup_irq:                                    ; preds = %err_host_bridge, %do.end21
  %err.0 = phi i32 [ %retval.2.i.ph, %do.end21 ], [ %call23, %err_host_bridge ]
  %68 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i, align 4
  tail call void @pci_ecam_free(ptr noundef %69) #6
  br label %err_parse_dt

err_parse_dt:                                     ; preds = %err_setup_irq, %do.end
  %err.1 = phi i32 [ %retval.0.i5781, %do.end ], [ %err.0, %err_setup_irq ]
  %70 = ptrtoint ptr %intx_domain.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %intx_domain.i, align 4
  %tobool.not.i67 = icmp eq ptr %71, null
  br i1 %tobool.not.i67, label %err_parse_dt.if.end.i70_crit_edge, label %if.then.i68

err_parse_dt.if.end.i70_crit_edge:                ; preds = %err_parse_dt
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i70

if.then.i68:                                      ; preds = %err_parse_dt
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_remove(ptr noundef nonnull %71) #6
  %72 = ptrtoint ptr %intx_domain.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %intx_domain.i, align 4
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then.i68, %err_parse_dt.if.end.i70_crit_edge
  %73 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cpm_domain.i, align 4
  %tobool3.not.i = icmp eq ptr %74, null
  br i1 %tobool3.not.i, label %if.end.i70.cleanup_crit_edge, label %if.then4.i

if.end.i70.cleanup_crit_edge:                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_domain_remove(ptr noundef nonnull %74) #6
  %75 = ptrtoint ptr %cpm_domain.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %cpm_domain.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.end.i70.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %resource_list_first_type.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %xilinx_cpm_free_irq_domains.exit.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %resource_list_first_type.exit.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ %err.1, %if.end.i70.cleanup_crit_edge ], [ %err.1, %if.then4.i ], [ -22, %do.end.i ], [ -12, %xilinx_cpm_free_irq_domains.exit.i ], [ -19, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ecam_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_cpm_pcie_event_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @xilinx_cpm_event_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 256) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cpm_mask_event_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reg_base.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3604
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %10, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %8) #6, !srcloc !155
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cpm_unmask_event_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %lock = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reg_base.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 3604
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %7
  %or = or i32 %shl, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %10, i32 3604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %8) #6, !srcloc !155
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_cpm_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @xilinx_cpm_leg_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 256) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cpm_mask_leg_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %add = add i32 %3, 16
  %shl = shl nuw i32 1, %add
  %lock = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %reg_base.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 3644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %8) #6, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cpm_unmask_leg_irq(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %add = add i32 %3, 16
  %shl = shl nuw i32 1, %add
  %lock = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %reg_base.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %or = or i32 %7, %shl
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 3644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %8) #6, !srcloc !155
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ecam_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_cpm_pcie_intr_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %cpm_domain = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %cpm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpm_domain, align 4
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %3, i32 noundef %irq) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %.off = add i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.sw.default_crit_edge

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %reg_base.i.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 3628
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !154
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %and.i = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.default_crit_edge, label %do.body.i

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

do.body.i:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpm_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_cpm_pcie_intr_handler, %do.end.i)) #6
          to label %if.then6.i [label %do.end.i], !srcloc !157

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %and7.i = and i32 %9, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpm_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.79, i32 noundef %and7.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %12 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %13, i32 3628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 -1) #6, !srcloc !155
  br label %sw.default

sw.default:                                       ; preds = %do.end.i, %sw.bb.sw.default_crit_edge, %entry.sw.default_crit_edge
  %14 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq, align 4
  %16 = and i32 %15, 536870911
  %17 = lshr i32 -535994138, %16
  %18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.not = icmp eq i32 %18, 0
  br i1 %tobool.not.not, label %do.end, label %do.end8

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %str = getelementptr [32 x %struct.anon.73], ptr @intr_cause, i32 0, i32 %15, i32 1
  %19 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %str, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef %20) #9
  br label %sw.epilog

do.end8:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %15) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end8, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cpm_pcie_intx_flow(ptr noundef %desc) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %reg_base.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3640
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  %15 = lshr i32 %14, 8
  %shr = and i32 %15, 15
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %val, align 4
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call15)
  %cmp29 = icmp slt i32 %call15, 4
  br i1 %cmp29, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %intx_domain = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ %call15, %for.body.lr.ph ], [ %call17, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %intx_domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intx_domain, align 4
  %call16 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef %i.030) #6
  %add = add nsw i32 %i.030, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 4, i32 noundef %add) #6
  %cmp = icmp slt i32 %call17, 4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %19 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i26 = icmp eq ptr %20, null
  br i1 %tobool.not.i26, label %if.else.i27, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i27:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i27, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %22, %if.else.i27 ], [ %20, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_cpm_pcie_event_flow(ptr noundef %desc) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %reg_base.i = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3600
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !154
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %16, i32 3604
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !154
  %18 = and i32 %14, %17
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4)
  %cmp29 = icmp slt i32 %call4, 32
  br i1 %cmp29, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %cpm_domain = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ %call4, %for.body.lr.ph ], [ %call6, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %cpm_domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpm_domain, align 4
  %call5 = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %i.030) #6
  %add = add nsw i32 %i.030, 1
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef 32, i32 noundef %add) #6
  %cmp = icmp slt i32 %call6, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %27, i32 3600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %25) #6, !srcloc !155
  %cpm_base = getelementptr inbounds %struct.xilinx_cpm_pcie, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %cpm_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpm_base, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 832
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !154
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %cpm_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpm_base, align 4
  %add.ptr9 = getelementptr i8, ptr %34, i32 832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %30) #6, !srcloc !155
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %35 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i26 = icmp eq ptr %36, null
  br i1 %tobool.not.i26, label %if.else.i27, label %if.end.chained_irq_exit.exit_crit_edge

if.end.chained_irq_exit.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i27:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i27, %if.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %38, %if.else.i27 ], [ %36, %if.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__initcall__kmod_pcie_xilinx_cpm__242_608_xilinx_cpm_pcie_driver_init6, !1, !"__initcall__kmod_pcie_xilinx_cpm__242_608_xilinx_cpm_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 608, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 601, i32 11}
!4 = !{ptr @xilinx_cpm_pcie_driver, !5, !"xilinx_cpm_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 599, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 564, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @xilinx_cpm_pcie_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @xilinx_cpm_pcie_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 572, i32 3}
!16 = !{ptr @xilinx_cpm_pcie_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @xilinx_cpm_pcie_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 381, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @xilinx_cpm_pcie_init_irq_domain._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @xilinx_cpm_pcie_init_irq_domain._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @xilinx_cpm_pcie_init_irq_domain.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 402, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 408, i32 2}
!28 = !{ptr @xilinx_cpm_pcie_init_irq_domain._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xilinx_cpm_pcie_init_irq_domain._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @event_domain_ops, !31, !"event_domain_ops", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 270, i32 36}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 255, i32 11}
!34 = !{ptr @xilinx_cpm_event_irq_chip, !35, !"xilinx_cpm_event_irq_chip", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 254, i32 24}
!36 = !{ptr @intx_domain_ops, !37, !"intx_domain_ops", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 208, i32 36}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 183, i32 11}
!40 = !{ptr @xilinx_cpm_leg_irq_chip, !41, !"xilinx_cpm_leg_irq_chip", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 182, i32 24}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 508, i32 15}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 512, i32 59}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 468, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xilinx_cpm_pcie_init_port._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @xilinx_cpm_pcie_init_port._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 470, i32 3}
!54 = !{ptr @xilinx_cpm_pcie_init_port._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @xilinx_cpm_pcie_init_port._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 431, i32 4}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @xilinx_cpm_setup_irq._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @xilinx_cpm_setup_irq._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 438, i32 4}
!63 = !{ptr @xilinx_cpm_setup_irq._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @xilinx_cpm_setup_irq._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 446, i32 3}
!67 = !{ptr @xilinx_cpm_setup_irq._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @xilinx_cpm_setup_irq._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 307, i32 2}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 308, i32 2}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 321, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 309, i32 2}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 310, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 311, i32 2}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 312, i32 2}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 322, i32 2}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 323, i32 2}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 324, i32 2}
!98 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 313, i32 2}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 314, i32 2}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 315, i32 2}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 316, i32 2}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 317, i32 2}
!113 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 318, i32 2}
!116 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 319, i32 2}
!119 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 320, i32 2}
!122 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 325, i32 2}
!125 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @intr_cause, !127, !"intr_cause", i1 false, i1 false}
!127 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 306, i32 3}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 345, i32 4}
!130 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @xilinx_cpm_pcie_intr_handler._entry, !129, !"_entry", i1 false, i1 false}
!133 = !{ptr @xilinx_cpm_pcie_intr_handler._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 347, i32 4}
!136 = !{ptr @xilinx_cpm_pcie_intr_handler._entry.74, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @xilinx_cpm_pcie_intr_handler._entry_ptr.76, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 147, i32 3}
!140 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cpm_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, !139, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!143 = !{ptr @xilinx_cpm_pcie_of_match, !144, !"xilinx_cpm_pcie_of_match", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/pcie-xilinx-cpm.c", i32 594, i32 34}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 4244324}
!155 = !{i64 4243906}
!156 = !{i64 2155216116}
!157 = !{i64 2148763098, i64 2148763103, i64 2148763116, i64 2148763160, i64 2148763194, i64 2148763215}
