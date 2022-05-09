; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-xilinx.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-xilinx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.xilinx_pcie = type { ptr, ptr, [4 x i32], %struct.mutex, ptr, ptr, %struct.list_head }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_xilinx__237_621_xilinx_pcie_driver_init6 = internal global ptr @xilinx_pcie_driver_init, section ".initcall6.init", align 4
@xilinx_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xilinx_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @xilinx_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xilinx-pcie\00", [20 x i8] zeroinitializer }, align 32
@xilinx_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-pcie-host-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xilinx_pcie_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcie->map_lock\00", [16 x i8] zeroinitializer }, align 32
@xilinx_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Parsing DT failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xilinx_pcie_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pci/controller/pcie-xilinx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xilinx_pcie_probe._entry_ptr = internal global ptr @xilinx_pcie_probe._entry, section ".printk_index", align 4
@xilinx_pcie_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 594, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed creating IRQ Domain\0A\00", [36 x i8] zeroinitializer }, align 32
@xilinx_pcie_probe._entry_ptr.9 = internal global ptr @xilinx_pcie_probe._entry.7, section ".printk_index", align 4
@xilinx_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @xilinx_pcie_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@xilinx_pcie_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"missing \22reg\22 property\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xilinx_pcie_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@xilinx_pcie_parse_dt._entry_ptr = internal global ptr @xilinx_pcie_parse_dt._entry, section ".printk_index", align 4
@xilinx_pcie_parse_dt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@xilinx_pcie_parse_dt._entry_ptr.14 = internal global ptr @xilinx_pcie_parse_dt._entry.12, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 358, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link Down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xilinx_pcie_intr_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr = internal global ptr @xilinx_pcie_intr_handler._entry, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.4, i32 361, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ECRC failed\0A\00", [19 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.20 = internal global ptr @xilinx_pcie_intr_handler._entry.18, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.4, i32 364, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Streaming error\0A\00", [47 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.23 = internal global ptr @xilinx_pcie_intr_handler._entry.21, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.16, ptr @.str.4, i32 367, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Hot reset\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.27 = internal global ptr @xilinx_pcie_intr_handler._entry.24, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.4, i32 370, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECAM access timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.30 = internal global ptr @xilinx_pcie_intr_handler._entry.28, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.16, ptr @.str.4, i32 373, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Correctable error message\0A\00", [37 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.33 = internal global ptr @xilinx_pcie_intr_handler._entry.31, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.16, ptr @.str.4, i32 378, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Non fatal error message\0A\00", [39 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.36 = internal global ptr @xilinx_pcie_intr_handler._entry.34, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.16, ptr @.str.4, i32 383, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fatal error message\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.39 = internal global ptr @xilinx_pcie_intr_handler._entry.37, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.16, ptr @.str.4, i32 394, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RP Intr FIFO1 read error\0A\00", [38 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.42 = internal global ptr @xilinx_pcie_intr_handler._entry.40, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.16, ptr @.str.4, i32 417, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Slave unsupported request\0A\00", [37 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.45 = internal global ptr @xilinx_pcie_intr_handler._entry.43, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.16, ptr @.str.4, i32 420, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Slave unexpected completion\0A\00", [35 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.48 = internal global ptr @xilinx_pcie_intr_handler._entry.46, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.16, ptr @.str.4, i32 423, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Slave completion timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.51 = internal global ptr @xilinx_pcie_intr_handler._entry.49, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.16, ptr @.str.4, i32 426, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Slave Error Poison\0A\00", [44 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.54 = internal global ptr @xilinx_pcie_intr_handler._entry.52, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.16, ptr @.str.4, i32 429, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Slave Completer Abort\0A\00", [41 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.57 = internal global ptr @xilinx_pcie_intr_handler._entry.55, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.16, ptr @.str.4, i32 432, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Slave Illegal Burst\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.60 = internal global ptr @xilinx_pcie_intr_handler._entry.58, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.16, ptr @.str.4, i32 435, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Master decode error\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.63 = internal global ptr @xilinx_pcie_intr_handler._entry.61, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.16, ptr @.str.4, i32 438, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Master slave error\0A\00", [44 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.66 = internal global ptr @xilinx_pcie_intr_handler._entry.64, section ".printk_index", align 4
@xilinx_pcie_intr_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.16, ptr @.str.4, i32 441, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Master error poison\0A\00", [43 x i8] zeroinitializer }, align 32
@xilinx_pcie_intr_handler._entry_ptr.69 = internal global ptr @xilinx_pcie_intr_handler._entry.67, section ".printk_index", align 4
@xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.70, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 35, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie_xilinx\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xilinx_pcie_clear_err_interrupts\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Requester ID %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@xilinx_pcie_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 502, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCIe Link is UP\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xilinx_pcie_init_port\00", [42 x i8] zeroinitializer }, align 32
@xilinx_pcie_init_port._entry_ptr = internal global ptr @xilinx_pcie_init_port._entry, section ".printk_index", align 4
@xilinx_pcie_init_port._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 504, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCIe Link is DOWN\0A\00", [45 x i8] zeroinitializer }, align 32
@xilinx_pcie_init_port._entry_ptr.77 = internal global ptr @xilinx_pcie_init_port._entry.75, section ".printk_index", align 4
@xilinx_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 465, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No PCIe Intc node found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xilinx_pcie_init_irq_domain\00", [36 x i8] zeroinitializer }, align 32
@xilinx_pcie_init_irq_domain._entry_ptr = internal global ptr @xilinx_pcie_init_irq_domain._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @xilinx_pcie_intx_map, ptr null, ptr @pci_irqd_intx_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xilinx_pcie_init_irq_domain._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@xilinx_pcie_init_irq_domain._entry_ptr.82 = internal global ptr @xilinx_pcie_init_irq_domain._entry.80, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@xilinx_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_msi_domain_alloc, ptr @xilinx_msi_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xilinx_allocate_msi_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xilinx_allocate_msi_domains\00", [36 x i8] zeroinitializer }, align 32
@xilinx_allocate_msi_domains._entry_ptr = internal global ptr @xilinx_allocate_msi_domains._entry, section ".printk_index", align 4
@xilinx_msi_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 3, ptr null, ptr @xilinx_msi_top_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xilinx_allocate_msi_domains._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.4, i32 293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@xilinx_allocate_msi_domains._entry_ptr.87 = internal global ptr @xilinx_allocate_msi_domains._entry.85, section ".printk_index", align 4
@xilinx_msi_bottom_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.88, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Xilinx MSI\00", [21 x i8] zeroinitializer }, align 32
@xilinx_msi_top_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.89, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_msi_top_irq_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCIe MSI\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"xilinx_pcie_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 613, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 615, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"xilinx_pcie_of_match\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 608, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 581, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 586, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 594, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"xilinx_pcie_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 189, i32 23 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 540, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 553, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 358, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 361, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 364, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 367, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 370, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 373, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 378, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 383, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 394, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 417, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 420, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 423, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 426, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 429, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 432, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 435, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 438, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 441, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 139, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 502, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 504, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 465, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 329, i32 36 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 474, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [22 x i8] c"xilinx_msi_domain_ops\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 268, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 286, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [16 x i8] c"xilinx_msi_info\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 273, i32 31 }
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 293, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [23 x i8] c"xilinx_msi_bottom_chip\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 226, i32 24 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 227, i32 12 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"xilinx_msi_top_chip\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 206, i32 24 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [40 x i8] c"../drivers/pci/controller/pcie-xilinx.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 207, i32 11 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__initcall__kmod_pcie_xilinx__237_621_xilinx_pcie_driver_init6, ptr @xilinx_allocate_msi_domains._entry, ptr @xilinx_allocate_msi_domains._entry.85, ptr @xilinx_allocate_msi_domains._entry_ptr, ptr @xilinx_allocate_msi_domains._entry_ptr.87, ptr @xilinx_pcie_init_irq_domain._entry, ptr @xilinx_pcie_init_irq_domain._entry.80, ptr @xilinx_pcie_init_irq_domain._entry_ptr, ptr @xilinx_pcie_init_irq_domain._entry_ptr.82, ptr @xilinx_pcie_init_port._entry, ptr @xilinx_pcie_init_port._entry.75, ptr @xilinx_pcie_init_port._entry_ptr, ptr @xilinx_pcie_init_port._entry_ptr.77, ptr @xilinx_pcie_intr_handler._entry, ptr @xilinx_pcie_intr_handler._entry.18, ptr @xilinx_pcie_intr_handler._entry.21, ptr @xilinx_pcie_intr_handler._entry.24, ptr @xilinx_pcie_intr_handler._entry.28, ptr @xilinx_pcie_intr_handler._entry.31, ptr @xilinx_pcie_intr_handler._entry.34, ptr @xilinx_pcie_intr_handler._entry.37, ptr @xilinx_pcie_intr_handler._entry.40, ptr @xilinx_pcie_intr_handler._entry.43, ptr @xilinx_pcie_intr_handler._entry.46, ptr @xilinx_pcie_intr_handler._entry.49, ptr @xilinx_pcie_intr_handler._entry.52, ptr @xilinx_pcie_intr_handler._entry.55, ptr @xilinx_pcie_intr_handler._entry.58, ptr @xilinx_pcie_intr_handler._entry.61, ptr @xilinx_pcie_intr_handler._entry.64, ptr @xilinx_pcie_intr_handler._entry.67, ptr @xilinx_pcie_intr_handler._entry_ptr, ptr @xilinx_pcie_intr_handler._entry_ptr.20, ptr @xilinx_pcie_intr_handler._entry_ptr.23, ptr @xilinx_pcie_intr_handler._entry_ptr.27, ptr @xilinx_pcie_intr_handler._entry_ptr.30, ptr @xilinx_pcie_intr_handler._entry_ptr.33, ptr @xilinx_pcie_intr_handler._entry_ptr.36, ptr @xilinx_pcie_intr_handler._entry_ptr.39, ptr @xilinx_pcie_intr_handler._entry_ptr.42, ptr @xilinx_pcie_intr_handler._entry_ptr.45, ptr @xilinx_pcie_intr_handler._entry_ptr.48, ptr @xilinx_pcie_intr_handler._entry_ptr.51, ptr @xilinx_pcie_intr_handler._entry_ptr.54, ptr @xilinx_pcie_intr_handler._entry_ptr.57, ptr @xilinx_pcie_intr_handler._entry_ptr.60, ptr @xilinx_pcie_intr_handler._entry_ptr.63, ptr @xilinx_pcie_intr_handler._entry_ptr.66, ptr @xilinx_pcie_intr_handler._entry_ptr.69, ptr @xilinx_pcie_parse_dt._entry, ptr @xilinx_pcie_parse_dt._entry.12, ptr @xilinx_pcie_parse_dt._entry_ptr, ptr @xilinx_pcie_parse_dt._entry_ptr.14, ptr @xilinx_pcie_probe._entry, ptr @xilinx_pcie_probe._entry.7, ptr @xilinx_pcie_probe._entry_ptr, ptr @xilinx_pcie_probe._entry_ptr.9, ptr @xilinx_pcie_driver, ptr @.str, ptr @xilinx_pcie_of_match, ptr @xilinx_pcie_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @xilinx_pcie_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @intx_domain_ops, ptr @.str.81, ptr @xilinx_msi_domain_ops, ptr @.str.83, ptr @.str.84, ptr @xilinx_msi_info, ptr @.str.86, ptr @xilinx_msi_bottom_chip, ptr @.str.88, ptr @xilinx_msi_top_chip, ptr @.str.89], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_parse_dt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_intr_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_init_port._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_pcie_init_irq_domain._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_allocate_msi_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_msi_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_allocate_msi_domains._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_msi_bottom_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_msi_top_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regs.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 132) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %map_lock = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %map_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xilinx_pcie_probe.__key) #8
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %private.i, align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %regs.i) #8
  %5 = call ptr @memset(ptr %regs.i, i32 255, i32 32)
  %call.i = call i32 @of_address_to_resource(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %xilinx_pcie_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end4
  %call2.i = call ptr @devm_pci_remap_cfg_resource(ptr noundef %dev1, ptr noundef nonnull %regs.i) #8
  %reg_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %reg_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xilinx_pcie_parse_dt.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 0) #8
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9.i, ptr noundef nonnull @xilinx_pcie_intr_handler, ptr noundef null, i32 noundef 65664, ptr noundef nonnull @.str, ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %xilinx_pcie_parse_dt.exit.thread57, label %do.end15.i

xilinx_pcie_parse_dt.exit.thread57:               ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regs.i) #8
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %9 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 324
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %12 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  %.str.76..str.73.i = select i1 %tobool.i.not.i, ptr @.str.76, ptr @.str.73
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull %.str.76..str.73.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !167
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %16, i32 312
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #8, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %18 = and i32 %17, -317721825
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %20, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %18) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %22, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 219149087) #8, !srcloc !167
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %24, i32 328
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #8, !srcloc !164
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %26 = or i32 %25, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %28, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %26) #8, !srcloc !167
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %of_node.i47 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node.i47, align 8
  %call.i48 = call ptr @of_get_next_child(ptr noundef %32, ptr noundef null) #8
  %tobool.not.i49 = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i49, label %do.end.i50, label %if.end.i51

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call9.i) #11
  br label %xilinx_pcie_parse_dt.exit.thread

xilinx_pcie_parse_dt.exit.thread:                 ; preds = %do.end15.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i.i, %do.end15.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regs.i) #8
  br label %do.end12

xilinx_pcie_parse_dt.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call2.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regs.i) #8
  br label %do.end12

do.end12:                                         ; preds = %xilinx_pcie_parse_dt.exit, %xilinx_pcie_parse_dt.exit.thread
  %retval.0.i56 = phi i32 [ %retval.0.i.ph, %xilinx_pcie_parse_dt.exit.thread ], [ %33, %xilinx_pcie_parse_dt.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

do.end.i50:                                       ; preds = %xilinx_pcie_parse_dt.exit.thread57
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.78) #11
  br label %do.end19

if.end.i51:                                       ; preds = %xilinx_pcie_parse_dt.exit.thread57
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i48, i32 0, i32 3
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef %fwnode.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %private.i) #8
  %leg_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 7
  %34 = ptrtoint ptr %leg_domain.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i.i, ptr %leg_domain.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i48) #8
  %35 = ptrtoint ptr %leg_domain.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %leg_domain.i, align 4
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end9.i

do.end8.i:                                        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.81) #11
  br label %do.end19

if.end9.i:                                        ; preds = %if.end.i51
  %37 = ptrtoint ptr %private.i to i32
  %call.i.i52 = call i32 @__virt_to_phys(i32 noundef %37) #8
  %38 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private.i, align 4
  %call.i33.i = call ptr @dev_fwnode(ptr noundef %39) #8
  %call.i.i.i = call ptr @__irq_domain_add(ptr noundef %call.i33.i, i32 noundef 128, i32 noundef 128, i32 noundef 0, ptr noundef nonnull @xilinx_msi_domain_ops, ptr noundef %private.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.83) #11
  br label %do.end19

if.end.i.i:                                       ; preds = %if.end9.i
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i.i.i, i32 noundef 5) #8
  %call3.i.i = call ptr @pci_msi_create_irq_domain(ptr noundef %call.i33.i, ptr noundef nonnull @xilinx_msi_info, ptr noundef nonnull %call.i.i.i) #8
  %msi_domain.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 1, i32 4, i32 6
  %42 = ptrtoint ptr %msi_domain.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call3.i.i, ptr %msi_domain.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %do.end9.i.i, label %if.end20

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.86) #11
  call void @irq_domain_remove(ptr noundef nonnull %call.i.i.i) #8
  br label %do.end19

do.end19:                                         ; preds = %do.end9.i.i, %do.end.i.i, %do.end8.i, %do.end.i50
  %retval.1.i.ph = phi i32 [ -12, %do.end.i.i ], [ -12, %do.end9.i.i ], [ -19, %do.end.i50 ], [ -19, %do.end8.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end.i.i
  %and.i = and i32 %call.i.i52, -4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %46, i32 332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53, i32 0) #8, !srcloc !167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %47 = call i32 @llvm.bswap.i32(i32 %and.i) #8
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %49, i32 336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %47) #8, !srcloc !167
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %50 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %private.i, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @xilinx_pcie_ops, ptr %ops, align 4
  %call21 = call i32 @pci_host_probe(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %msi_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msi_domain.i.i, align 4
  %parent1.i = getelementptr inbounds %struct.irq_domain, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent1.i, align 4
  call void @irq_domain_remove(ptr noundef %53) #8
  call void @irq_domain_remove(ptr noundef %55) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %do.end19, %do.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i56, %do.end12 ], [ %retval.1.i.ph, %do.end19 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call21, %if.then23 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_pcie_intr_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %reg_base.i = getelementptr inbounds %struct.xilinx_pcie, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %6, i32 316
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %8 = and i32 %7, %4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup139_crit_edge, label %if.end

entry.cleanup139_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

if.end:                                           ; preds = %entry
  %and3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.15) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %and7 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %do.end12

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.19) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end6.if.end13_crit_edge
  %and14 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %do.end19

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end13.if.end20_crit_edge
  %and21 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %do.end26

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.25) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %if.end20.if.end27_crit_edge
  %and28 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %do.end33

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.end27.if.end34_crit_edge
  %and35 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %do.end40

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end40:                                         ; preds = %if.end34
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.32) #11
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 340
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !164
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end40.if.end41_crit_edge, label %do.body.i

do.end40.if.end41_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.body.i:                                        ; preds = %do.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_pcie_intr_handler, %do.end.i)) #8
          to label %if.then7.i [label %do.end.i], !srcloc !168

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i = and i32 %15, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.72, i32 noundef %and8.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %17, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 -1) #8, !srcloc !167
  br label %if.end41

if.end41:                                         ; preds = %do.end.i, %do.end40.if.end41_crit_edge, %if.end34.if.end41_crit_edge
  %and42 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end48_crit_edge, label %do.end47

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end47:                                         ; preds = %if.end41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.35) #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i198 = getelementptr i8, ptr %21, i32 340
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i198) #8, !srcloc !164
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and.i199 = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i199)
  %tobool.not.i200 = icmp eq i32 %and.i199, 0
  br i1 %tobool.not.i200, label %do.end47.if.end48_crit_edge, label %do.body.i201

do.end47.if.end48_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.body.i201:                                     ; preds = %do.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_pcie_intr_handler, %do.end.i205)) #8
          to label %if.then7.i203 [label %do.end.i205], !srcloc !168

if.then7.i203:                                    ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i202 = and i32 %23, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.72, i32 noundef %and8.i202) #8
  br label %do.end.i205

do.end.i205:                                      ; preds = %if.then7.i203, %do.body.i201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i14.i204 = getelementptr i8, ptr %25, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i204, i32 -1) #8, !srcloc !167
  br label %if.end48

if.end48:                                         ; preds = %do.end.i205, %do.end47.if.end48_crit_edge, %if.end41.if.end48_crit_edge
  %and49 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end55_crit_edge, label %do.end54

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.end54:                                         ; preds = %if.end48
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.38) #11
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %29, i32 340
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208) #8, !srcloc !164
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %and.i209 = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.not.i210 = icmp eq i32 %and.i209, 0
  br i1 %tobool.not.i210, label %do.end54.if.end55_crit_edge, label %do.body.i211

do.end54.if.end55_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

do.body.i211:                                     ; preds = %do.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xilinx_pcie_intr_handler, %do.end.i215)) #8
          to label %if.then7.i213 [label %do.end.i215], !srcloc !168

if.then7.i213:                                    ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #10
  %and8.i212 = and i32 %31, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, ptr noundef %27, ptr noundef nonnull @.str.72, i32 noundef %and8.i212) #8
  br label %do.end.i215

do.end.i215:                                      ; preds = %if.then7.i213, %do.body.i211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i14.i214 = getelementptr i8, ptr %33, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i214, i32 -1) #8, !srcloc !167
  br label %if.end55

if.end55:                                         ; preds = %do.end.i215, %do.end54.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %and56 = and i32 %9, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end75_crit_edge, label %if.then58

if.end55.if.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then58:                                        ; preds = %if.end55
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i218 = getelementptr i8, ptr %35, i32 344
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218) #8, !srcloc !164
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool61.not = icmp sgt i32 %37, -1
  br i1 %tobool61.not, label %if.then58.error.sink.split_crit_edge, label %if.end66

if.then58.error.sink.split_crit_edge:             ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.sink.split

if.end66:                                         ; preds = %if.then58
  %and67 = and i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i220 = getelementptr i8, ptr %39, i32 348
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %41 = and i32 %40, -65536
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %msi_domain = getelementptr inbounds %struct.xilinx_pcie, ptr %data, i32 0, i32 4
  %43 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %msi_domain, align 4
  %parent = getelementptr inbounds %struct.irq_domain, ptr %44, i32 0, i32 9
  br label %cleanup.thread

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %and72 = lshr i32 %37, 27
  %shr = and i32 %and72, 3
  %leg_domain = getelementptr inbounds %struct.xilinx_pcie, ptr %data, i32 0, i32 5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then69
  %val.0 = phi i32 [ %42, %if.then69 ], [ %shr, %if.else ]
  %domain.0.in = phi ptr [ %parent, %if.then69 ], [ %leg_domain, %if.else ]
  %45 = ptrtoint ptr %domain.0.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %domain.0 = load ptr, ptr %domain.0.in, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %47, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 -1) #8, !srcloc !167
  %call74 = tail call i32 @generic_handle_domain_irq(ptr noundef %domain.0, i32 noundef %val.0) #8
  br label %if.end75

if.end75:                                         ; preds = %cleanup.thread, %if.end55.if.end75_crit_edge
  %and76 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end82_crit_edge, label %do.end81

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.44) #11
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.end75.if.end82_crit_edge
  %and83 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end89_crit_edge, label %do.end88

if.end82.if.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.47) #11
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %if.end82.if.end89_crit_edge
  %and90 = and i32 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end96_crit_edge, label %do.end95

if.end89.if.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.50) #11
  br label %if.end96

if.end96:                                         ; preds = %do.end95, %if.end89.if.end96_crit_edge
  %and97 = and i32 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end103_crit_edge, label %do.end102

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.53) #11
  br label %if.end103

if.end103:                                        ; preds = %do.end102, %if.end96.if.end103_crit_edge
  %and104 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end110_crit_edge, label %do.end109

if.end103.if.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.56) #11
  br label %if.end110

if.end110:                                        ; preds = %do.end109, %if.end103.if.end110_crit_edge
  %and111 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end117_crit_edge, label %do.end116

if.end110.if.end117_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

do.end116:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  br label %if.end117

if.end117:                                        ; preds = %do.end116, %if.end110.if.end117_crit_edge
  %and118 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end124_crit_edge, label %do.end123

if.end117.if.end124_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

do.end123:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.62) #11
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %if.end117.if.end124_crit_edge
  %and125 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end131_crit_edge, label %do.end130

if.end124.if.end131_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

do.end130:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.65) #11
  br label %if.end131

if.end131:                                        ; preds = %do.end130, %if.end124.if.end131_crit_edge
  %and132 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.error_crit_edge, label %if.end131.error.sink.split_crit_edge

if.end131.error.sink.split_crit_edge:             ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.sink.split

if.end131.error_crit_edge:                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error.sink.split:                                 ; preds = %if.end131.error.sink.split_crit_edge, %if.then58.error.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.41, %if.then58.error.sink.split_crit_edge ], [ @.str.68, %if.end131.error.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull %.str.41.sink) #11
  br label %error

error:                                            ; preds = %error.sink.split, %if.end131.error_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i224 = getelementptr i8, ptr %49, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %8) #8, !srcloc !167
  br label %cleanup139

cleanup139:                                       ; preds = %error, %entry.cleanup139_crit_edge
  %retval.0 = phi i32 [ 1, %error ], [ 0, %entry.cleanup139_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_irqd_intx_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef readnone %out_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %2 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_msi_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %map_lock = getelementptr inbounds %struct.xilinx_pcie, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #8
  %msi_map = getelementptr inbounds %struct.xilinx_pcie, ptr %1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i47 = add i32 %nr_irqs, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i47, i1 false) #8, !range !169
  %add.i = sub nuw nsw i32 32, %2
  %cond19 = select i1 %cmp.i, i32 %add.i, i32 0
  %call20 = tail call i32 @bitmap_find_free_region(ptr noundef %msi_map, i32 noundef 128, i32 noundef %cond19) #8
  tail call void @mutex_unlock(ptr noundef %map_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp2448.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp2448.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add26 = add i32 %i.049, %virq
  %add27 = add i32 %i.049, %call20
  %3 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add26, i32 noundef %add27, ptr noundef nonnull @xilinx_msi_bottom_chip, ptr noundef %4, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #8
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_msi_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %map_lock = getelementptr inbounds %struct.xilinx_pcie, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %map_lock, i32 noundef 0) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.i = icmp ugt i32 %nr_irqs, 1
  %sub.i32 = add i32 %nr_irqs, -1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i32, i1 false) #8, !range !169
  %add.i = sub nuw nsw i32 32, %4
  %cond20 = select i1 %cmp.i, i32 %add.i, i32 0
  %msi_map = getelementptr inbounds %struct.xilinx_pcie, ptr %1, i32 0, i32 2
  tail call void @bitmap_release_region(ptr noundef %msi_map, i32 noundef %3, i32 noundef %cond20) #8
  tail call void @mutex_unlock(ptr noundef %map_lock) #8
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
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xilinx_msi_set_affinity(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %mask, i1 noundef zeroext %force) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #8
  %and = and i32 %call.i, -4096
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %msg, align 4
  %4 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %8 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xilinx_msi_top_irq_ack(ptr nocapture noundef %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xilinx_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %reg_base.i.i.i = getelementptr inbounds %struct.xilinx_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  %7 = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.not.i = icmp eq i32 %devfn, 0
  br i1 %cmp.not.i, label %if.else.i.if.end_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %reg_base = getelementptr inbounds %struct.xilinx_pcie, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
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
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_pcie_xilinx__237_621_xilinx_pcie_driver_init6, !1, !"__initcall__kmod_pcie_xilinx__237_621_xilinx_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 621, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 615, i32 11}
!4 = !{ptr @xilinx_pcie_driver, !5, !"xilinx_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 613, i32 31}
!6 = !{ptr @xilinx_pcie_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 581, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 586, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @xilinx_pcie_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @xilinx_pcie_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 594, i32 3}
!19 = !{ptr @xilinx_pcie_probe._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @xilinx_pcie_probe._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 540, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xilinx_pcie_parse_dt._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @xilinx_pcie_parse_dt._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 553, i32 3}
!28 = !{ptr @xilinx_pcie_parse_dt._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xilinx_pcie_parse_dt._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 358, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @xilinx_pcie_intr_handler._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @xilinx_pcie_intr_handler._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 361, i32 3}
!38 = !{ptr @xilinx_pcie_intr_handler._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 364, i32 3}
!42 = !{ptr @xilinx_pcie_intr_handler._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 367, i32 3}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xilinx_pcie_intr_handler._entry.24, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 370, i32 3}
!51 = !{ptr @xilinx_pcie_intr_handler._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 373, i32 3}
!55 = !{ptr @xilinx_pcie_intr_handler._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 378, i32 3}
!59 = !{ptr @xilinx_pcie_intr_handler._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 383, i32 3}
!63 = !{ptr @xilinx_pcie_intr_handler._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 394, i32 4}
!67 = !{ptr @xilinx_pcie_intr_handler._entry.40, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 417, i32 3}
!71 = !{ptr @xilinx_pcie_intr_handler._entry.43, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.45, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 420, i32 3}
!75 = !{ptr @xilinx_pcie_intr_handler._entry.46, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.48, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 423, i32 3}
!79 = !{ptr @xilinx_pcie_intr_handler._entry.49, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 426, i32 3}
!83 = !{ptr @xilinx_pcie_intr_handler._entry.52, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.54, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 429, i32 3}
!87 = !{ptr @xilinx_pcie_intr_handler._entry.55, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.57, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 432, i32 3}
!91 = !{ptr @xilinx_pcie_intr_handler._entry.58, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.60, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 435, i32 3}
!95 = !{ptr @xilinx_pcie_intr_handler._entry.61, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.63, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.65, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 438, i32 3}
!99 = !{ptr @xilinx_pcie_intr_handler._entry.64, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.66, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.68, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 441, i32 3}
!103 = !{ptr @xilinx_pcie_intr_handler._entry.67, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @xilinx_pcie_intr_handler._entry_ptr.69, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.70, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 139, i32 3}
!107 = !{ptr @.str.71, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.72, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @xilinx_pcie_clear_err_interrupts.__UNIQUE_ID_ddebug236, !106, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!110 = !{ptr @.str.73, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 502, i32 3}
!112 = !{ptr @.str.74, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @xilinx_pcie_init_port._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @xilinx_pcie_init_port._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.76, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 504, i32 3}
!117 = !{ptr @xilinx_pcie_init_port._entry.75, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @xilinx_pcie_init_port._entry_ptr.77, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.78, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 465, i32 3}
!121 = !{ptr @.str.79, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @xilinx_pcie_init_irq_domain._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @xilinx_pcie_init_irq_domain._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.81, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 474, i32 3}
!126 = !{ptr @xilinx_pcie_init_irq_domain._entry.80, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @xilinx_pcie_init_irq_domain._entry_ptr.82, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @intx_domain_ops, !129, !"intx_domain_ops", i1 false, i1 false}
!129 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 329, i32 36}
!130 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 286, i32 3}
!132 = !{ptr @.str.84, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @xilinx_allocate_msi_domains._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @xilinx_allocate_msi_domains._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.86, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 293, i32 3}
!137 = !{ptr @xilinx_allocate_msi_domains._entry.85, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @xilinx_allocate_msi_domains._entry_ptr.87, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @xilinx_msi_domain_ops, !140, !"xilinx_msi_domain_ops", i1 false, i1 false}
!140 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 268, i32 36}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 227, i32 12}
!143 = !{ptr @xilinx_msi_bottom_chip, !144, !"xilinx_msi_bottom_chip", i1 false, i1 false}
!144 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 226, i32 24}
!145 = !{ptr @xilinx_msi_info, !146, !"xilinx_msi_info", i1 false, i1 false}
!146 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 273, i32 31}
!147 = !{ptr @.str.89, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 207, i32 11}
!149 = !{ptr @xilinx_msi_top_chip, !150, !"xilinx_msi_top_chip", i1 false, i1 false}
!150 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 206, i32 24}
!151 = !{ptr @xilinx_pcie_ops, !152, !"xilinx_pcie_ops", i1 false, i1 false}
!152 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 189, i32 23}
!153 = !{ptr @xilinx_pcie_of_match, !154, !"xilinx_pcie_of_match", i1 false, i1 false}
!154 = !{!"../drivers/pci/controller/pcie-xilinx.c", i32 608, i32 34}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 4212902}
!165 = !{i64 2154658594}
!166 = !{i64 2154658980}
!167 = !{i64 4212484}
!168 = !{i64 2148731676, i64 2148731681, i64 2148731694, i64 2148731738, i64 2148731772, i64 2148731793}
!169 = !{i32 0, i32 33}
